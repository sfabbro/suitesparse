if WITH_CHOLESKY
if WITH_CHECK
if WITH_MATRIXOPS
if WITH_SUPERNODAL

AM_CPPFLAGS = -I$(top_srcdir)/Include @SUITESPARSECONFIG_CFLAGS@
noinst_HEADERS = cholmod_demo.h
check_PROGRAMS = cholmod_demo cholmod_l_demo cholmod_simple

LDADD = $(top_builddir)/libcholmod.la

check-local:
	./cholmod_demo < $(srcdir)/Matrix/bcsstk01.tri || exit 1
	./cholmod_l_demo < $(srcdir)/Matrix/bcsstk01.tri  || exit 1
	./cholmod_demo < $(srcdir)/Matrix/lp_afiro.tri || exit 1
	./cholmod_l_demo < $(srcdir)/Matrix/lp_afiro.tri || exit 1
	./cholmod_demo < $(srcdir)/Matrix/can___24.mtx || exit 1
	./cholmod_l_demo < $(srcdir)/Matrix/can___24.mtx || exit 1
	./cholmod_demo < $(srcdir)/Matrix/c.tri || exit 1
	./cholmod_l_demo < $(srcdir)/Matrix/c.tri || exit 1
	./cholmod_simple < $(srcdir)/Matrix/c.tri || exit 1
	./cholmod_simple < $(srcdir)/Matrix/can___24.mtx || exit 1
	./cholmod_simple < $(srcdir)/Matrix/bcsstk01.tri || exit 1

endif
endif
endif
endif

EXTRA_DIST = Matrix gpl.txt License.txt
