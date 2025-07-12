#!/usr/bin/env bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

_003_ffbe79c_flow_1() {

    unset IFS

    # if ! command -v 003 >/dev/null; then
    #     l_00_echo_ret1 "TYPE_ERROR : 003"
    #     return 1
    # fi

    local filename=${STL_D_PATH}/prc.d/boot_stl_fn.d/__dta/l_06_xds71/od.dd/002.od.d/003.d/.d/_tst/_flow_tst_v1.sh
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
    : >"${res}"

    # 003 "${tst_dir}" &>>"${res}"

    #! stdin_tst
    # : >FILE
    #         echo "!STRING_AS_WORD!"
    #     cat >FILE <<EOF
    # third_str
    # fourth_str
    # EOF

    #     echo "FILE_ARG:"
    #     003 FILE &>>"${res}"

    #     echo "FILE_PIPE:"
    #     cat FILE | 003 &>>"${res}"

    #     echo "HERE_DOC:"
    #     003 <<EOF &>>"${res}"
    # first_str
    # second_str
    # EOF

    #     echo "HERE_STR:"
    #     003 <<<"here_str_::_fifth_str" &>>"${res}"

    #     l_06_xds71 ${prt_od}/003.d ":" a2 a3 <<EOF
    # first_str:xcdswa
    # second_str:eerfre
    # EOF
    #! check anum 003 sb_dr self :
    #*--------
    cd tst_dir_in || return 1
    rm -rf opi.d.d

    unzip opi.d.d.zip
    l_06_xds71 1 2 opi.d.d/r1.sth2zip_git.d >/dev/null && echo 0 || echo 1
    l_06_xds71 1 2 opi.d.d/r3.sth2zip_git.d >/dev/null && echo 0 || echo 1
    rm -rf opi.d.d
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

_003_ffbe79c_flow_1 "$@"
