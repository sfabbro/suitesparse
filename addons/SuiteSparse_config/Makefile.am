include config/include.am

include_HEADERS = SuiteSparse_config.h

lib_LTLIBRARIES = libsuitesparseconfig.la
libsuitesparseconfig_la_SOURCES = $(include_HEADERS) SuiteSparse_config.c

if WITH_XERBLA

lib_LTLIBRARIES += libcerbla.la libxerbla.la
libcerbla_la_SOURCES = xerbla/cerbla.c xerbla/cerbla.h
libxerbla_la_SOURCES = xerbla/xerbla.f

endif
