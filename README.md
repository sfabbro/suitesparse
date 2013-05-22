SuiteSparse with autotools
==========================


This is a repackaging of the SuiteSparse library using modern
autotools and some other minor changes, mostly to satisfy Linux
distributions QA, but also usability and robustness.

What is done:

* add configure.ac, Makefile.am, m4 macros, pkg-config files
* a few tricks to avoid conflicting files during tests

What you get:

The usual configure/make/make install goodies:
* no need to edit makefile's, options are passed with the configure script
* build shared libraries with "./configure --enable-shared", leave
  static libraries without PIC
* test the package with "make check"
* cross-compiling, parallel building with "make -j<ncpu>"
* easy to package for Linux distributors

And all the proper compiling and linking flags of suitesparse packages with pkg-config:
    Ex: pkg-config --libs cholmod

The C source code is left unmodified.

To build the tar balls, see INSTALL.md. Fetch the resulting tar balls
from the Downloads link below.

Resources
---------

SuiteSparse web site:
    http://www.cise.ufl.edu/research/sparse/SuiteSparse/

Downloads:
    http://dev.gentoo.org/~bicatali/distfiles/

Git repository:
    https://github.com/sfabbro/suitesparse

Bug reports:
    https://github.com/sfabbro/suitesparse/issues
