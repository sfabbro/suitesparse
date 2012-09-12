AM_CPPFLAGS = -I$(top_srcdir)/Include @SUITESPARSECONFIG_CFLAGS@

check_PROGRAMS = RBdemo

LDADD = $(top_builddir)/Source/librbio.la

check-am: $(check_PROGRAMS)
	./RBdemo < $(top_srcdir)/RBio/private/west0479.rua

CLEANFILES = *.rb
MAINTAINERCLEANFILES = Makefile.in
