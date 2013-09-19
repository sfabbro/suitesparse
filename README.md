SuiteSparse with autotools
==========================

This repository is a suite of scripts to re-package and build the
SuiteSparse library. You may be more interested in the final tar
balls. Download the latest tar balls at:

http://dev.gentoo.org/~bicatali/distfiles/

The repacking replaces the original well crafted but not portable
Makefile with more standard autotools packaging and some other minor
changes. This was originally done mostly to satisfy Linux
distributions QA, but also adds usability and robustness to the
original packaging. Gentoo Linux re-distributes all source code with
this packaging.

What is done:

* add configure.ac, Makefile.am, m4 macros, pkg-config files for all
  SuiteSparse libraries
* a few tricks to avoid conflicting files during tests

What you get:

The usual configure/make/make install goodies:
* no need to edit makefile's, options are passed with the configure script
* build shared libraries simply with "./configure --enable-shared", build
  static libraries without PIC
* run unit tests for each library with "make check"
* cross-compiling, parallel building with "make -j N"
* easy to package for Linux distributors

Users can compile and link suitesparse libraries with a simple call to
pkg-config, i.e.:
   
    pkg-config --cflags cholmod   
    pkg-config --libs cholmod

All C source code is unmodified.

To build the versioned tar balls, see INSTALL.md. Fetch the resulting tar balls
from the Downloads link below.

Resources
---------

SuiteSparse web site:
    http://www.cise.ufl.edu/research/sparse/SuiteSparse/

Download:
    http://dev.gentoo.org/~bicatali/distfiles/

Git repository / bug reports / pull requests:
    https://github.com/sfabbro/suitesparse
