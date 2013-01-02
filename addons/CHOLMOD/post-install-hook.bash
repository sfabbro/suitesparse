#!/bin/bash

# cholmod_config.h was generated at configure time
mv Include/cholmod_config.h{.orig,}

# cygwin: due to case insensitive file system "CHOLMOD/Core" collides with automake "rm -f core"
mv Cored Core
