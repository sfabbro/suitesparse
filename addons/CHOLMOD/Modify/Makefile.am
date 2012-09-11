AM_CPPFLAGS = -I$(top_srcdir)/Include @SUITESPARSECONFIG_CFLAGS@

noinst_LTLIBRARIES = libmodify.la libmodifyl.la
noinst_HEADERS = \
	t_cholmod_updown.c \
	t_cholmod_updown_numkr.c

libmodify_la_SOURCES = \
	cholmod_rowadd.c \
	cholmod_rowdel.c \
	cholmod_updown.c
libmodifyl_la_SOURCES = $(libmodify_la_SOURCES)
libmodifyl_la_CPPFLAGS = $(AM_CPPFLAGS) -DDLONG

EXTRA_DIST = License.txt gpl.txt
