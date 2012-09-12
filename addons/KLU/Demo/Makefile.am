AM_CPPFLAGS = -I$(top_srcdir)/Include @SUITESPARSECONFIG_CFLAGS@ \
	@BTF_CFLAGS@ @AMD_CFLAGS@ @COLAMD_CFLAGS@

LDADD = $(top_builddir)/Source/libklu.la

check_PROGRAMS = klu_simple

if WITH_CHOLMOD
check_PROGRAMS += kludemo kluldemo
kludemo_CPPFLAGS = $(AM_CPPFLAGS) @CHOLMOD_CFLAGS@
kludemo_LDADD = $(LDADD) @CHOLMOD_LIBS@
kluldemo_CPPFLAGS = $(kludemo_CPPFLAGS)
kluldemo_LDADD = $(kludemo_LDADD)

check-am: $(check_PROGRAMS)
	 ./kludemo < $(top_srcdir)/Matrix/1c.mtx
	 ./kludemo < $(top_srcdir)/Matrix/arrowc.mtx
	 ./kludemo < $(top_srcdir)/Matrix/arrow.mtx
	 ./kludemo < $(top_srcdir)/Matrix/impcol_a.mtx
	 ./kludemo < $(top_srcdir)/Matrix/w156.mtx
	 ./kludemo < $(top_srcdir)/Matrix/ctina.mtx
	 ./kluldemo < $(top_srcdir)/Matrix/1c.mtx
	 ./kluldemo < $(top_srcdir)/Matrix/arrowc.mtx
	 ./kluldemo < $(top_srcdir)/Matrix/arrow.mtx
	 ./kluldemo < $(top_srcdir)/Matrix/impcol_a.mtx
	 ./kluldemo < $(top_srcdir)/Matrix/w156.mtx
	 ./kluldemo < $(top_srcdir)/Matrix/ctina.mtx
else
TESTS = klu_simple
endif

