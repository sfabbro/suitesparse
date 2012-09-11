AM_CPPFLAGS = -I$(top_srcdir)/Include @SUITESPARSECONFIG_CFLAGS@

noinst_LTLIBRARIES = libcholesky.la libcholeskyl.la
noinst_HEADERS = \
	t_cholmod_lsolve.c \
	t_cholmod_ltsolve.c \
	t_cholmod_rowfac.c \
	t_cholmod_solve.c

libcholesky_la_SOURCES = \
	cholmod_amd.c \
	cholmod_analyze.c \
	cholmod_colamd.c \
	cholmod_etree.c \
	cholmod_factorize.c \
	cholmod_postorder.c \
	cholmod_rcond.c \
	cholmod_resymbol.c \
	cholmod_rowcolcounts.c \
	cholmod_rowfac.c \
	cholmod_solve.c \
	cholmod_spsolve.c
libcholesky_la_LIBADD = @AMD_LIBS@ @COLAMD_LIBS@

libcholeskyl_la_CPPFLAGS = $(AM_CPPFLAGS) -DDLONG
libcholeskyl_la_SOURCES = $(libcholesky_la_SOURCES)
libcholeskyl_la_LIBADD = $(libcholesky_la_LIBADD)

EXTRA_DIST = lesser.txt License.txt
