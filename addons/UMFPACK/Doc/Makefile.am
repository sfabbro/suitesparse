
UserGuide.pdf:
	$(LN_S) $(srcdir)/UserGuide.bib .
	$(SED) -f $(srcdir)/UserGuide.sed1 < $(srcdir)/UserGuide.stex | \
	$(SED) -f $(srcdir)/UserGuide.sed2 | $(EXPAND) -8 > UserGuide.tex
	$(PDFLATEX) UserGuide
	$(BIBTEX) UserGuide
	$(PDFLATEX) UserGuide
	$(PDFLATEX) UserGuide

QuickStart.pdf:
	$(LN_S) $(srcdir)/QuickStart.tex .
	$(PDFLATEX) QuickStart
	$(PDFLATEX) QuickStart

doc_DATA = ChangeLog

if BUILD_DOCS
pdf-local: UserGuide.pdf QuickStart.pdf
all-local: pdf-local
doc_DATA += UserGuide.pdf QuickStart.pdf
endif

EXTRA_DIST = gpl.txt License UserGuide.sed1 UserGuide.sed2 UserGuide.stex QuickStart.tex UserGuide.bib

CLEANFILES = *.aux *.bbl *.blg *.log *.toc *.pdf *.out UserGuide.tex
MAINTAINERCLEANFILES = Makefile.in
