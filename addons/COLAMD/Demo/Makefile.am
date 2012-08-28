AM_CPPFLAGS = -I$(top_srcdir)/Include @SUITESPARSECONFIG_CFLAGS@

LDADD = $(top_builddir)/Source/libcolamd.la

check_PROGRAMS = colamd_example colamd_l_example
colamd_l_example_CPPFLAGS = $(AM_CPPFLAGS) -DDLONG

EXTRA_DIST = colamd_example.dat colamd_l_example.dat

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
