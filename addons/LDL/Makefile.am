
ACLOCAL_AMFLAGS = -I m4

include $(top_srcdir)/config/common.am

DISTCHECK_CONFIGURE_FLAGS = \
	--with-doc \
	--with-amd

if BUILD_DOCS
DOCDIR = Doc
endif

SUBDIRS = Source Demo $(DOCDIR)

include_HEADERS = Include/ldl.h
