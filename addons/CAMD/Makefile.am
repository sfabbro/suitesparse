
ACLOCAL_AMFLAGS = -I m4

include $(top_srcdir)/config/common.am

DISTCHECK_CONFIGURE_FLAGS = \
	--with-doc

if BUILD_DOCS
DOCDIR = Doc
endif

SUBDIRS = Source Demo $(DOCDIR)

include_HEADERS = Include/camd.h Include/camd_internal.h
