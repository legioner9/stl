#!/usr/bin/env bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

_l_04_d8td4f_RND_flow_1() {

    unset IFS

    if ! command -v l_04_d8td4f >/dev/null; then
        l_00_echo_ret1 "TYPE_ERROR : l_04_d8td4f"
        return 1
    fi

    local filename=${STL_D_PATH}/prc.d/boot_stl_fn.d/__tst/l_04_d8td4f/_flow_tst_v1.sh

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

    # l_04_d8td4f "${tst_dir}" &>>"${res}"
    #! rm abs_path
    # l_02_s2f "${STL_D_PATH}" '${STL_D_PATH}' "${res}"

    #! stdin_tst
    # : >FILE
    #         echo "!STRING_AS_WORD!"
    #     cat >FILE <<EOF
    # third_str
    # fourth_str
    # EOF

    #     echo "FILE_ARG:"
    #     l_04_d8td4f FILE &>>"${res}"

    #     echo "FILE_PIPE:"
    #     cat FILE | l_04_d8td4f &>>"${res}"

    #     echo "HERE_DOC:"
    #     l_04_d8td4f <<EOF &>>"${res}"
    # first_str
    # second_str
    # EOF

    #     echo "HERE_STR:"
    #     l_04_d8td4f <<<"here_str_::_fifth_str" &>>"${res}"

    rm result.file
    l_04_d8td4f tml.d.d @ result.file @ <<<"1"
    cat result.file
    echo
    : >res.d/result.file
    echo "3" | l_04_d8td4f tml.d.d @ result.file res.d
    cat res.d/result.file
    echo
    # rm result.file
    # l_04_d8td4f tml.d.d @ result.file @ <<<"2"
    # cat result.file
    # rm result.file
    # echo "3" | l_04_d8td4f tml.d.d @ result.file @
    # cat result.file
    # rm result.file

    # cat result.file

    #?-------------------------------------
    #?----------------------------------------------------

    cd "${PW}" || {
        l_00_echo_ret1 "${PW} not dir"
        return 1
    }

}

_l_04_d8td4f_RND_flow_1 "$@"
