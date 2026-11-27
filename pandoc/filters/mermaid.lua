-- Render Mermaid blocks for LaTeX and package the images with the document.
function CodeBlock(block)
  if FORMAT ~= 'latex' or not block.classes:includes('mermaid') then
    return nil
  end

  local name = 'mermaid-' .. pandoc.utils.sha1(block.text) .. '.png'
  if not pandoc.mediabag.lookup(name) then
    local png = pandoc.system.with_temporary_directory('sumaqagro-mermaid', function(dir)
      local input = pandoc.path.join({dir, 'diagram.mmd'})
      local output = pandoc.path.join({dir, 'diagram.png'})
      local file = assert(io.open(input, 'wb'))
      file:write(block.text)
      file:close()

      local args = {'-i', 'diagram.mmd', '-o', 'diagram.png', '-b', 'white', '-s', '2'}
      local program = 'mmdc'
      if pandoc.system.os == 'mingw32' then
        program = 'powershell.exe'
        args = {'-NoProfile', '-NonInteractive', '-Command',
          '$ErrorActionPreference = "Stop"; mmdc.cmd -i diagram.mmd -o diagram.png -b white -s 2; exit $LASTEXITCODE'}
      end
      local ok, detail = pcall(pandoc.system.with_working_directory, dir, function()
        return pandoc.pipe(program, args, '')
      end)
      if not ok then
        error('Mermaid: se requiere mmdc (@mermaid-js/mermaid-cli) en PATH y su navegador. ' .. tostring(detail))
      end

      local rendered = assert(io.open(output, 'rb'),
        'Mermaid CLI no generó el archivo PNG esperado')
      local bytes = rendered:read('*a')
      rendered:close()
      return bytes
    end)
    pandoc.mediabag.insert(name, 'image/png', png)
  end

  return pandoc.Para({pandoc.Image({pandoc.Str('Diagrama de base de datos')},
    name, '', pandoc.Attr('', {}, {width = '100%', height = '18cm'}))})
end
