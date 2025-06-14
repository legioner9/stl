#!/usr/bin/env bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

_l_02_od2o_d4a2888_flow_1() {

    unset IFS

    if ! command -v l_02_od2o >/dev/null; then
        l_00_echo_ret1 "TYPE_ERROR : l_02_od2o"
        return 1
    fi

    local filename=${STL_D_PATH}/prc.d/boot_stl_fn.d/__tst/l_02_od2o/_flow_tst_v1.sh

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

    # l_02_od2o "${tst_dir}" &>>"${res}"

    #! stdin_tst
    # : >FILE
    #         echo "!STRING_AS_WORD!"
    #     cat >FILE <<EOF
    # third_str
    # fourth_str
    # EOF

    #     echo "FILE_ARG:"
    #     l_02_od2o FILE &>>"${res}"

    #     echo "FILE_PIPE:"
    #     cat FILE | l_02_od2o &>>"${res}"

    #     echo "HERE_DOC:"
    #     l_02_od2o <<EOF &>>"${res}"
    # first_str
    # second_str
    # EOF

    #     echo "HERE_STR:"
    #     l_02_od2o <<<"here_str_::_fifth_str" &>>"${res}"

    #*--------
    l_02_od2o od.d
    #*--------

    #! rm abs_path
    # l_02_s2f "${STL_D_PATH}" '${STL_D_PATH}' "${res}"

    #! TREAT IF NEED "${res}"
    # l_01_les2f "${res}"

    #?-------------------------------------
    #?----------------------------------------------------

    cd "${PW}" || {
        l_00_echo_ret1 "${PW} not dir"
        return 1
    }

}

_l_02_od2o_d4a2888_flow_1 "$@"
