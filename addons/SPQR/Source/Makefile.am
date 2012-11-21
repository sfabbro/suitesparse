AM_CPPFLAGS=-I$(top_srcdir)/Include @EXTRA_CPPFLAGS@ @TBB_CFLAGS@ @CHOLMOD_CFLAGS@

lib_LTLIBRARIES = libspqr.la

libspqr_la_SOURCES = \
    spqr_rmap.cpp \
    SuiteSparseQR_C.cpp \
    SuiteSparseQR_expert.cpp \
    spqr_parallel.cpp \
    spqr_kernel.cpp \
    spqr_analyze.cpp \
    spqr_assemble.cpp \
    spqr_cpack.cpp \
    spqr_csize.cpp \
    spqr_fcsize.cpp \
    spqr_debug.cpp \
    spqr_front.cpp \
    spqr_factorize.cpp \
    spqr_freenum.cpp \
    spqr_freesym.cpp \
    spqr_freefac.cpp \
    spqr_fsize.cpp \
    spqr_maxcolnorm.cpp \
    spqr_rconvert.cpp \
    spqr_rcount.cpp \
    spqr_rhpack.cpp \
    spqr_rsolve.cpp \
    spqr_stranspose1.cpp \
    spqr_stranspose2.cpp \
    spqr_hpinv.cpp \
    spqr_1fixed.cpp \
    spqr_1colamd.cpp \
    SuiteSparseQR.cpp \
    spqr_1factor.cpp \
    spqr_cumsum.cpp \
    spqr_shift.cpp \
    spqr_happly.cpp \
    spqr_panel.cpp \
    spqr_happly_work.cpp \
    SuiteSparseQR_qmult.cpp \
    spqr_trapezoidal.cpp \
    spqr_larftb.cpp \
    spqr_append.cpp \
    spqr_type.cpp \
    spqr_tol.cpp

libspqr_la_LIBADD = @TBB_LIBS@ @LAPACK_LIBS@ @CHOLMOD_LIBS@

MAINTAINERCLEANFILES = Makefile.in
