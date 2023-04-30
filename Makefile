.PHONY: clean distclean figures gitinfo

all: figures gitinfo thesis.pdf thesis-print.pdf thesis-su.pdf

figures:
	cd figures; make

%.pdf: %.tex
	latexmk $<
	#command -v pdfsizeopt && pdfsizeopt $@ $@; true

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

clean:
	latexmk -c

distclean:
	latexmk -C
