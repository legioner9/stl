#!/usr/bin/env bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

__XXX_RND_flow_1() {

    unset IFS

    # if ! command -v _XXX >/dev/null; then
    #     l_00_echo_ret1 "TYPE_ERROR : _XXX"
    #     return 1
    # fi

    local filename={{path_dir}}/_XXX.d/.d/_tst/_flow_tst_v2.sh
    local prt_od={{path_dir}}

    local PW=$(pwd)
    local idir="$(dirname ${filename})"
    local tst_dir=${idir}/tst_dir
    local res=${idir}/res

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    cd "${prt_od}" || {
        l_00_echo_ret1 "${prt_od} not dir"
        return 1
    }

    #?----------------------------------------------------
    #?-------------------------------------
    l_00_echo_exec "source file://$filename"
    : >"${res}"

    # _XXX "${tst_dir}" &>>"${res}"

    #! stdin_tst
    # : >FILE
    #         echo "!STRING_AS_WORD!"
    #     cat >FILE <<EOF
    # third_str
    # fourth_str
    # EOF

    #     echo "FILE_ARG:"
    #     _XXX FILE &>>"${res}"

    #     echo "FILE_PIPE:"
    #     cat FILE | _XXX &>>"${res}"

    #     echo "HERE_DOC:"
    #     _XXX <<EOF &>>"${res}"
    # first_str
    # second_str
    # EOF

    #     echo "HERE_STR:"
    #     _XXX <<<"here_str_::_fifth_str" &>>"${res}"

    #     l_03_ixod ${prt_od}/_XXX.d ":" a2 a3 <<EOF
    # first_str:xcdswa
    # second_str:eerfre
    # EOF

    #*--------

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

__XXX_RND_flow_1 "$@"
