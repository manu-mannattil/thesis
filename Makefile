.PHONY: clean distclean gitinfo thesis-print.pdf

all: gitinfo thesis.pdf thesis-su.pdf

%.pdf: %.tex
	latexmk -f $<

gitinfo:
	git --no-pager log -1 --date=short --decorate=short --pretty=format:"\
		\def\gitHash{%H}              \
		\def\gitShortHash{%h}         \
		\def\gitRefName{%D}           \
		\def\gitAuthorName{%an}       \
		\def\gitAuthorEmail{%ae}      \
		\def\gitAuthorDate{%ai}       \
		\def\gitAuthorAltDate{%aD}    \
		\def\gitCommitterName{%cn}    \
		\def\gitCommitterEmail{%ce}   \
		\def\gitCommitterDate{%ci}    \
		\def\gitCommitterAltDate{%cD} \
	" HEAD >.git/gitInfo.in

# Embed all fonts.
thesis-print.pdf:
	gs 	-dNOPAUSE                     \
		-dBATCH                       \
		-sDEVICE=pdfwrite             \
		-dPDFSETTINGS=/prepress       \
		-dEmbedAllFonts=true          \
		-sOutputFile=thesis-print.pdf \
		-f thesis.pdf
clean:
	latexmk -c
	rm -f *.fls *.aux tags

distclean: clean
	latexmk -C
	rm -f thesis-print.pdf
