SuiteSparse with autotools
==========================

Requirements to build and test all the tar balls:

* BLAS/LAPACK
* METIS for CHOLMOD and derivatives
* LaTeX to build the documentation
* Intel Threading Building Block (SPQR only)


There is a convenient build.bash script that will:
* fetch the latest SuiteSparse original tar ball
* build, run unit tests, check all files with all options enabled are built and installed properly
* produce a versioned tar ball in the distfiles directory.

Examples:

 > ./build.bash AMD	# make a versioned tar ball for latest AMD


 > ./build.bash ALL     # make versioned tar balls for all the latest SuiteSparse libs


