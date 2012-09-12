
CAMD_UserGuide.pdf:
	echo '\begin{verbatim}' > camd_h.tex
	expand -8 $(top_srcdir)/Include/camd.h >> camd_h.tex
	echo '\end{verbatim}' >> camd_h.tex
	ln -s $(srcdir)/*.{tex,bib} .
	$(PDFLATEX) CAMD_UserGuide
	$(BIBTEX)  CAMD_UserGuide
	$(PDFLATEX) CAMD_UserGuide
	$(PDFLATEX) CAMD_UserGuide

doc_DATA = ChangeLog

if BUILD_DOCS
pdf-local: CAMD_UserGuide.pdf
all-local: pdf-local
doc_DATA += CAMD_UserGuide.pdf
endif

EXTRA_DIST = lesser.txt License CAMD_UserGuide.tex CAMD_UserGuide.bib

CLEANFILES = *.aux *.bbl *.blg *.log *.toc *.pdf camd_h.tex
MAINTAINERCLEANFILES = Makefile.in
