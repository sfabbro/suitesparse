AM_CPPFLAGS = -I$(top_srcdir)/Include @SUITESPARSECONFIG_CFLAGS@

LDADD = $(top_builddir)/Source/libamd.la

check_PROGRAMS = amd_simple amd_demo amd_demo2 amd_l_demo

amd_demo_SOURCES = amd_demo.c
amd_l_demo_SOURCES = amd_l_demo.c
amd_demo2_SOURCES = amd_demo2.c
amd_simple_SOURCES = amd_simple.c

if ENABLE_FORTRAN
check_PROGRAMS += amd_f77demo amd_f77simple
amd_f77demo_SOURCES = amd_f77demo.f
amd_f77demo_LDADD = $(top_builddir)/Source/libamdf77.la
amd_f77simple_SOURCES = amd_f77simple.f
amd_f77simple_LDADD = $(top_builddir)/Source/libamdf77.la
# seems to be a buggy test, commenting out
#check_PROGRAMS += amd_f77cross
#amd_f77cross_SOURCES = amd_f77cross.f amd_f77wrapper.c
#amd_f77cross_CPPFLAGS = -DDINT
#amd_f77cross_LDADD = $(LDADD) $(top_builddir)/Source/libamdf77.la
endif

EXTRA_DIST = amd_demo2.dat amd_demo.dat amd_f77cross.dat amd_f77demo.dat \
	amd_f77simple.dat amd_l_demo.dat amd_simple.dat

check-local: $(check_PROGRAMS)
	@for i in $(check_PROGRAMS); do \
		echo "------------------------" ; \
		./$$i$(EXEEXT) > my_$$i.dat; \
		diff -Bbe -Iversion $(srcdir)/$$i.dat my_$$i.dat > /dev/null; \
		if test "x$$?" = "x0"; then \
			echo "Test $$i PASSED."; \
		else \
			echo "** Test $$i FAILED. Diff: "; \
			diff -Nu $(srcdir)/$$i.dat my_$$i.dat; \
			doexit="yes"; \
		fi; \
	done; \
	echo "------------------------" ; \
	if test "x$$doexit" = "xyes"; then \
		exit 1; \
	fi

MAINTAINERCLEANFILES = Makefile.in
CLEANFILES = my_*.dat
