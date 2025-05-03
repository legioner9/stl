#!/bin/bash

echo -e "${CYAN}--- _regig_tst_and_work_rnd7_500c49d() $* in file://${REPO_PATH}/stl/.d/.stl.lib.d/001_lib.stl_00.arb/_regig_tst_and_work.sh ---${NORMAL}" #started functions

_regig_tst_and_work_rnd7_500c49d() {

    # HST :: gig command :: [ufl_stl0 1 1 _regig_tst_and_work.sh in file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh] in file://${REPO_PATH}/stl/.d/.stl.lib.d/001_lib.stl_00.arb

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD

    local path_file="${REPO_PATH}/stl/.d/.stl.lib.d/001_lib.stl_00.arb/_regig_tst_and_work.sh"
    local path_dir="$(dirname "$path_file")"

    # echo -e "${CYAN}--- $FNN() $* in file://${path_file}---${NORMAL}" #started functions

    cd ${path_dir} || {
        # hint="\$1: \$2: "
        _st_exit "in fs= file://$path_file , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${path_dir}' : ${hint} : return 1"
        return 1
    }

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: 
TAGS: @
ARGS: \$1
EXAM: 
EXEC: 
CNTL: 
    _go  : _edit ${path_file}
RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERROR: ( return 1 | ... )
    ${FNN} 
${NORMAL}"
    fi

    if [[ "_go" == "$1" ]]; then
        _edit "${path_file}"

        cd $PPWD
        return 0
    fi

    # local api_dr=
    #{{api_arg}}

    #* check _isn_from
    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${path_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     cd $PPWD
    #     return 1
    # fi

    #* path -> u@path
    #! ptr_path
    # local ptr_path_1="$1"
    # ptr_path_1="$(_abs_path "${PPWD}" "ptr_path_1")"

    #* check arg from arg_arr
    # [[ "${arg_arr[*]}" == *$arg* ]]

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* define local variables

    #! START BODY FN ---------------------------------------

    echo "START BODY FN : ${FNN}() $*"

    l_03_wrap_prc _rbld

    . '/home/st/REPOBARE/_repo/stl/.d/.stl.lib.d/001_lib.stl_00.arb/_rm_name_prc_ram.sh' tst
    . '/home/st/REPOBARE/_repo/stl/.d/.stl.lib.d/001_lib.stl_00.arb/_ord_name_prc_ram.sh' tst
    . '/home/st/REPOBARE/_repo/stl/.d/.stl.lib.d/001_lib.stl_00.arb/_rbld_name_prc_ram.sh' stl_00_tst

    l_00_echo_code "'stl_00_tst'"
    stl_00_tst
    read -p "see and Etr"
    l_00_echo_code "'stl_00_tst -h'"
    stl_00_tst -h
    read -p "see and Etr"
    l_00_echo_code "'stl_00_tst _go'"
    stl_00_tst _go
    read -p "see and Etr"
    l_00_echo_code "'stl_00_tst _tst'"
    stl_00_tst _tst
    read -p "see and Etr"
    l_00_echo_code "'stl_00_tst _tst_e'"
    stl_00_tst _tst_e
    read -p "see and Etr"
    l_00_echo_code "'stl_00_tst _flow'"
    stl_00_tst _flow
    read -p "see and Etr"
    l_00_echo_code "'stl_00_tst _flow_1'"
    stl_00_tst _flow_1
    read -p "see and Etr"
    l_00_echo_code "'stl_00_tst _rbld'"
    stl_00_tst _rbld
    read -p "see and Etr"
    l_00_echo_code "'stl_00_tst _hie_m'"
    stl_00_tst _hie_m
    read -p "see and Etr"
    l_00_echo_code "'stl_00_tst _hie_e'"
    stl_00_tst _hie_e
    read -p "see and Etr"
    l_00_echo_code "'stl_00_tst _lib_d_e'"
    stl_00_tst _lib_d_e
    read -p "see and Etr"
    l_00_echo_code "'stl_00_tst _depo_d_e'"
    stl_00_tst _depo_d_e
    read -p "see and Etr"
    l_00_echo_code "'stl_00_tst _opt_d_e'"
    stl_00_tst _opt_d_e
    read -p "see and Etr"
    l_00_echo_code "'stl_00_tst _data_d_e'"
    stl_00_tst _data_d_e
    read -p "see and Etr"

    #{{body_fn}}

    #! END BODY FN ---------------------------------------

    cd $PPWD
    return 0

}

_regig_tst_and_work_rnd7_500c49d "$@"
