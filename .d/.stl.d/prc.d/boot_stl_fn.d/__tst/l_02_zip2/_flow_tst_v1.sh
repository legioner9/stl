#!/usr/bin/env bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

_l_02_zip2_b9f57e3_flow_1() {

    if ! command -v l_02_zip2 >/dev/null; then
        l_00_echo_ret1 "TYPE_ERROR : l_02_zip2"
        return 1
    fi

    local filename=${STL_D_PATH}/prc.d/boot_stl_fn.d/__tst/l_02_zip2/_flow_tst_v1.sh

    local PW=$(pwd)
    local idir="$(dirname ${filename})"
    local tst_dir=${idir}/tst_dir
    local res=${idir}/res

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    cd "${idir}" || {
        l_00_echo_ret1 "${idir} not dir"
        return 1
    }

    #?----------------------------------------------------
    #?-------------------------------------
    l_00_echo_exec "source file://$filename"
    : >"${res}"

    cd tst_dir || {
        hint="\$1: \$2: "
        l_00_echo_ret1 "in fs= file://${filename} , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${idir}/_dir_tst' : ${hint} : return 1"
        return 1
    }

    local ret1=0

    rm -r dir_src dir_dist
    mkdir dir_dist
    cp -r dir_init dir_src

    l_02_zip2 dir_dist/file_src dir_src/file_src
    unzip dir_dist/file_src.zip -d dir_dist
    # if diff dir_dist/file_src dir_src/file_src; then
    #     ret1=1
    # fi

    l_02_zip2 dir_dist/dir_src_in dir_src/dir_src_in
    unzip dir_dist/dir_src_in.zip -d dir_dist

    # if diff -r dir_dist/dir_src_in dir_src/dir_src_in; then
    #     ret1=1
    # fi

    cat dir_dist/file_src
    echo
    cat dir_dist/dir_src_in/file_src_in
    echo
    # l_02_zip2 "${tst_dir}" &>>"${res}"

    #?-------------------------------------
    #?----------------------------------------------------

    cd "${PW}" || {
        l_00_echo_ret1 "${PW} not dir"
        return 1
    }

}

_l_02_zip2_b9f57e3_flow_1 "$@"
