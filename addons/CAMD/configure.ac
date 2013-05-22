AC_INIT([camd], [2.3.1], [davis@cise.ufl.edu])

AC_CONFIG_SRCDIR([Source/camd_global.c])
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_AUX_DIR([config])

AM_INIT_AUTOMAKE([no-dist-gzip dist-bzip2 foreign])

# use silent rules if available - automake 1.11
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES(yes)])

LT_INIT
AC_PROG_CC

# Checks for header files
AC_CHECK_HEADERS([limits.h stddef.h stdlib.h])

# Checks for typedefs, structures, and compiler characteristics
AC_TYPE_SIZE_T
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

AC_CONFIG_FILES([Demo/Makefile
                 Doc/Makefile
                 Source/Makefile
                 camd.pc
                 Makefile])
AC_OUTPUT
