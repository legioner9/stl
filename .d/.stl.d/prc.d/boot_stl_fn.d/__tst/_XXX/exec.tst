#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

__XXX() {

    local PW=$(pwd)

    if ! command -v XXX >/dev/null; then
        echo "TYPE_ERROR : XXX" >&2
        return 1
    fi

    local filename=${ST_RC_D_PATH}/prc.d/boot_stl_fn.d/__tst/_XXX/exec.tst
    local idir="$(dirname ${filename})"

    l_00_echo_info "test XXX in file://${filename}"

    # cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

    cd "${idir}" || {
        echo "${idir} not dir" >&2
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
        echo "in file://$filename fail" >&2
        diff "$idir"/pre "$idir"/res >&2

        cd "$PW"
        return 1
    else
        echo "in file://$filename true"

        cd "$PW"
        return 0
    fi

}

if ! __XXX "$@"; then
    l_00_echo_ret1 "in fs= file://${filename} , line=${LINENO}: : EXEC_FAIL : '__XXX ' : return 1"
    return 1
fi
