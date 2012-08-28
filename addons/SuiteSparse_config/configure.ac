AC_INIT([suitesparseconfig], [4.0.2], [davis@cise.ufl.edu])

AC_CONFIG_SRCDIR([SuiteSparse_config.c])
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_AUX_DIR([config])

AM_INIT_AUTOMAKE([foreign])

LT_INIT
AC_PROG_CC

# Checks for header files
AC_CHECK_HEADERS([limits.h stdlib.h])

# Checks for typedefs, structures, and compiler characteristics
AC_TYPE_SIZE_T
AC_FUNC_MALLOC

# Req
AC_CHECK_LIB([rt], [clock_gettime])

# Optional xerbla mini libraries
AC_MSG_CHECKING([whether to build the xerbla libraries])
AC_ARG_WITH([xerbla],
    AS_HELP_STRING([--with-xerbla],[Build local xerbla F77 and C libraries]), 
    [with_xerbla=$withval],
    [with_xerbla=no])
AS_IF([test x"$with_xerbla" = xno],
      AC_MSG_RESULT([no]),
      [AC_MSG_RESULT([yes])
       LT_LANG([Fortran 77])])
AM_CONDITIONAL([WITH_XERBLA], [test x$with_xerbla != xno])

AC_CONFIG_FILES([Makefile
		 suitesparseconfig.pc])
AC_OUTPUT
