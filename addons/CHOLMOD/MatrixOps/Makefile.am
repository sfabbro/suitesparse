AM_CPPFLAGS = -I$(top_srcdir)/Include @SUITESPARSECONFIG_CFLAGS@

noinst_LTLIBRARIES = libmatrixops.la libmatrixopsl.la
noinst_HEADERS = t_cholmod_sdmult.c
libmatrixops_la_SOURCES = \
	cholmod_drop.c \
	cholmod_horzcat.c \
	cholmod_norm.c \
	cholmod_scale.c \
	cholmod_sdmult.c \
	cholmod_ssmult.c \
	cholmod_submatrix.c \
	cholmod_symmetry.c \
	cholmod_vertcat.c

libmatrixopsl_la_SOURCES = $(libmatrixops_la_SOURCES)
libmatrixopsl_la_CPPFLAGS = $(AM_CPPFLAGS) -DDLONG

EXTRA_DIST = gpl.txt License.txt
