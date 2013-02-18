AC_INIT([klu], [1.2.1], [davis@cise.ufl.edu])

AC_CONFIG_SRCDIR([Source/klu_defaults.c])
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_AUX_DIR([config])

AM_INIT_AUTOMAKE([dist-bzip2 foreign])

# use silent rules if available - automake 1.11
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES(yes)])

LT_INIT
AC_PROG_CC

# Checks for header files.
AC_CHECK_HEADERS([limits.h stddef.h stdlib.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_TYPE_SIZE_T

# Checks for library functions.
AC_FUNC_ERROR_AT_LINE
AC_FUNC_MALLOC
AC_FUNC_REALLOC

# Checks and automatically links with required system libraries
AC_CHECK_LIB([m], [sqrt])

# Optional documentation
AX_SUITESPARSE_DOC

# Checks for required SuiteSparse libraries
AX_CHECK_PKG_LIB(
	[suitesparseconfig],
	[SuiteSparse_config.h],
	[SuiteSparse_malloc],,
	[AC_MSG_ERROR([Could not find suitesparseconfig library])])

AX_CHECK_PKG_LIB(
	[btf],
	[btf.h],
	[btf_strongcomp],,
	[AC_MSG_ERROR([Could not find btf library])])

AX_CHECK_PKG_LIB(
	[amd],
	[amd.h],
	[amd_malloc],,
	[AC_MSG_ERROR([Could not find amd library])])

AX_CHECK_PKG_LIB(
	[colamd],
	[colamd.h],
	[colamd_recommended],,
	[AC_MSG_ERROR([Could not find colamd library])])


# Optional cholmod (only used in test)
AC_ARG_WITH(cholmod,
    [AC_HELP_STRING([--with-cholmod],
		    [Compile and test with cholmod])],
     [with_cholmod=$withval],
     [with_cholmod=no])
if test x$with_cholmod = xyes; then
    AX_CHECK_PKG_LIB(
		[cholmod],
		[cholmod.h],
		[cholmod_read_sparse],,
		[AC_MSG_ERROR([Could not find cholmod library])])
fi
AM_CONDITIONAL([WITH_CHOLMOD], [test x$with_cholmod != xno])

AC_CONFIG_FILES([Demo/Makefile		 
                 Doc/Makefile
		 Source/Makefile
		 klu.pc
                 Makefile])
AC_OUTPUT
