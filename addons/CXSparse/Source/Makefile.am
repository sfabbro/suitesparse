AM_CPPFLAGS = -I$(top_srcdir)/Include @SUITESPARSECONFIG_CFLAGS@

CS_SOURCES = \
	$(top_srcdir)/Include/cs.h \
	cs_add.c cs_amd.c cs_chol.c cs_cholsol.c cs_counts.c cs_cumsum.c \
        cs_droptol.c cs_dropzeros.c cs_dupl.c cs_entry.c \
        cs_etree.c cs_fkeep.c cs_gaxpy.c cs_happly.c cs_house.c cs_ipvec.c \
        cs_lsolve.c cs_ltsolve.c cs_lu.c cs_lusol.c cs_util.c cs_multiply.c \
        cs_permute.c cs_pinv.c cs_post.c cs_pvec.c cs_qr.c cs_qrsol.c \
        cs_scatter.c cs_schol.c cs_sqr.c cs_symperm.c cs_tdfs.c cs_malloc.c \
        cs_transpose.c cs_compress.c cs_usolve.c cs_utsolve.c cs_scc.c \
        cs_maxtrans.c cs_dmperm.c cs_updown.c cs_print.c cs_norm.c cs_load.c \
        cs_dfs.c cs_reach.c cs_spsolve.c cs_leaf.c cs_ereach.c cs_randperm.c

noinst_LTLIBRARIES = \
	libcxsparse_di.la \
	libcxsparse_dl.la \
	libcxsparse_ci.la \
	libcxsparse_cl.la

libcxsparse_di_la_SOURCES = $(CS_SOURCES)
libcxsparse_dl_la_SOURCES = $(CS_SOURCES)
libcxsparse_dl_la_CPPFLAGS = $(AM_CPPFLAGS) -DCS_LONG
libcxsparse_ci_la_SOURCES = $(CS_SOURCES)
libcxsparse_ci_la_CPPFLAGS = $(AM_CPPFLAGS) -DCS_COMPLEX
libcxsparse_cl_la_SOURCES = $(CS_SOURCES)
libcxsparse_cl_la_CPPFLAGS = $(AM_CPPFLAGS) -DCS_LONG -DCS_COMPLEX

lib_LTLIBRARIES = libcxsparse.la
libcxsparse_la_SOURCES = cs_convert.c
libcxsparse_la_LIBADD = \
	libcxsparse_di.la \
	libcxsparse_dl.la \
	libcxsparse_ci.la \
	libcxsparse_cl.la \
	@SUITESPARSECONFIG_LIBS@

MAINTAINERCLEANFILES = Makefile.in
