AM_CPPFLAGS = -I$(top_srcdir)/Include @SUITESPARSECONFIG_CFLAGS@

check_PROGRAMS = ccolamd_example ccolamd_l_example
ccolamd_l_example_CPPFLAGS = $(AM_CPPFLAGS) -DDLONG

include $(top_srcdir)/config/check.am

