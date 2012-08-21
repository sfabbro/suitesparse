#
#   AX_SUITESPARSE_DOC
#
#  adds a --with-doc configure option
#  checks pdflatex and bibtex to build the user guide
#
#

AC_DEFUN([AX_SUITESPARSE_DOC],[

AC_MSG_CHECKING([whether to build user guide])
AC_ARG_WITH([doc],
    AS_HELP_STRING([--with-doc],[Build documentation (PDF user guide)]), 
		   [with_doc=$withval],
                   [with_doc=no])

AS_IF([test x"$with_doc" != xno],
      [AC_MSG_RESULT([yes])
       AC_PATH_PROG ([PDFLATEX], [pdflatex], [no])
       AS_IF([test "x$PDFLATEX" = x], AC_MSG_ERROR([pdflatex is required]))
       AC_PATH_PROG ([BIBTEX], [bibtex], [no])
       AS_IF([test "x$BIBTEX" = x], AC_MSG_ERROR([biblatex is required]))],
      AC_MSG_RESULT([no])
)

AM_CONDITIONAL([BUILD_DOCS], [test x$with_doc != xno])

])
