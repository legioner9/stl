#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

_l_06_xds1_bf6f1e7_exec() {

    unset IFS

    local PW=$(pwd)

    if ! command -v l_06_xds1 >/dev/null; then
        l_00_echo_ret1 "TYPE_ERROR : l_06_xds1" >&2
        return 1
    fi

    local filename=${STL_D_PATH}/prc.d/boot_stl_fn.d/__tst/l_06_xds1/exec.tst
    local idir="$(dirname ${filename})"

    l_00_echo_info "test function l_06_xds1 in file://${filename}"

    # cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

    cd "${idir}" || {
        l_00_echo_ret1 "${idir} not dir"
        return 1
    }

    . "$idir"/_flow_tst.sh &>/dev/null

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

if ! _l_06_xds1_bf6f1e7_exec "$@"; then
    l_00_echo_ret1 "EXEC_FAIL for fuction : '_l_06_xds1_bf6f1e7_exec' : GOTO file://${STL_D_PATH}/prc.d/boot_stl_fn.d/__tst/l_06_xds1 : return 1"
    return 1
fi
