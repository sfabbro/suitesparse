AM_CPPFLAGS = -I$(top_srcdir)/Include @SUITESPARSECONFIG_CFLAGS@ 

noinst_LTLIBRARIES = libsupernodal.la libsupernodall.la
noinst_HEADERS = \
	t_cholmod_gpu.c \
	t_cholmod_super_numeric.c \
	t_cholmod_super_solve.c

libsupernodal_la_SOURCES = \
	cholmod_super_numeric.c \
	cholmod_super_solve.c \
	cholmod_super_symbolic.c
libsupernodal_la_LIBADD = @BLAS_LIBS@ @LAPACK_LIBS@ @CUBLAS_LIBS@

libsupernodall_la_CPPFLAGS = $(AM_CPPFLAGS) -DDLONG
libsupernodall_la_SOURCES = $(libsupernodal_la_SOURCES)
libsupernodall_la_LIBADD = $(libsupernodal_la_LIBADD)

EXTRA_DIST = License.txt gpl.txt
