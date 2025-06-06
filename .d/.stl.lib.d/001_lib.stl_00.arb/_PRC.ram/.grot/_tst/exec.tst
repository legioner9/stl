#!/bin/bash

___PRC_TST() {

    local PW=$(pwd)

    if ! command -v _PRC >/dev/null; then
        l_00_echo_ret1 "TYPE_ERROR : _PRC" 
        cd "$PW"
        return 1
    fi

    local filename=${STL_LIB_D_PATH}/001_lib.stl_00.arb/_PRC.ram/.grot/_tst/exec.tst
    local idir="$(dirname ${filename})"

    l_00_echo_info "test function _PRC in file://${filename}"

    cd "${idir}" || {
        l_00_echo_ret1 "${idir} not dir"
        cd "$PW"
        return 1
    }

    . "$idir"/_flow_tst.sh &>/dev/null

    # . "$dir"/_flow_tst.sh &>res

    #? if res, pre dirs -> diff -qr | diff -r

    local flag=1
    if ! diff -q "$idir"/pre "$idir"/res >/dev/null; then
        flag=0
    fi

    if [ 0 -eq "$flag" ]; then
        l_00_echo_fail "in file://$filename FAIL"
        l_00_echo_code "diff file://$idir/pre file://$idir/res"
        diff "$idir"/pre "$idir"/res >&2

        cd "$PW"
        return 1
    else
        l_00_echo_succ "in file://$filename SUCC"

        cd "$PW"
        return 0
    fi

}

if ! ___PRC_TST "$@"; then
    l_00_echo_err "in fs= file://${STL_LIB_D_PATH}/{{lib_name_dir_arb}}/_PRC.ram/.grot/_tst/exec.tst , line=${LINENO}: : EXEC_FAIL : '___PRC_TST ' : ${hint} : return 1"
    return 1
fi
