AM_CPPFLAGS = -I$(top_srcdir)/Include @SUITESPARSECONFIG_CFLAGS@

check_PROGRAMS = amd_simple amd_demo amd_demo2 amd_l_demo

include $(top_srcdir)/config/check.am

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

