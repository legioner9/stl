#!/usr/bin/env bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

_l_02_ia2xs_1c7ead4_flow_1() {

    if ! command -v l_02_ia2xs >/dev/null; then
        l_00_echo_ret1 "TYPE_ERROR : l_02_ia2xs"
        return 1
    fi

    local filename=${STL_D_PATH}/prc.d/boot_stl_fn.d/__tst/l_02_ia2xs/_flow_tst_v1.sh

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

    # l_02_ia2xs "${tst_dir}" &>>"${res}"

    #?-------------------------------------
    #?----------------------------------------------------
    # (exec l_02_ia2xs _flow_1) , -> _flow_tst_v1.sh
    # echo_colon_pth=${idir}/tst_dir/echo_colon
    # file_args_pth=${idir}/tst_dir/file.args
    # echo_colon_pth=echo_colon
    # file_args_pth=file.args

    cat >echo_colon <<EOF
echo :\$1
EOF
    # cat ${echo_colon_pth}
    # file ${echo_colon_pth}
    l_02_ia2xs ". echo_colon" <<EOF
->that here_docs<- 
first_str
second_str
EOF

    cat >file.args <<EOF
->that file.args<-
third_str
fourth_str
EOF
    # l_00_echo_code "'l_02_ia2xs \". ${echo_colon_pth}\" \"${file_args_pth}\"'"
    file echo_colon
    file file.args
    l_02_ia2xs ". echo_colon" file.args

    l_02_ia2xs ". echo_colon" <<<"->that here_str<- \"argument\""

    cd "${PW}" || {
        l_00_echo_ret1 "${PW} not dir"
        return 1
    }

}

_l_02_ia2xs_1c7ead4_flow_1 "$@"
