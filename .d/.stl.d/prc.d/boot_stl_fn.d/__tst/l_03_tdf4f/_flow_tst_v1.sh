#!/usr/bin/env bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

_l_03_tdf4f_RND_flow_1() {

    unset IFS

    if ! command -v l_03_tdf4f >/dev/null; then
        l_00_echo_ret1 "TYPE_ERROR : l_03_tdf4f"
        return 1
    fi

    local filename=${STL_D_PATH}/prc.d/boot_stl_fn.d/__tst/l_03_tdf4f/_flow_tst_v1.sh

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

    rm result.file
    l_03_tdf4f "001.tml.d" result.file @

    l_02_s2f '${HOME}' "${HOME}" result.file
    l_02_s2f "${STL_D_PATH}" '${STL_D_PATH}' result.file
    cat result.file

    # rm result.d/result.file
    # l_03_tdf4f "001.tml.d" result.file result.d

    # l_02_s2f '${HOME}' "${HOME}" result.file
    # l_02_s2f "${STL_D_PATH}" '${STL_D_PATH}' result.file
    # cat result.d/result.file

    # l_03_tdf4f "${tst_dir}" &>>"${res}"
    #! rm abs_path

    #! stdin_tst
    # : >FILE
    #         echo "!STRING_AS_WORD!"
    #     cat >FILE <<EOF
    # third_str
    # fourth_str
    # EOF

    #     echo "FILE_ARG:"
    #     l_03_tdf4f FILE &>>"${res}"

    #     echo "FILE_PIPE:"
    #     cat FILE | l_03_tdf4f &>>"${res}"

    #     echo "HERE_DOC:"
    #     l_03_tdf4f <<EOF &>>"${res}"
    # first_str
    # second_str
    # EOF

    #     echo "HERE_STR:"
    #     l_03_tdf4f <<<"here_str_::_fifth_str" &>>"${res}"

    #?-------------------------------------
    #?----------------------------------------------------

    cd "${PW}" || {
        l_00_echo_ret1 "${PW} not dir"
        return 1
    }

}

_l_03_tdf4f_RND_flow_1 "$@"
