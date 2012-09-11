AM_CPPFLAGS = -I$(top_srcdir)/Include @SUITESPARSECONFIG_CFLAGS@


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

include $(top_srcdir)/config/check.am

ldllsimple_SOURCES = ldlsimple.c
ldllsimple_CPPFLAGS = -DLDL_LONG
ldllmain_SOURCES = ldlmain.c
ldllmain_CPPFLAGS = -DLDL_LONG
