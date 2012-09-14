
ACLOCAL_AMFLAGS = -I m4

include $(top_srcdir)/config/common.am

DISTCHECK_CONFIGURE_FLAGS = \
	--with-doc \
	--with-amd

SUBDIRS = Source Demo Doc

EXTRA_DIST += MATLAB Matrix

include_HEADERS = Include/ldl.h
