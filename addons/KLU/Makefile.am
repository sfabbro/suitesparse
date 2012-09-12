ACLOCAL_AMFLAGS = -I m4

include $(top_srcdir)/config/common.am

DISTCHECK_CONFIGURE_FLAGS = \
	--with-cholmod \
	--with-doc

SUBDIRS = Source Demo Doc

include_HEADERS = Include/klu.h Include/klu_version.h Include/klu_internal.h

EXTRA_DIST += Matrix
