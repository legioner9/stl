#!/usr/bin/env bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

_001_b0de1af_flow() {

    unset IFS

    local PW=$(pwd)

    # if ! command -v 001 >/dev/null; then
    #     l_00_echo_ret1 "TYPE_ERROR : 001"
    #     cd $PW
    #     return 1
    # fi

    local filename=${STL_D_PATH}/prc.d/boot_stl_fn.d/__dta/l_06_xds71/od.dd/002.od.d/001.d/.d/_tst/_flow_tst.sh
    local prt_od=${STL_D_PATH}/prc.d/boot_stl_fn.d/__dta/l_06_xds71/od.dd/002.od.d

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

    # 001 "${tst_dir}" &>>"${res}"

    #! stdin_tst
    #         echo "!STRING_AS_WORD!"
    # : >FILE
    #     cat >FILE <<EOF
    # third_str
    # fourth_str
    # EOF

    #     echo "FILE_ARG:"
    #     001 FILE &>>"${res}"

    #     echo "FILE_PIPE:"
    #     cat FILE | 001 &>>"${res}"

    #     echo "HERE_DOC:"
    #     001 <<EOF &>>"${res}"
    # first_str
    # second_str
    # EOF

    #     echo "HERE_STR:"
    #     001 <<<"here_str_::_fifth_str" &>>"${res}"

    #     l_04_ix7od ${prt_od}/001.d ":" a2 a3 <<EOF &>>"${res}"
    # first_str:xcdswa
    # second_str:eerfre
    # EOF

    #! check anum 001 sb_dr self :
    #*--------
    cd tst_dir_in || return 1

    rm -rf a.d
    mkdir a.d

    l_06_xds71 1 0 a.d start
    cat a.d/start.sth2zip_git.d/0.f &>>"${res}"
    rm -rf a.d
    #*--------

    #! rm abs_path
    # l_02_s2f "${STL_D_PATH}" '${STL_D_PATH}' "${res}"

    #! TREAT IF NEED [l]ast [e]mpty [s]tring "${res}"
    # l_01_les2f "${res}"

    #?-------------------------------------
    #?----------------------------------------------------

    cd "${PW}" || {
        l_00_echo_ret1 "${PW} not dir"
        return 1
    }

}

_001_b0de1af_flow "$@"
