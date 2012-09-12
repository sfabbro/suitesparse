
AMD_UserGuide.pdf:
	echo '\begin{verbatim}' > amd_h.tex
	expand -8 $(top_srcdir)/Include/amd.h >> amd_h.tex
	echo '\end{verbatim}' >> amd_h.tex
	ln -s $(srcdir)/*.{tex,bib} .
	$(PDFLATEX) AMD_UserGuide
	$(BIBTEX)  AMD_UserGuide
	$(PDFLATEX) AMD_UserGuide
	$(PDFLATEX) AMD_UserGuide

doc_DATA = ChangeLog

if BUILD_DOCS
pdf-local: AMD_UserGuide.pdf
all-local: pdf-local
doc_DATA += AMD_UserGuide.pdf
endif

EXTRA_DIST = lesser.txt License AMD_UserGuide.tex AMD_UserGuide.bib

CLEANFILES = *.aux *.bbl *.blg *.log *.toc *.pdf amd_h.tex
MAINTAINERCLEANFILES = Makefile.in
