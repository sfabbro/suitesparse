AM_CPPFLAGS = -I$(top_srcdir)/Include @SUITESPARSECONFIG_CFLAGS@

check_PROGRAMS = colamd_example colamd_l_example

include $(top_srcdir)/config/check.am

colamd_l_example_CPPFLAGS = $(AM_CPPFLAGS) -DDLONG
