AM_CPPFLAGS = -I$(top_srcdir)/Include @SUITESPARSECONFIG_CFLAGS@

LDADD = $(top_builddir)/Source/lib$(PACKAGE_NAME).la

if WITH_AMD
EXTRA_PROGRAMS = ldlamd ldllamd
ldlamd_SOURCES = ldlmain.c
ldlamd_CPPFLAGS = $(AM_CPPFLAGS) -DUSE_AMD @AMD_CFLAGS@
ldlamd_LDADD = $(LDADD) @AMD_LIBS@
ldllamd_SOURCES = $(ldlamd_SOURCES)
ldllamd_CPPFLAGS = $(ldlamd_CPPFLAGS) -DLDL_LONG
ldllamd_LDADD = $(ldlamd_LDADD)
endif

check_PROGRAMS = ldlsimple ldllsimple ldlmain ldllmain $(EXTRA_PROGRAMS)
ldllsimple_SOURCES = ldlsimple.c
ldllsimple_CPPFLAGS = $(AM_CPPFLAGS) -DLDL_LONG
ldllmain_SOURCES = ldlmain.c
ldllmain_CPPFLAGS = $(AM_CPPFLAGS) -DLDL_LONG

ext = .dat

EXTRA_DIST = $(addsuffix $(ext),$(basename $(check_PROGRAMS))) ldlamd$(ext) ldllamd$(ext)



check-local: $(check_PROGRAMS)
	[ $(top_srcdir) = $(top_builddir) ] || $(LN_S) $(top_srcdir)/Matrix $(top_builddir)/Matrix
	@for i in $(basename $(check_PROGRAMS)); do \
		echo "------------------------" ; \
		./$$i$(EXEEXT) > my_$$i$(ext); \
		if test "x$$?" = "x0"; then \
			echo "Test $$i PASSED."; \
		else \
			echo "** Test $$i FAILED. Diff: "; \
			doexit="yes"; \
		fi; \
		diff -Nu $(srcdir)/$$i$(ext) my_$$i$(ext); \
	done; \
	echo "------------------------" ; \
	if test "x$$doexit" = "xyes"; then \
		exit 1; \
	fi
	[ $(top_srcdir) = $(top_builddir) ] || rm -r $(top_builddir)/Matrix

MAINTAINERCLEANFILES = Makefile.in
CLEANFILES = my_*$(ext)


