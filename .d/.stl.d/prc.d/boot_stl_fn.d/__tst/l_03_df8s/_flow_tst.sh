#!/usr/bin/env bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

_l_03_df8s_3187854_flow() {

    local PW=$(pwd)

    if ! command -v l_03_df8s >/dev/null; then
        l_00_echo_ret1 "TYPE_ERROR : l_03_df8s"
        cd $PW
        return 1
    fi

    local filename=${STL_D_PATH}/prc.d/boot_stl_fn.d/__tst/l_03_df8s/_flow_tst.sh

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

    #! if stdout to ${res} only in this file - NOT in exec.tst
    : >"${res}"

    cd tst_dir || {
        hint="\$1: \$2: "
        l_00_echo_ret1 "in fs= file://${filename} , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${idir}/_dir_tst' : ${hint} : return 1"
        return 1
    }

    # local result=
    # l_03_df8s "0.d" result 0 0
    # echo "$result" &>>"${res}"

    result=
    echo "args 2 1" &>>"${res}"
    l_03_df8s "0.d" result 2 1
    echo "$result" &>>"${res}"

    result=
    echo "args @ 1 stdin 1" &>>"${res}"
    l_03_df8s "0.d" result @ 1 <<<"1"
    echo "$result" &>>"${res}"

    result=
    echo "args @ @ stdin fl(1 3)" &>>"${res}"
    l_03_df8s "0.d" result @ @ <<EOF
1
3
EOF
    echo "$result" &>>"${res}"

    # result=
    # echo "stdin 'a'"
    # l_03_df8s "0.d" result @ 1 <<<"a"
    # echo "$result" &>>"${res}"

    result=
    echo "args 3 @ stdin 4" &>>"${res}"
    l_03_df8s "0.d" result 3 @ <<<"4"
    echo "$result" &>>"${res}"

    result=
    echo "args @@ x stdin '1 4'" &>>"${res}"
    l_03_df8s "0.d" result @@ x <<<"1 4"
    echo "$result" &>>"${res}"

    # result=
    # echo "stdin '1 a'"
    # l_03_df8s "0.d" result @@ x <<<"1 a"
    # echo "$result" &>>"${res}"

    # l_03_df8s "${tst_dir}" &>>"${res}"
    #! rm abs_path
    # l_02_s2f "${STL_D_PATH}" '${STL_D_PATH}' "${res}"

    #?-------------------------------------
    #?----------------------------------------------------

    cd "${PW}" || {
        l_00_echo_ret1 "${PW} not dir"
        return 1
    }

}

_l_03_df8s_3187854_flow "$@"
