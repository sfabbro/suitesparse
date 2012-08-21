AM_CPPFLAGS = -I$(top_srcdir)/Include

check_PROGRAMS = amd_simple amd_demo amd_demo2 amd_l_demo

LDADD = $(top_builddir)/Source/libamd.la

amd_demo_SOURCES = amd_demo.c
amd_l_demo_SOURCES = amd_l_demo.c
amd_demo2_SOURCES = amd_demo2.c
amd_simple_SOURCES = amd_simple.c

if ENABLE_FORTRAN
check_PROGRAMS += amd_f77demo amd_f77simple amd_f77cross
amd_f77demo_SOURCES = amd_f77demo.f
amd_f77demo_LDADD = $(LDADD) $(top_builddir)/Source/libamdf77.la
amd_f77simple_SOURCES = amd_f77simple.f
amd_f77simple_LDADD = $(LDADD) $(top_builddir)/Source/libamdf77.la
amd_f77cross_SOURCES = amd_f77cross.f amd_f77wrapper.f
amd_f77wrapper_CPPFLAGS = -DDINT
amd_f77cross_CPPFLAGS = -DDINT
amd_f77cross_LDADD = $(LDADD) $(top_builddir)/Source/libamdf77.la
endif

EXTRA_DIST = amd_demo2.out amd_demo.out amd_f77cross.out amd_f77demo.out \
	amd_f77simple.out amd_l_demo.out amd_simple.out


check-local: $(check_PROGRAMS)
	@for i in $(check_PROGRAMS); do \
		echo " ----------" ; \
		./$$i$(EXEEXT) > my_$$i.out; \
		diff my_$$i.out $(srcdir)/$$i.out > /dev/null; \
		if test "x$$?" = "x0"; then \
			echo "Test $$i PASSED."; \
		else \
			echo "** Test $$i FAILED. Diff: "; \
			diff -Nu my_$$i.out $(srcdir)/$$i.out; \
			doexit="yes"; \
		fi; \
	done; \
	echo " ----------" ; \
	if test "x$$doexit" = "xyes"; then \
		exit 1; \
	fi	

clean-local:
	-rm -f my_*.out

MAINTAINERCLEANFILES = Makefile.in


