--[[
  pdf.lua — Filtro Lua para exportar el informe (Markdown para GitHub) a PDF.

  Resuelve lo que Pandoc NO convierte a LaTeX por sí solo:
    1. Bloques HTML (<p align="center"><img></p>, <table> de entrevistas, etc.)
       -> se re-interpretan como HTML y se convierten a elementos Pandoc.
    2. <br> dentro de tablas Markdown -> salto de línea real.
    3. <img> en línea (fotos del equipo) -> imagen real.
    4. <div style="page-break-after: always;"></div> -> \clearpage.
    5. Anchos en px de las imágenes -> porcentaje del ancho de línea.
       Las imágenes sin ancho se escalan según su tamaño en píxeles y las
       capturas de celular (verticales) se limitan en alto para que no
       ocupen una página completa. Ninguna imagen supera el alto de la
       página (por ejemplo, los diagramas de clases largos).
    6. Imágenes solas en un párrafo -> centradas. Varias capturas de celular
       en el mismo párrafo (líneas contiguas) -> una fila, lado a lado.
    7. Cada encabezado de nivel 1 (# ...) inicia en una página nueva.
    8. Tabla de contenidos igual a la del enunciado: solo se listan los
       capítulos y las secciones numeradas (1.1., 1.1.1., ...). Los subtítulos
       internos (Segmento 1, Desktop Web Browser, Tabla `users`, ...) y los
       de 4 niveles que el enunciado no incluye (4.6.4.1, 4.8.1.1, ...) se
       mantienen en el documento, pero no aparecen en el índice.

  Compatible con Pandoc 2.9+ y 3.x.
]]

local stringify = pandoc.utils.stringify
local MAX_PX = 650  -- ancho (px) que se considera 100% del ancho de línea
local LINE_CM = 15.9  -- ancho de línea en cm (A4 con márgenes de 2.54 cm)
local CAP_PHONE_CM = 11  -- alto máximo de una captura de celular (~media página)
local CAP_LONG_CM = 19     -- alto máximo de una captura de celular con scroll largo
local CAP_PAGE_CM = 21     -- alto máximo de cualquier imagen (deja espacio para el texto alt)
local ROW_GAP = 1.5        -- separación (%) entre capturas en una misma fila

local function latex(s) return pandoc.RawBlock('latex', s) end
local function is_html(fmt) return fmt == 'html' or fmt == 'html5' end

-- ---------------------------------------------------------------- pasada 1
local function html_attr(tag, name)
  return tag:match(name .. '%s*=%s*"([^"]*)"') or tag:match(name .. "%s*=%s*'([^']*)'")
end

local function img_from_tag(tag)
  local src = html_attr(tag, 'src')
  if not src then return nil end
  local img = pandoc.Image({pandoc.Str(html_attr(tag, 'alt') or '')}, src)
  local w = html_attr(tag, 'width')
  if w then img.attributes.width = w end
  return img
end

local pass1 = {
  RawBlock = function(el)
    if not is_html(el.format) then return nil end
    local t = el.text
    if t:match('page%-break') then return latex('\\clearpage') end
    if t:match('^%s*<!%-%-') then return {} end            -- comentarios HTML
    local ok, doc = pcall(pandoc.read, t, 'html')
    if ok and doc and #doc.blocks > 0 then return doc.blocks end
    return nil
  end,

  RawInline = function(el)
    if not is_html(el.format) then return nil end
    local t = el.text
    if t:match('^<br') then return pandoc.LineBreak() end
    if t:match('^<img') then return img_from_tag(t) or {} end
    -- etiquetas de formato sueltas (<b>, </b>, <span ...>, etc.): se omiten
    if t:match('^</?%a[%w]*[^>]*>$') then return {} end
    return pandoc.Str(t)
  end,
}

-- ---------------------------------------------------------------- pasada 2
-- Tamaño en píxeles de un PNG (se lee de la cabecera del archivo)
local function png_size(path)
  local f = io.open(path, 'rb')
  if not f then return nil end
  local d = f:read(24)
  f:close()
  if not d or #d < 24 or d:sub(1, 8) ~= '\137PNG\r\n\26\n' then return nil end
  return string.unpack('>I4', d, 17), string.unpack('>I4', d, 21)
end

local function image_size(src)
  local dirs = (PANDOC_STATE and PANDOC_STATE.resource_path) or {}
  for _, dir in ipairs(dirs) do
    local w, h = png_size(dir .. '/' .. src)
    if w then return w, h end
  end
  return png_size(src)
end

local function width_pct(img)
  local v = img.attributes.width
  return v and tonumber(v:match('^([%d%.]+)%%$')) or nil
end

local function normalize_width(img)
  -- Se reconstruyen los atributos: solo se conserva `width` (en %),
  -- el alto se calcula manteniendo la proporción.
  local w = img.attributes.width
  local pct
  if w then
    local px = tonumber(w:match('^(%d+)%s*p?x?$'))
    pct = px and (px * 100 / MAX_PX) or width_pct(img)
  end
  local pw, ph = image_size(img.src)
  if pw then
    if not w then pct = pw * 100 / MAX_PX end
    local ratio = ph / pw
    local cap
    if pw <= 800 and ratio > 2.4 then cap = CAP_LONG_CM
    elseif pw <= 800 and ratio >= 1.8 then cap = CAP_PHONE_CM end
    if cap and pct then pct = math.min(pct, cap / ratio / LINE_CM * 100) end
    -- Ninguna imagen puede ser más alta que la página (diagramas largos)
    if pct then pct = math.min(pct, CAP_PAGE_CM / ratio / LINE_CM * 100) end
  end
  local attrs = {}
  if pct then
    attrs = { {'width', string.format('%.1f%%', math.min(100, pct))} }
  elseif w then
    attrs = { {'width', w} }
  end
  img.attr = pandoc.Attr(img.identifier, img.classes, attrs)
  return img
end

-- Anchos de columna: en tablas con texto largo (o saltos <br>) se reparten
-- según la cantidad de texto de cada columna, en lugar de los guiones de
-- la fila separadora (| :--- |), que en GitHub no importan pero en PDF sí.
local function cell_text(cell)
  -- Pandoc 3: Cell {contents=...}; Pandoc 2.9: lista de bloques
  local c = cell.contents or cell
  return stringify(c)
end

local function rows_of(tbl)
  local rows = {}
  if tbl.bodies then                                   -- Pandoc >= 2.10
    for _, r in ipairs(tbl.head.rows or {}) do rows[#rows + 1] = r.cells end
    for _, b in ipairs(tbl.bodies) do
      for _, r in ipairs(b.body) do rows[#rows + 1] = r.cells end
    end
  else                                                 -- Pandoc 2.9
    rows[#rows + 1] = tbl.headers
    for _, r in ipairs(tbl.rows) do rows[#rows + 1] = r end
  end
  return rows
end

local function fix_table(tbl)
  -- Imágenes dentro de celdas (fotos, capturas): ocupan el ancho de su columna
  if tbl.walk then
    tbl = tbl:walk({ Image = function(i)
      i.attr = pandoc.Attr(i.identifier, i.classes, {}) return i end })
  end
  local rows = rows_of(tbl)
  local ncols = tbl.colspecs and #tbl.colspecs or #tbl.widths
  if ncols < 2 then return tbl end
  local weight, longest_row = {}, 0
  for i = 1, ncols do weight[i] = 0 end
  for _, cells in ipairs(rows) do
    local rowlen = 0
    for i, cell in ipairs(cells) do
      if i <= ncols then
        local n = utf8 and utf8.len(cell_text(cell)) or #cell_text(cell)
        n = n or 0
        rowlen = rowlen + n
        weight[i] = math.max(weight[i], math.min(n, 400))
      end
    end
    longest_row = math.max(longest_row, rowlen)
  end
  if longest_row < 90 then return tbl end              -- tabla corta: anchos sin cambios
  local total = 0
  for i = 1, ncols do
    weight[i] = math.sqrt(math.max(weight[i], 6))      -- suaviza extremos
    total = total + weight[i]
  end
  for i = 1, ncols do
    local w = weight[i] / total * 0.98
    if tbl.colspecs then tbl.colspecs[i][2] = w else tbl.widths[i] = w end
  end
  return tbl
end

-- ¿El encabezado va en la tabla de contenidos? (estructura del enunciado)
local TOC_LEVEL4 = { '^1%.2%.2%.', '^5%.2%.%d+%.' }   -- únicos 4 niveles del enunciado

local function in_toc(el)
  if el.level <= 2 then return true end
  local text = stringify(el.content)
  if text:match('^Anexo') then return true end
  local num = text:match('^(%d+%.%d+[%.%d]*)')         -- 1.1., 1.2.1, 2.3.4., ...
  if not num then return false end
  local _, dots = num:gsub('%d+', '')
  if dots <= 3 then return true end
  for _, p in ipairs(TOC_LEVEL4) do
    if num:match(p) then return true end
  end
  return false
end

local pass2 = {
  -- ::: {.center} ... ::: -> contenido centrado (carátula)
  Div = function(el)
    if el.classes:includes('center') then
      local out = { latex('\\begingroup\\setstretch{1}\\begin{center}') }
      for _, b in ipairs(el.content) do out[#out + 1] = b end
      out[#out + 1] = latex('\\end{center}\\endgroup')
      return out
    end
  end,

  Image = normalize_width,
  Table = fix_table,

  Para = function(el)
    -- Las imágenes se separan del texto y se centran en su propio bloque
    -- (evita que una imagen que sigue a un texto se salga del margen).
    local has_img = false
    for _, x in ipairs(el.content) do
      if x.t == 'Image' then has_img = true break end
    end
    if not has_img then return nil end

    -- Varias capturas contiguas que caben en una línea -> una sola fila
    local imgs, only_imgs, total = {}, true, 0
    for _, x in ipairs(el.content) do
      if x.t == 'Image' then
        imgs[#imgs + 1] = x
        total = total + (width_pct(x) or 100)
      elseif x.t ~= 'Space' and x.t ~= 'SoftBreak' then
        only_imgs = false
      end
    end
    if only_imgs and #imgs >= 2 and total + ROW_GAP * (#imgs - 1) <= 100 then
      local row = {}
      for i, x in ipairs(imgs) do
        if i > 1 then
          row[#row + 1] = pandoc.RawInline('latex',
            string.format('\\hspace{%.3f\\linewidth}', ROW_GAP / 100))
        end
        row[#row + 1] = x
      end
      return { latex('\\begin{center}'), pandoc.Para(row), latex('\\end{center}') }
    end

    local out, buf = {}, {}
    local function flush()
      local only_space = true
      for _, x in ipairs(buf) do
        if x.t ~= 'Space' and x.t ~= 'SoftBreak' and x.t ~= 'LineBreak' then only_space = false end
      end
      if not only_space then out[#out + 1] = pandoc.Para(buf) end
      buf = {}
    end
    for _, x in ipairs(el.content) do
      if x.t == 'Image' then
        flush()
        out[#out + 1] = latex('\\begin{center}')
        out[#out + 1] = pandoc.Para({x})
        out[#out + 1] = latex('\\end{center}')
      else
        buf[#buf + 1] = x
      end
    end
    flush()
    return out
  end,

  Header = function(el)
    if el.level == 1 then return { latex('\\clearpage'), el } end
    if not in_toc(el) then          -- \section*{} sin entrada en el índice
      el.classes:insert('unnumbered')
      el.classes:insert('unlisted')
      return el
    end
  end,
}

return { pass1, pass2 }
