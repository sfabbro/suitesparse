AC_INIT([ldl], [2.1.1], [davis@cise.ufl.edu])

AC_CONFIG_SRCDIR([Source/ldl.c])
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_AUX_DIR([config])

AM_INIT_AUTOMAKE([dist-bzip2 foreign])

# use silent rules if available - automake 1.11
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES(yes)])

LT_INIT
AC_PROG_CC

# Checks for header files
AC_CHECK_HEADERS([stdlib.h])

# Checks for typedefs, structures, and compiler characteristics
AC_FUNC_ERROR_AT_LINE

# Checks and automatically links with required system libraries
AC_CHECK_LIB([m], [sqrt])

# Checks for required SuiteSparse libraries
AX_CHECK_PKG_LIB(
	[suitesparseconfig],
	[SuiteSparse_config.h],
	[SuiteSparse_malloc],,
	[AC_MSG_ERROR([Could not find suitesparseconfig library])])

# Optional documentation
AX_SUITESPARSE_DOC

# Optional AMD ordering (only used in test)
AC_ARG_WITH(amd, 
    [AC_HELP_STRING([--with-amd],
		    [Compile and test with AMD ordering (needs AMD)])],
     [with_amd=$withval],
     [with_amd=no])
if test x$with_amd = xyes; then
    AX_CHECK_PKG_LIB(
		[amd],
		[amd.h],
		[amd_info],,
		[AC_MSG_ERROR([Could not find amd library])])
fi
AM_CONDITIONAL([WITH_AMD], [test x$with_amd != xno])

AC_CONFIG_FILES([Demo/Makefile
                 Doc/Makefile
                 Source/Makefile
                 ldl.pc
                 Makefile])
AC_OUTPUT
