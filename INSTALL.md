SuiteSparse with autotools
==========================

Requirements to test and build the tar balls:

* BLAS/LAPACK
* METIS for CHOLMOD and derivatives
* LaTeX to build the documentation
* Intel Threading Building Block for SPQR


There is convenientbuild.bash script that will:
* fetch the latest suitesparse
* build, run unit test, check all files with all options enabled are built and installed properly
* make a tar ball with proper version in the distfiles directory.

Example:

 > ./build.bash ALL     # build all SuiteSparse packages
or

 > ./build.bash AMD	# make a tar ball for latest included AMD

