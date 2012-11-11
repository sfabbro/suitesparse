
ACLOCAL_AMFLAGS = -I m4

include $(top_srcdir)/config/common.am

DISTCHECK_CONFIGURE_FLAGS = \
	--enable-fortran \
	--with-doc

SUBDIRS = Source Demo Doc

EXTRA_DIST += MATLAB

include_HEADERS = Include/amd_internal.h Include/amd.h
