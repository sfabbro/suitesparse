SuiteSparse with autotools
==========================


This is a repackaging of the SuiteSparse library using modern
autotools and some other minor changes, mostly to satisfy Linux
distributions QA, but also usability and robustness.

To build the various SuiteSparse libraries, there are some helper scripts.

Ex:

 $ ./sync.bash 4.0.2    # fetch and untar the SuiteSparse version 4.0.2
 $ ./build.bash AMD	# make a tar ball for latest included AMD
