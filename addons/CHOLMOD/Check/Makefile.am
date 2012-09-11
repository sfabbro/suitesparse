AM_CPPFLAGS = -I$(top_srcdir)/Include @SUITESPARSECONFIG_CFLAGS@

noinst_LTLIBRARIES = libcheck.la libcheckl.la
libcheck_la_SOURCES = \
	cholmod_check.c \
	cholmod_read.c \
	cholmod_write.c
libcheck_la_LIBADD = @SUITESPARSECONFIG_LIBS@
libcheckl_la_CPPFLAGS = $(AM_CPPFLAGS) -DDLONG
libcheckl_la_SOURCES = $(libcheck_la_SOURCES)
libcheckl_la_LIBADD = @SUITESPARSECONFIG_LIBS@
EXTRA_DIST = lesser.txt License.txt
