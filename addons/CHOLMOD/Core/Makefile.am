AM_CPPFLAGS = -I$(top_srcdir)/Include @SUITESPARSECONFIG_CFLAGS@ @CUBLAS_CFLAGS@

noinst_LTLIBRARIES = libcore.la libcorel.la
noinst_HEADERS = \
	t_cholmod_change_factor.c \
	t_cholmod_dense.c \
	t_cholmod_transpose.c \
	t_cholmod_triplet.c

libcore_la_SOURCES = \
	cholmod_aat.c \
	cholmod_add.c \
	cholmod_band.c \
	cholmod_change_factor.c \
	cholmod_common.c \
	cholmod_complex.c \
	cholmod_copy.c \
	cholmod_dense.c \
	cholmod_error.c \
	cholmod_factor.c \
	cholmod_memory.c \
	cholmod_sparse.c \
	cholmod_transpose.c \
	cholmod_triplet.c \
	cholmod_version.c

libcorel_la_SOURCES = $(libcore_la_SOURCES)
libcorel_la_CPPFLAGS = $(AM_CPPFLAGS) -DDLONG

EXTRA_DIST = lesser.txt License.txt
