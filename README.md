SuiteSparse with autotools
==========================


This is a repackaging of the SuiteSparse library using modern
autotools and some other minor changes, mostly to satisfy Linux
distributions QA, but also usability and robustness.
What is done:
* autotoolization (./configure && make install)
* use pkg-config for dependencies

To build the various SuiteSparse libraries, the build.bash script will
fetch the latest suitesparse, build, run unit test, check all files
are built and installed properly and finally make a tar ball with
proper version in the distfiles directory. 

Example:

 > ./build.bash AMD	# make a tar ball for latest included AMD
