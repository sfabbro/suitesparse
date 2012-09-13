AM_CPPFLAGS = -I$(top_srcdir)/Include @SUITESPARSECONFIG_CFLAGS@

LDADD = $(top_builddir)/Source/libspqr.la @SUITESPARSECONFIG_LIBS@

check_PROGRAMS = \
	qrsimple \
	qrsimplec \
	qrdemo \
	qrdemoc

qrsimple_SOURCES = qrsimple.cpp
qrdemo_SOURCES = qrdemo.cpp

EXTRA_DIST = README.txt

check-local: $(check_PROGRAMS)
	./qrsimple < $(top_srcdir)/Matrix/ash219.mtx || exit 1
	./qrsimplec < $(top_srcdir)/Matrix/ash219.mtx || exit 1
	./qrsimple < $(top_srcdir)/Matrix/west0067.mtx || exit 1
	./qrsimplec < $(top_srcdir)/Matrix/west0067.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/a2.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/r2.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/a04.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/a2.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/west0067.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/c2.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/a0.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/lfat5b.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/bfwa62.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/LFAT5.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/b1_ss.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/bcspwr01.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/lpi_galenet.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/lpi_itest6.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/ash219.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/a4.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/s32.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/c32.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/lp_share1b.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/a1.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/GD06_theory.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/GD01_b.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/Tina_AskCal_perm.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/Tina_AskCal.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/GD98_a.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/Ragusa16.mtx || exit 1
	./qrdemo < $(top_srcdir)/Matrix/young1c.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/a2.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/r2.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/a04.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/a2.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/west0067.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/c2.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/a0.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/lfat5b.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/bfwa62.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/LFAT5.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/b1_ss.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/bcspwr01.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/lpi_galenet.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/lpi_itest6.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/ash219.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/a4.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/s32.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/c32.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/lp_share1b.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/a1.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/GD06_theory.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/GD01_b.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/Tina_AskCal_perm.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/Tina_AskCal.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/GD98_a.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/Ragusa16.mtx || exit 1
	./qrdemoc < $(top_srcdir)/Matrix/young1c.mtx || exit 1
