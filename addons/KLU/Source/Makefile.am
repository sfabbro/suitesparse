AM_CPPFLAGS = -I$(top_srcdir)/Include \
	@SUITESPARSECONFIG_CFLAGS@ @AMD_CFLAGS@ @COLAMD_CFLAGS@ @BTF_CFLAGS@

noinst_LTLIBRARIES = libklud.la libkluz.la libklul.la libkluzl.la

KLUSRC = \
	klu.c klu_kernel.c klu_dump.c \
	klu_factor.c klu_free_numeric.c klu_solve.c \
	klu_scale.c klu_refactor.c \
	klu_tsolve.c klu_diagnostics.c klu_sort.c klu_extract.c

CKLUSRC = \
	klu_free_symbolic.c klu_defaults.c klu_analyze_given.c \
	klu_analyze.c klu_memory.c

libklud_la_SOURCES = $(KLUSRC) $(CKLUSRC)
libkluz_la_SOURCES = $(KLUSRC)
libkluz_la_CPPFLAGS = $(AM_CPPFLAGS) -DCOMPLEX
libklul_la_SOURCES = $(KLUSRC) $(CKLUSRC)
libklul_la_CPPFLAGS = $(AM_CPPFLAGS) -DDLONG
libkluzl_la_SOURCES = $(KLUSRC)
libkluzl_la_CPPFLAGS = $(AM_CPPFLAGS) -DDLONG -DCOMPLEX

lib_LTLIBRARIES = libklu.la
libklu_la_SOURCES =
libklu_la_LIBADD = libklud.la libkluz.la libklul.la libkluzl.la \
	@SUITESPARSECONFIG_LIBS@ @AMD_LIBS@ @COLAMD_LIBS@ @BTF_LIBS@

MAINTAINERCLEANFILES = Makefile.in
