#!/bin/bash

if [ $# -lt 1 ]; then
    echo $"$0 PKG #  List of available PKG:
$(ls -1d addons/* | xargs -n1 basename | grep -v '^\(config\|m4\)')
"
    exit
fi

lib=${1}
prefix=${PWD}/usr

# need to run sync.bash before?
# ./sync.bash
[ -d SuiteSparse ] && tar xf SuiteSparse.tar.gz

# backup all Makefile's
for i in $(find SuiteSparse/${lib} -name Makefile); do
    mv ${i} ${i}.orig
done

# copy common files
cp -r addons/config SuiteSparse/${lib}

# copy specific files
for i in $(find addons/${lib} -type f); do
    cp ${i} SuiteSparse/$(dirname ${i/addons\/})
done

# build
pushd SuiteSparse/${lib} > /dev/null
# if there is a hook, run it
[[ -x post-copy-hook.bash ]] && ./post-copy-hook.bash
# try to guess version
[ -e Doc/ChanegeLog ] && version=$(awk '{print $5;exit};1' Doc/ChangeLog)
sed -i -e "/AC_INIT/s/[[:digit:]]\.[[:digit:]]\{3\}/${version}/" configure.ac
# run unit tests and build the tar ball
autoreconf -vi && \
    PKG_CONFIG_PATH="${prefix}/lib/pkgconfig:$PKG_CONFIG_PATH" \
    ./configure --prefix=${prefix} --disable-static && \
    make check install && make distcheck
# cleanup
if [ $? -eq 0 ]; then
    make maintainer-clean
    find . -name Makefile.am -a -name configure.ac -a -name \*.pc.in -delete
    rm -rf config
    for i in $(find . -name Makefile.orig); do
	mv ${i} ${i/.orig/}
    done
fi
popd > /dev/null

# if successful save generated tar ball and cleanup
tb=$(find SuiteSparse/${lib} -name \*.tar.gz)
[[ -e ${tb} ]] && mkdir -p distfiles && mv ${tb} distfiles/
