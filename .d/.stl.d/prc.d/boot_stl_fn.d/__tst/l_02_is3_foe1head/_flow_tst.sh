#!/usr/bin/env bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

_l_02_is3_foe1head_b103f2e_flow() {

    local PW=$(pwd)

    if ! command -v l_02_is3_foe1head >/dev/null; then
        l_00_echo_ret1 "TYPE_ERROR : l_02_is3_foe1head"
        cd $PW
        return 1
    fi

    local filename=${STL_D_PATH}/prc.d/boot_stl_fn.d/__tst/l_02_is3_foe1head/_flow_tst.sh

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

    local ext_foe_dir=${STL_D_PATH}/prc.d/boot_stl_fn.d/__ext/_foe
    local rpo_foe_dir=${HOME}/tmp/tmp_foe_tst
    mkdir -p ${rpo_foe_dir}
    rm -rf ${rpo_foe_dir}/foe_tst_head

    l_02_unzip2 ${ext_foe_dir}/at_head.zip ${rpo_foe_dir} >/dev/null
    # l_02_is3_foe1head ${rpo_foe_dir}/foe_tst_head
    l_01_xs2ret "l_02_is3_foe1head ${rpo_foe_dir}/foe_tst_head" &>>"${res}"

    rm -rf ${rpo_foe_dir}/foe_tst_head

    l_02_unzip2 ${ext_foe_dir}/not_at_head.zip ${rpo_foe_dir} >/dev/null
    # l_02_is3_foe1head ${rpo_foe_dir}/foe_tst_head
    l_01_xs2ret "l_02_is3_foe1head ${rpo_foe_dir}/foe_tst_head" &>>"${res}"
    l_01_xs2ret "l_02_is3_foe1head ${rpo_foe_dir}/foe_tst_headX" &>>"${res}"

    # l_02_is3_foe1head "${tst_dir}" &>>"${res}"
    #! rm abs_path
    # l_02_s2f "${STL_D_PATH}" '${STL_D_PATH}' "${res}"

    #?-------------------------------------
    #?----------------------------------------------------

    cd "${PW}" || {
        l_00_echo_ret1 "${PW} not dir"
        return 1
    }

}

_l_02_is3_foe1head_b103f2e_flow "$@"
