ACLOCAL_AMFLAGS = -I m4

include $(top_srcdir)/config/common.am

DISTCHECK_CONFIGURE_FLAGS = \
	--enable-fortran-test \
	--with-cholmod \
	--with-doc


SUBDIRS = Source Demo Doc Include

EXTRA_DIST += MATLAB Tcov
