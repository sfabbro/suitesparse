AM_CPPFLAGS = -I$(top_srcdir)/Include @SUITESPARSECONFIG_CFLAGS@

lib_LTLIBRARIES = librbio.la
librbio_la_SOURCES = RBio.c $(top_srcdir)/Include/RBio.h
librbio_la_LIBADD = @SUITESPARSECONFIG_LIBS@

MAINTAINERCLEANFILES = Makefile.in
