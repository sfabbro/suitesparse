EXTRA_HEADERS =

if WITH_CHECK
EXTRA_HEADERS += cholmod_check.h
endif

if WITH_CHOLESKY
EXTRA_HEADERS += cholmod_cholesky.h
endif

if WITH_PARTITION
EXTRA_HEADERS += cholmod_partition.h
endif

if WITH_MATRIXOPS
EXTRA_HEADERS += cholmod_matrixops.h
endif

if WITH_MODIFY
EXTRA_HEADERS += cholmod_modify.h
endif

if WITH_SUPERNODAL
EXTRA_HEADERS += cholmod_supernodal.h
endif

include_HEADERS = \
	$(EXTRA_HEADERS) \
	cholmod.h \
	cholmod_blas.h \
	cholmod_complexity.h \
	cholmod_config.h \
	cholmod_core.h \
	cholmod_internal.h \
	cholmod_io64.h \
	cholmod_template.h

EXTRA_DIST = README.txt License.txt
