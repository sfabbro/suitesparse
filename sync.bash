#!/bin/bash

[ $# -lt 1 ] && echo "$0 <suitesparse version>" && exit

PV=${1}

# sync with upstream
wget -nc -c http://www.cise.ufl.edu/research/sparse/SuiteSparse/SuiteSparse-${PV}.tar.gz
ln -sfn SuiteSparse-${PV}.tar.gz SuiteSparse.tar.gz 

# sync m4 macros
for macro in ax_blas ax_lapack; do
    wget http://git.savannah.gnu.org/cgit/autoconf-archive.git/plain/m4/${macro}.m4 -O addons/m4/${macro}.m4
done

tar xf SuiteSparse.tar.gz
