
spqr_user_guide.pdf:
	ln -s $(srcdir)/*.{tex,bib} .
	$(PDFLATEX) spqr_user_guide
	$(BIBTEX) spqr_user_guide
	$(PDFLATEX) spqr_user_guide
	$(PDFLATEX) spqr_user_guide

doc_DATA = ChangeLog

if BUILD_DOCS
pdf-local: spqr_user_guide.pdf
all-local: pdf-local
doc_DATA += spqr_user_guide.pdf spqr.pdf algo_spqr.pdf
endif

EXTRA_DIST = gpl.txt README.txt spqr_user_guide.tex spqr_user_guide.bib \
	spqr.pdf algo_spqr.pdf

CLEANFILES = *.aux *.bbl *.blg *.log *.toc *.pdf *.out
MAINTAINERCLEANFILES = Makefile.in
