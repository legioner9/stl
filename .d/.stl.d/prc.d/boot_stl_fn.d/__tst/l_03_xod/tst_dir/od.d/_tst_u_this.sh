#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# ${STL_D_PATH}/prc.d/boot_stl_fn.d/__tst/l_03_ixod/tst_dir/_dir_/_ord_tst_dir_for_NNN.sh
# /home/st/REPOBARE/_repo/stl/.d/.stl.d/prc.d/boot_stl_fn.d/__tst/l_03_xod/tst_dir/od.d/_tst_u_this.sh
echo -e "${CYAN}--- _ord_tst_dir_for_l_xx_rnd7_9caabeb() $* in file://${STL_D_PATH}/prc.d/boot_stl_fn.d/__tst/l_03_xod/tst_dir/od.d/_tst_u_this.sh ---${NORMAL}" #started functions

_ord_tst_dir_for_NNN_rnd7_95gabyyeb() {

    # HST :: gig command :: [ufl_stl0 1 1 _ord_tst_dir_for_l_xx.sh in file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh] in file://${REPO_PATH}/stl/.d/.stl.d/prc.d/boot_stl_fn.d/__tst

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD

    local path_file="${STL_D_PATH}/prc.d/boot_stl_fn.d/__tst/l_03_xod/tst_dir/od.d/_tst_u_this.sh"
    local path_dir="$(dirname "$path_file")"

    # echo -e "${CYAN}--- $FNN() $* in file://${path_file}---${NORMAL}" #started functions

    cd ${path_dir} || {
        # hint="\$1: \$2: "
        echo "in fs= file://$path_file , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${path_dir}' : ${hint} : return 1"
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

    local od_ddr=${path_dir}

    local ddr_num="$1"

    local rnd=$(l_01_rnd2e)

    cd ${od_ddr} || return 1

    # l_01_is_yes "start _tst ALL od.d in ${od_ddr}?" && {

    local item=
    local item_pth=
    local ret1=0

    for item in $(l_02_dd2e ${od_ddr}); do
        item_pth=${od_ddr}/${item}
        l_00_echo_info "'\$item_pth = file://$item_pth '"
        [[ -f ${item_pth}/.d/_tst/exec_n.tst ]] && {
            . ${item_pth}/.d/_tst/exec_n.tst || {
                l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FALSE '. file://${item_pth}/.d/_tst/exec_n.tst ' ret1=1"
                cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
                ret1=1
            }
        }
    done

    [[ 1 -eq ${ret1} ]] && {
        l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: ANY _tst EXEC_FALSE in ' file://${od_ddr} ' ret1=1"
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 1
    }

    # }
    #{{body_fn}}

    #! END BODY FN ---------------------------------------

    cd $PPWD
    return 0

}

_ord_tst_dir_for_NNN_rnd7_95gabyyeb "$@"
