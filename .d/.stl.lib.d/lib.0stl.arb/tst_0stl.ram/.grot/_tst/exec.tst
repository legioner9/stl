#!/bin/bash

__tst_0stl_TST() {

    if ! command -v tst_0stl >/dev/null; then
        l_00_echo_ret1 "TYPE_ERROR : tst_0stl" >&2
        return 1
    fi

    local filename=${STL_LIB_D_PATH}/lib.0stl.arb/tst_0stl.ram/.grot/_tst/exec.tst

    local idir=$(pwd)

    # cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

    local dir=$(_prs_f -d "$filename")

    cd "${dir}" || {
        l_00_echo_ret1 "${dir} not dir" >&2
        return 1
    }

    . "$dir"/_flow_tst.sh &>/dev/null

    # . "$dir"/_flow_tst.sh &>res

    #? if res, pre dirs -> diff -qr | diff -r

    local flag=1
    if ! diff -q "$dir"/pre "$dir"/res >/dev/null; then
        flag=0
    fi

    if [ 0 -eq "$flag" ]; then
        l_00_echo_ret1  "ANY in file://$dir fail" >&2
        diff "$dir"/pre "$dir"/res >&2
        cd "$idir"
        return 1
    else
        l_00_echo_info "ALL in file://$dir true"
        cd "$idir"
        return 0
    fi

    cd "$idir"

}

if ! __tst_0stl_TST "$@"; then
    l_00_echo_ret1 "in fs= file://${STL_LIB_D_PATH}/lib.0stl.arb/tst_0stl.ram/.grot/_tst/exec.tst , line=${LINENO}: : EXEC_FAIL : '__tst_0stl_TST ' : ${hint} : return 1"
    return 1
fi
