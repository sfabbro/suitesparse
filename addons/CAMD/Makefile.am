
ACLOCAL_AMFLAGS = -I m4

include $(top_srcdir)/config/common.am

DISTCHECK_CONFIGURE_FLAGS = \
	--with-doc

SUBDIRS = Source Demo Doc

EXTRA_DIST += MATLAB

noinst_HEADERS = Include/camd_internal.h
include_HEADERS = Include/camd.h
