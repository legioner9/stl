#!/bin/bash

__stl_00_tst_TST() {

    if ! command -v stl_00_tst >/dev/null; then
        echo "TYPE_ERROR : stl_00_tst" >&2
        return 1
    fi

    local filename=${STL_LIB_D_PATH}/lib.stl_00.arb/stl_00_tst.ram/.grot/_tst/exec.tst

    local idir=$(pwd)

    # cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

    local dir=$(_prs_f -d "$filename")

    cd "${dir}" || {
        echo "${dir} not dir" >&2
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
        echo "ANY in file://$dir fail" >&2
        diff "$dir"/pre "$dir"/res >&2
        cd "$idir"
        return 1
    else
        echo "ALL in file://$dir true"
        cd "$idir"
        return 0
    fi

    cd "$idir"

}

if ! __stl_00_tst_TST "$@"; then
    _st_exit "in fs= file://${STL_LIB_D_PATH}/lib.stl_00.arb/stl_00_tst.ram/.grot/_tst/exec.tst , line=${LINENO}: : EXEC_FAIL : '__stl_00_tst_TST ' : ${hint} : return 1"
    return 1
fi
