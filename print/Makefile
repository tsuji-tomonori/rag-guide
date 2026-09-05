ROOT := ..
BUILD_DIR := build
LATEX_DIR := $(BUILD_DIR)/latex
DIST_DIR := $(ROOT)/dist
PDF := $(DIST_DIR)/rag-engineering-guide.pdf
TEX_CACHE := $(abspath $(BUILD_DIR)/tex-cache)
.PHONY: all clean

all:
	cd $(ROOT) && python3 -m unittest discover -s print -p 'test_*.py'
	cd $(ROOT) && python3 print/build.py
	mkdir -p $(LATEX_DIR) $(DIST_DIR) $(TEX_CACHE)
	cd $(ROOT) && TEXMFVAR="$(TEX_CACHE)" TEXMFCACHE="$(TEX_CACHE)" latexmk -lualatex -interaction=nonstopmode -halt-on-error -outdir=print/$(LATEX_DIR) print/rag-guide.tex
	cp $(LATEX_DIR)/rag-guide.pdf $(PDF)

clean:
	rm -rf $(BUILD_DIR) $(PDF)
