#!/usr/bin/env bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

_l_02_pa8s_56f1c2e_flow_1() {

    if ! command -v l_02_pa8s >/dev/null; then
        l_00_echo_ret1 "TYPE_ERROR : l_02_pa8s"
        return 1
    fi

    local filename=${STL_D_PATH}/prc.d/boot_stl_fn.d/__tst/l_02_pa8s/_flow_tst_v1.sh

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

    local nm_arr=(name_1 name_2)
    local re_arr=(res_1 res_2)
    local re=

    re=
    l_00_echo_code "'l_02_pa8s nm_arr re_arr re 3'"
    l_02_pa8s nm_arr re_arr re 0

    l_00_echo_info "'\$re = $re'"
    re=
    
    l_00_echo_code "'l_02_pa8s nm_arr re_arr re 2'"
    l_02_pa8s nm_arr re_arr re 2

    l_00_echo_info "'\$re = $re'"
    re=
    l_00_echo_code "'l_02_pa8s nm_arr re_arr re 3'"
    l_02_pa8s nm_arr re_arr re 3

    l_00_echo_info "'\$re = $re'"
    re=
    l_00_echo_code "'l_02_pa8s nm_arr re_arr re 4'"
    l_02_pa8s nm_arr re_arr re 4

    l_00_echo_info "'\$re = $re'"

    # l_02_pa8s "${tst_dir}" &>>"${res}"

    #?-------------------------------------
    #?----------------------------------------------------

    cd "${PW}" || {
        l_00_echo_ret1 "${PW} not dir"
        return 1
    }

}

_l_02_pa8s_56f1c2e_flow_1 "$@"
