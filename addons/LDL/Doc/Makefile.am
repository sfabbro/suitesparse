
ldl_userguide.pdf:
	ln -s $(srcdir)/*.{tex,bib} .
	$(PDFLATEX) ldl_userguide
	$(BIBTEX)  ldl
	$(PDFLATEX) ldl_userguide
	$(PDFLATEX) ldl_userguide

doc_DATA = ChangeLog

if BUILD_DOCS
pdf-local: ldl_userguide.pdf
all-local: pdf-local
doc_DATA += ldl_userguide.pdf
endif

EXTRA_DIST = lesser.txt ldl.bib ldl_userguide.tex

CLEANFILES = *.aux *.bbl *.blg *.log *.toc *.pdf
MAINTAINERCLEANFILES = Makefile.in
