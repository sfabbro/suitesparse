AM_CPPFLAGS = -I$(top_srcdir)/Include @SUITESPARSECONFIG_CFLAGS@

LDADD = $(top_builddir)/Source/libcxsparse.la
noinst_HEADERS = cs_demo.h cs_ci_demo.h cs_di_demo.h cs_cl_demo.h cs_dl_demo.h

check_PROGRAMS = \
	cs_demo1 \
	cs_ci_demo1 \
	cs_cl_demo1 \
	cs_di_demo1 \
	cs_dl_demo1 \
	cs_demo2 \
	cs_ci_demo2 \
	cs_cl_demo2 \
	cs_di_demo2 \
	cs_dl_demo2 \
	cs_demo3 \
	cs_ci_demo3 \
	cs_cl_demo3 \
	cs_di_demo3 \
	cs_dl_demo3 \
	cs_idemo \
	cs_ldemo

cs_demo2_SOURCES = cs_demo2.c cs_demo.c
cs_ci_demo2_SOURCES = cs_ci_demo2.c cs_ci_demo.c
cs_cl_demo2_SOURCES = cs_cl_demo2.c cs_cl_demo.c
cs_di_demo2_SOURCES = cs_di_demo2.c cs_di_demo.c
cs_dl_demo2_SOURCES = cs_dl_demo2.c cs_dl_demo.c
cs_demo3_SOURCES = cs_demo3.c cs_demo.c
cs_ci_demo3_SOURCES = cs_ci_demo3.c cs_ci_demo.c
cs_cl_demo3_SOURCES = cs_cl_demo3.c cs_cl_demo.c
cs_di_demo3_SOURCES = cs_di_demo3.c cs_di_demo.c
cs_dl_demo3_SOURCES = cs_dl_demo3.c cs_dl_demo.c

check-local: $(check_PROGRAMS)
	- ./cs_demo1 < $(top_srcdir)/Matrix/t1
	- ./cs_demo2 < $(top_srcdir)/Matrix/t1
	- ./cs_demo2 < $(top_srcdir)/Matrix/fs_183_1
	- ./cs_demo2 < $(top_srcdir)/Matrix/west0067
	- ./cs_demo2 < $(top_srcdir)/Matrix/lp_afiro
	- ./cs_demo2 < $(top_srcdir)/Matrix/ash219
	- ./cs_demo2 < $(top_srcdir)/Matrix/mbeacxc
	- ./cs_demo2 < $(top_srcdir)/Matrix/bcsstk01
	- ./cs_demo3 < $(top_srcdir)/Matrix/bcsstk01
	- ./cs_demo2 < $(top_srcdir)/Matrix/bcsstk16
	- ./cs_demo3 < $(top_srcdir)/Matrix/bcsstk16
	- ./cs_di_demo1 < $(top_srcdir)/Matrix/t1
	- ./cs_di_demo2 < $(top_srcdir)/Matrix/t1
	- ./cs_di_demo2 < $(top_srcdir)/Matrix/fs_183_1
	- ./cs_di_demo2 < $(top_srcdir)/Matrix/west0067
	- ./cs_di_demo2 < $(top_srcdir)/Matrix/lp_afiro
	- ./cs_di_demo2 < $(top_srcdir)/Matrix/ash219
	- ./cs_di_demo2 < $(top_srcdir)/Matrix/mbeacxc
	- ./cs_di_demo2 < $(top_srcdir)/Matrix/bcsstk01
	- ./cs_di_demo3 < $(top_srcdir)/Matrix/bcsstk01
	- ./cs_di_demo2 < $(top_srcdir)/Matrix/bcsstk16
	- ./cs_di_demo3 < $(top_srcdir)/Matrix/bcsstk16
	- ./cs_dl_demo1 < $(top_srcdir)/Matrix/t1
	- ./cs_dl_demo2 < $(top_srcdir)/Matrix/t1
	- ./cs_dl_demo2 < $(top_srcdir)/Matrix/fs_183_1
	- ./cs_dl_demo2 < $(top_srcdir)/Matrix/west0067
	- ./cs_dl_demo2 < $(top_srcdir)/Matrix/lp_afiro
	- ./cs_dl_demo2 < $(top_srcdir)/Matrix/ash219
	- ./cs_dl_demo2 < $(top_srcdir)/Matrix/mbeacxc
	- ./cs_dl_demo2 < $(top_srcdir)/Matrix/bcsstk01
	- ./cs_dl_demo3 < $(top_srcdir)/Matrix/bcsstk01
	- ./cs_dl_demo2 < $(top_srcdir)/Matrix/bcsstk16
	- ./cs_dl_demo3 < $(top_srcdir)/Matrix/bcsstk16
	- ./cs_ci_demo1 < $(top_srcdir)/Matrix/t2
	- ./cs_ci_demo2 < $(top_srcdir)/Matrix/t2
	- ./cs_ci_demo2 < $(top_srcdir)/Matrix/t3
	- ./cs_ci_demo2 < $(top_srcdir)/Matrix/t4
	- ./cs_ci_demo2 < $(top_srcdir)/Matrix/c_west0067
	- ./cs_ci_demo2 < $(top_srcdir)/Matrix/c_mbeacxc
	- ./cs_ci_demo2 < $(top_srcdir)/Matrix/young1c
	- ./cs_ci_demo2 < $(top_srcdir)/Matrix/qc324
	- ./cs_ci_demo2 < $(top_srcdir)/Matrix/neumann
	- ./cs_ci_demo2 < $(top_srcdir)/Matrix/c4
	- ./cs_ci_demo3 < $(top_srcdir)/Matrix/c4
	- ./cs_ci_demo2 < $(top_srcdir)/Matrix/mhd1280b
	- ./cs_ci_demo3 < $(top_srcdir)/Matrix/mhd1280b
	- ./cs_cl_demo1 < $(top_srcdir)/Matrix/t2
	- ./cs_cl_demo2 < $(top_srcdir)/Matrix/t2
	- ./cs_cl_demo2 < $(top_srcdir)/Matrix/t3
	- ./cs_cl_demo2 < $(top_srcdir)/Matrix/t4
	- ./cs_cl_demo2 < $(top_srcdir)/Matrix/c_west0067
	- ./cs_cl_demo2 < $(top_srcdir)/Matrix/c_mbeacxc
	- ./cs_cl_demo2 < $(top_srcdir)/Matrix/young1c
	- ./cs_cl_demo2 < $(top_srcdir)/Matrix/qc324
	- ./cs_cl_demo2 < $(top_srcdir)/Matrix/neumann
	- ./cs_cl_demo2 < $(top_srcdir)/Matrix/c4
	- ./cs_cl_demo3 < $(top_srcdir)/Matrix/c4
	- ./cs_cl_demo2 < $(top_srcdir)/Matrix/mhd1280b
	- ./cs_cl_demo3 < $(top_srcdir)/Matrix/mhd1280b
	- ./cs_idemo < $(top_srcdir)/Matrix/t2
	- ./cs_ldemo < $(top_srcdir)/Matrix/t2

EXTRA_DIST = README.txt

CLEANFILES = *.dSYM

MAINTAINERCLEANFILES = Makefile.in
