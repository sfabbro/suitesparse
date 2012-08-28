
ACLOCAL_AMFLAGS = -I m4

include config/common.am

DISTCHECK_CONFIGURE_FLAGS = --with-xerbla

include_HEADERS = SuiteSparse_config.h

lib_LTLIBRARIES = libsuitesparseconfig.la
libsuitesparseconfig_la_SOURCES = $(include_HEADERS) SuiteSparse_config.c

if WITH_XERBLA

lib_LTLIBRARIES += libcerbla.la libxerbla.la
libcerbla_la_SOURCES = xerbla/cerbla.c xerbla/xerbla.h
libxerbla_la_SOURCES = xerbla/xerbla.f
include_HEADERS += xerbla/xerbla.h

endif
