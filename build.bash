#!/bin/bash

if [ $# -lt 1 ]; then
    echo $"Usage: $(basename $0) PKG
 Available SuiteSparse PKG:
$(ls -1d addons/* | xargs -n1 basename | grep -v '^\(config\|m4\)' | awk '{print "  * "$1}')"
    exit
fi


build_suitesparse_pkg() {
    local lib=$1 i
    # backup all Makefile's
    for i in $(find SuiteSparse/${lib} -name Makefile); do
	[ -e ${i}.orig ] || mv ${i} ${i}.orig
    done

    # copy common files
    cp -r addons/{config,m4} SuiteSparse/${lib}

    # copy specific files
    for i in $(find addons/${lib} -type f); do
	cp ${i} SuiteSparse/$(dirname ${i/addons\/})
    done

    pushd SuiteSparse/${lib} > /dev/null
    # apply hook
    [[ -x post-copy-hook.bash ]] && ./post-copy-hook.bash
    # try to guess version
    if [ -e Doc/ChangeLog ]; then
	version=$(awk '{print $5;exit};1' Doc/ChangeLog)
    else
	version=$(grep VERSION ../README.txt | awk '{print $6}')
    fi
    sed -i -e "/AC_INIT/s/[[:digit:]]\.[[:digit:]]\{3\}/${version}/" configure.ac
    # configure, build, test, and package
    autoreconf -vi && \
	PKG_CONFIG_PATH="${PREFIX}/lib/pkgconfig:$PKG_CONFIG_PATH" \
	./configure && make distcheck

    # cleanup
    if [[ $? -eq 0 ]]; then
	make maintainer-clean
	[[ -x post-install-hook.bash ]] && ./post-install-hook.bash
	rm -rf config m4 configure.ac *.pc.in post-*.bash
	find . -name Makefile.am -delete
	for i in $(find . -name Makefile.orig); do
	    mv ${i} ${i/.orig/}
	done
    else
	popd > /dev/null
	echo "!! FAILED - See above"
	return
    fi
    popd > /dev/null

    # now install and save generated tar ball
    local tb=$(find SuiteSparse/${lib} -name \*-${version}.tar.gz)
    local src=$(basename ${tb} .tar.gz)
    tar xf ${tb} && \
	mkdir ${lib}_build && \
	pushd ${lib}_build && \
	PKG_CONFIG_PATH="${PREFIX}/lib/pkgconfig:$PKG_CONFIG_PATH" \
	../${src}/configure --prefix=${PREFIX} --disable-static && \
	make install && \
	popd && \
	rm -rf ${lib}_build ${src} && \
	mkdir -p distfiles && mv ${tb} distfiles/ && \
	echo "Successfully built ${tb} now in distfiles"
}

PREFIX=${PWD}/usr

[[ -e SuiteSparse.tar.gz ]] || ./sync.bash
if test $(find SuiteSparse.tar.gz -ctime 30); then
    echo "Current version more than one month old, re-fetching"
    rm -rf SuiteSparse SuiteSparse.tar.gz
    ./sync.bash
fi

[[ -d SuiteSparse ]] || tar xf SuiteSparse.tar.gz

build_suitesparse_pkg $1
