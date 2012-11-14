AC_INIT([cholmod], [2.0.1], [davis@cise.ufl.edu])

AC_CONFIG_SRCDIR([Core/cholmod_aat.c])
AC_CONFIG_HEADERS([config.h Include/cholmod_config.h])
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_AUX_DIR([config])

AM_INIT_AUTOMAKE([foreign])

LT_INIT
AC_PROG_CC

# Checks for header files.
AC_CHECK_HEADERS([float.h limits.h stddef.h stdlib.h string.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_TYPE_UID_T
AC_TYPE_INT32_T
AC_TYPE_MODE_T
AC_TYPE_OFF_T
AC_TYPE_PID_T
AC_TYPE_SIZE_T
AC_TYPE_SSIZE_T
AC_STRUCT_TIMEZONE

# Checks for library functions.
AC_FUNC_ALLOCA
AC_FUNC_ERROR_AT_LINE
AC_FUNC_MALLOC
AC_FUNC_MKTIME
AC_FUNC_REALLOC
AC_FUNC_STRTOD
AC_CHECK_FUNCS([atexit localtime_r mblen putenv realpath rpmatch select setenv stime strtol strtoul strtoull tzset])

# Checks and automatically links with required system libraries
AC_CHECK_LIB([m], [sqrt])
#AC_CHECK_LIB([pthread], [])
AC_CHECK_LIB([rt], [clock_gettime])


# Checks for required SuiteSparse libraries
AX_CHECK_PKG_LIB(
	[suitesparseconfig],
	[SuiteSparse_config.h],
	[SuiteSparse_malloc],,
	[AC_MSG_ERROR([Could not find suitesparseconfig library])])

# Optional documentation
AX_SUITESPARSE_DOC

# Optional printing
AC_ARG_ENABLE(print,
    [AC_HELP_STRING([--disable-print],
		    [Do not print anything)])],
    [enable_print=$enableval],
    [enable_print=yes])
test x$enable_print = xyes || AC_DEFINE([NPRINT], [1], [Do not print anything])

# Optional CUDA
# GPU_BLAS_PATH=/usr/local/cuda
# GPU_CONFIG=-DGPU_BLAS -I$(GPU_BLAS_PATH)/include
PC_LIBS=
AC_ARG_WITH(cuda, 
    [AC_HELP_STRING([--with-cuda],
		    [Build with CUDA BLAS acceleration])],
     [with_cuda=$withval],
     [with_cuda=no])
if test x$with_cuda != xno; then
    AX_CHECK_PKG_LIB(
		[cublas],
		[cublas_v2.h],
		[cublasDgemm],,
		[AC_MSG_ERROR([Could not find cuda blas library])])
    test x$CUBLAS_PC = x && PC_LIBS="$PC_LIBS $CUBLAS_LIBS"
    AC_DEFINE([GPU_BLAS], [1], [Built with CUDA BLAS acceleration])
fi

#
# Optional Modules
#

# Disable all GPL modules by default
AC_ARG_WITH(gpl,
    [AC_HELP_STRING([--without-gpl],
		    [Do not include any GPL modules)])],
    [with_gpl=$withval],
    [with_gpl=yes])
test x$with_gpl = xyes || AC_DEFINE([NGPL], [1], [No GPL library used])

# Optional Check module
AC_ARG_WITH(check, 
    [AC_HELP_STRING([--without-check],
		    [Do not include the Check module])],
    [with_check=$withval],
    [with_check=yes])
test x$with_check = xyes || AC_DEFINE([NCHECK], [1], [Check module is not built])
AM_CONDITIONAL([WITH_CHECK], [test x$with_check = xyes])


# Optional Cholesky module (needs COLAMD, AMD)
AC_ARG_WITH(cholesky, 
    [AC_HELP_STRING([--without-cholesky],
		    [Do not include the Cholesky module])],
     [with_cholesky=$withval],
     [with_cholesky=yes])
if test x$with_cholesky = xyes; then
    AX_CHECK_PKG_LIB(
		[amd],
		[amd.h],
		[amd_info],,
		[AC_MSG_ERROR([Could not find amd library])])
    test x$AMD_PC = x && PC_LIBS="$PC_LIBS $AMD_LIBS"
    AX_CHECK_PKG_LIB(
		[colamd],
		[colamd.h],
		[colamd_recommended],,
		[AC_MSG_ERROR([Could not find colamd library])])
    test x$COLAMD_PC = x && PC_LIBS="$PC_LIBS $COLAMD_LIBS"
else
    AC_DEFINE([NCHOLESKY], [1], [Cholesky module is not built])
fi
AM_CONDITIONAL([WITH_CHOLESKY], [test x$with_cholesky = xyes])

# Optional MatrixOps module
AC_ARG_WITH(matrixops, 
    [AC_HELP_STRING([--without-matrixops],
		    [Do not include the MatrixOps module (GPL)])],
    [with_matrixops=$withval],
    [with_matrixops=$with_gpl])
test x$with_matrixops = xyes || AC_DEFINE([NMATRIXOPS], [1], [MatrixOps module is not built])
AM_CONDITIONAL([WITH_MATRIXOPS], [test x$with_matrixops = xyes])

# Optional Modify module
AC_ARG_WITH(modify, 
    [AC_HELP_STRING([--without-modify],
		    [Do not include the Modify module (GPL)])],
    [with_modify=$withval],
    [with_modify=$with_gpl])
test x$with_modify = xyes || AC_DEFINE([NMODIFY], [1], [Modify module is not built])
AM_CONDITIONAL([WITH_MODIFY], [test x$with_modify = xyes])

# Optional Partition module (needs CCOLAMD, CAMD, METIS)
AC_ARG_WITH(partition, 
    [AC_HELP_STRING([--without-partition],
		    [Do not include the Partition module])],
     [with_partition=$withval],
     [with_partition=yes])
if test x$with_partition = xyes; then
    AX_CHECK_PKG_LIB(
		[metis],
		[metis.h],
		[METIS_NodeND],,
		[AC_MSG_ERROR([Could not find metis library])])
    test x$METIS_PC = x && PC_LIBS="$PC_LIBS $METIS_LIBS"

    AX_CHECK_PKG_LIB(
		[ccolamd],
		[ccolamd.h],
		[ccolamd_report],,
		[AC_MSG_ERROR([Could not find ccolamd library])])
    test x$CCOLAMD_PC = x && PC_LIBS="$PC_LIBS $CCOLAMD_LIBS"

    AX_CHECK_PKG_LIB(
		[camd],
		[camd.h],
		[camd_info],,
		[AC_MSG_ERROR([Could not find colamd library])])
    test x$CAMD_PC = x && PC_LIBS="$PC_LIBS $CAMD_LIBS"
else
    AC_DEFINE([NPARTITION], [1], [Partition module is not built])
fi
AM_CONDITIONAL([WITH_PARTITION], [test x$with_partition = xyes])

# Optional Supernodal module (needs BLAS and LAPACK)
AC_ARG_WITH(supernodal,
    [AC_HELP_STRING([--without-supernodal],
		    [Do not include the supernodal module (GPL)])],
    [with_supernodal=$withval],
    [with_supernodal=$with_gpl])
if test x$with_supernodal = xyes; then
    AC_PROG_F77
    AC_F77_LIBRARY_LDFLAGS
    PKG_CHECK_MODULES([BLAS],
    		      [blas],
		      [BLAS_PC=blas],
		      [AX_BLAS([PC_LIBS="$PC_LIBS $BLAS_LIBS"],
		      	      AC_MSG_ERROR([Cannot find blas libraries]))])
    AC_ARG_WITH(longblas,
        [AC_HELP_STRING([--with-longblas=],
		   [Redefine the long integer for BLAS])],
	[AC_DEFINE([LONGBLAS], [$withval], [Use long integer for BLAS])])
    PKG_CHECK_MODULES([LAPACK],
    		      [lapack],
		      [LAPACK_PC=lapack],
		      [AX_LAPACK([PC_LIBS="$PC_LIBS $LAPACK_LIBS"],
		      	        AC_MSG_ERROR([Cannot find lapack libraries]))])   
else
    AC_DEFINE([NSUPERNODAL], [1], [Supernodal module is not built])
fi
AM_CONDITIONAL([WITH_SUPERNODAL], [test x$with_supernodal = xyes])

AC_SUBST([BLAS_PC])
AC_SUBST([LAPACK_PC])
AC_SUBST([PC_LIBS])

AC_CONFIG_FILES([Check/Makefile
		 Cholesky/Makefile
		 Core/Makefile
		 Demo/Makefile		 
                 Doc/Makefile
                 Include/Makefile
		 MatrixOps/Makefile
		 Modify/Makefile
		 Partition/Makefile
		 Supernodal/Makefile
		 cholmod.pc
                 Makefile])
AC_OUTPUT
