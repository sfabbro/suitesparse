AM_CPPFLAGS = -I$(top_srcdir)/Include @SUITESPARSECONFIG_CFLAGS@ \
	@METIS_CFLAGS@ @CAMD_CFLAGS@ @CCOLAMD_CFLAGS@

noinst_LTLIBRARIES = libpartition.la libpartitionl.la
libpartition_la_SOURCES = \
	cholmod_camd.c \
	cholmod_ccolamd.c \
	cholmod_csymamd.c \
	cholmod_metis.c \
	cholmod_nesdis.c
libpartition_la_LIBADD = @METIS_LIBS@ @CAMD_LIBS@ @CCOLAMD_LIBS@

libpartitionl_la_CPPFLAGS = $(AM_CPPFLAGS) -DDLONG
libpartitionl_la_SOURCES = $(libpartition_la_SOURCES)
libpartitionl_la_LIBADD = $(libpartition_la_LIBADD)

EXTRA_DIST = lesser.txt License.txt
