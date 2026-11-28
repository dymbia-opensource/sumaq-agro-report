# =====================================================================
# Compilación del Informe (Docs-as-Code) — Pandoc + XeLaTeX + Mermaid CLI
#   make -C pandoc pdf                   -> pandoc/build/upc-pre-202620-1asi0729-7742-dymbia-report-tb2.pdf
#   make -C pandoc pdf MILESTONE=av2     -> ...-report-av2.pdf
#   make -C pandoc pdf FONTS=linux       -> usa Liberation Sans/Mono (Linux / WSL)
# =====================================================================
CONFIG    = build.yaml
DIST_DIR  = build
NRC       = 7742
STARTUP   = dymbia
MILESTONE = tb2
OUTPUT    = $(DIST_DIR)/upc-pre-202620-1asi0729-$(NRC)-$(STARTUP)-report-$(MILESTONE).pdf

MERMAID_BIN = $(DIST_DIR)/mermaid-tools/node_modules/.bin
ifneq ($(wildcard $(MERMAID_BIN)/mmdc),)
export PATH := $(abspath $(MERMAID_BIN)):$(PATH)
export PUPPETEER_CACHE_DIR ?= $(abspath $(DIST_DIR)/mermaid-browser)
endif

ifeq ($(FONTS),linux)
FONT_OPTS = -V mainfont="Liberation Sans" -V monofont="Liberation Mono"
endif

.PHONY: all pdf tex clean

all: pdf

pdf:
	@mkdir -p $(DIST_DIR)
	pandoc --defaults=$(CONFIG) $(FONT_OPTS) -o $(OUTPUT)
	@echo "PDF generado: $(OUTPUT)"

# Útil para depurar errores de LaTeX: genera el .tex intermedio
tex:
	@mkdir -p $(DIST_DIR)
	pandoc --defaults=$(CONFIG) $(FONT_OPTS) --extract-media=$(DIST_DIR)/media -o $(DIST_DIR)/report.tex

clean:
	@rm -rf $(DIST_DIR)