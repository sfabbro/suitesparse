#
#   AX_SUITESPARSE_DOC
#
#  adds a --with-doc configure option
#  checks pdflatex, bibtex and portability of a awk, sed, ln, and expand
#  to build the pdf guides
#
#

AC_DEFUN([AX_SUITESPARSE_DOC],[

AC_MSG_CHECKING([whether to build user guide])

AC_ARG_WITH([doc],
	    AS_HELP_STRING([--with-doc],
			   [Build documentation (PDF user guide)]),,
	    [with_doc=no])

AS_IF([test x$with_doc = xyes],
      [AC_MSG_RESULT([yes])
       AC_PATH_PROG([PDFLATEX], [pdflatex], [no])
       AS_IF([test "x$PDFLATEX" = x], AC_MSG_ERROR([pdflatex is required]))
       AC_PATH_PROG([BIBTEX], [bibtex], [no])
       AS_IF([test "x$BIBTEX" = x], AC_MSG_ERROR([bibtex is required]))
       AC_PROG_SED
       AC_PROG_AWK
       AC_PROG_LN_S
       AC_PATH_PROG([EXPAND], [expand], [no])],
      AC_MSG_RESULT([no]))

AM_CONDITIONAL([BUILD_DOCS], [test x$with_doc = xyes])

])
