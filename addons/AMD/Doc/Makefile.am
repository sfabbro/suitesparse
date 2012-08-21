
AMD_UserGuide.pdf:
	echo '\\begin{verbatim}' > amd_h.tex
	expand -8 $(top_srcdir)/Include/amd.h >> amd_h.tex
	echo '\end{verbatim}' >> amd_h.tex
	$(PDFLATEX) $(srcdir)/AMD_UserGuide
	$(BIBTEX) $(srcdir)/AMD_UserGuide
	$(PDFLATEX) $(srcdir)/AMD_UserGuide
	$(PDFLATEX) $(srcdir)/AMD_UserGuide

pdf-local: AMD_UserGuide.pdf

all-local: pdf-local

doc_DATA = AMD_UserGuide.pdf ChangeLog

EXTRA_DIST = lesser.txt License

CLEANFILES = *.aux *.bbl *.blg *.log *.toc *.pdf amd_h.tex
MAINTAINERCLEANFILES = Makefile.in
