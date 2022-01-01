PDF=$(patsubst %.svg,%.pdf,$(wildcard *.svg))

# .PRECIOUS: %-svg.pdf
%-svg.pdf: %.svg
	inkscape --export-area-page --export-filename=$@ --export-latex $<

%.pdf: %.tex %-svg.pdf common.tex
	pdflatex $< && pdfsizeopt --do-optimize-images=no $@ $@

all: $(PDF)

clean:
	rm -f *-svg.pdf *-svg.pdf_tex
	rm -f *.log *.aux *.out

distclean: clean
	rm -f $(PDF)

.PHONY: clean
