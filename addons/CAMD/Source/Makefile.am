AM_CPPFLAGS = -I$(top_srcdir)/Include @SUITESPARSECONFIG_CFLAGS@

CAMDCSRC = \
	camd_1.c \
	camd_2.c \
	camd_aat.c \
	camd_control.c \
	camd_defaults.c \
	camd_dump.c \
	camd_info.c \
	camd_order.c \
	camd_postorder.c \
	camd_preprocess.c \
	camd_valid.c

noinst_LTLIBRARIES = libcamdi.la libcamdl.la
libcamdi_la_SOURCES = $(CAMDCSRC)
libcamdi_la_CPPFLAGS = $(AM_CPPFLAGS) -DDINT
libcamdl_la_SOURCES = $(CAMDCSRC)
libcamdl_la_CPPFLAGS = $(AM_CPPFLAGS) -DDLONG

lib_LTLIBRARIES = libcamd.la
libcamd_la_SOURCES = camd_global.c
libcamd_la_LIBADD = libcamdl.la libcamdi.la @SUITESPARSECONFIG_LIBS@

MAINTAINERCLEANFILES = Makefile.in
