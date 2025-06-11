#!/bin/bash

echo -e "${CYAN}--- _ord_prc_fl_for_l_xx_rnd7_5a6e6f0() $* in file://${REPO_PATH}/stl/.d/.stl.d/prc.d/boot_stl_fn.d/__doc/_ord_doc_fl_for_l_xx.sh ---${NORMAL}" #started functions

_ord_prc_fl_for_l_xx_rnd7_5a6e6f0() {

    # HST :: gig command :: [ufl_stl0 1 1 _ord_prc_fl_for_l_xx.sh in file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh] in file://${REPO_PATH}/stl/.d/.stl.d/prc.d/boot_stl_fn.d/__prc

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD

    local path_file="${REPO_PATH}/stl/.d/.stl.d/prc.d/boot_stl_fn.d/__doc/_ord_doc_fl_for_l_xx.sh"
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

    #{{body_fn}}

    echo "START BODY FN : ${FNN}() $*"

    [[ -n "$1" ]] || {
        l_00_echo_ret1 "\$1 EMPTY {fn_name like 'l_04_eee'} :: return 1"
        return 1
    }

    local tst_dir=${STL_D_PATH}/prc.d/boot_stl_fn.d/__doc

    local fn_name="$1"

    local rnd=$(l_01_rnd2e)

    cd ${tst_dir} || return 1

    l_01_is_yes "ord ${fn_name} in ${tst_dir}?" && {

        echo "l_03_sd2d _XXX ${fn_name} file://${tst_dir}/_XXX"
        l_03_sd2d _XXX ${fn_name} ${tst_dir}/_XXX || {
            l_00_echo_ret1 "in fs= file://$path_file , line=${LINENO}, ${FNN}() : FAIL_EXEC 'l_03_sd2d XXX ${fn_name} ${tst_dir}/_XXX' : ${hint} : return 1"
            return 1
        }
        echo "l_03_s2Ad RND ${rnd:0:7} file://${tst_dir}/${fn_name}"
        l_03_s2Ad  ${rnd:0:7} RND ${tst_dir}/${fn_name} || {
            l_00_echo_ret1 "in fs= file://$path_file , line=${LINENO}, ${FNN}() : FAIL_EXEC 'l_03_s2Ad XXX ${fn_name} ${tst_dir}/_XXX' : ${hint} : return 1"
            return 1
        }
    }

    #! END BODY FN ---------------------------------------

    cd $PPWD
    return 0

}

_ord_prc_fl_for_l_xx_rnd7_5a6e6f0 "$@"
