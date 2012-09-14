ACLOCAL_AMFLAGS = -I m4

include $(top_srcdir)/config/common.am

DISTCHECK_CONFIGURE_FLAGS = \
	--enable-expert \
	--enable-timing \
	--with-doc \
	--with-partition \
	--with-tbb

SUBDIRS = Source Demo Doc

include_HEADERS = \
	Include/spqr.hpp \
	Include/SuiteSparseQR_C.h \
	Include/SuiteSparseQR_definitions.h \
	Include/SuiteSparseQR.hpp

EXTRA_DIST += MATLAB Matrix Tcov
