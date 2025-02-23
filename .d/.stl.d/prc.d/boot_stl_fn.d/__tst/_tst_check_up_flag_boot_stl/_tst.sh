#!/bin/bash

echo -e "${CYAN}--- _tst_check_up_flag_boot_stl_rnd7_cdb38af() $* in file://${HOME}/.stl.d/prc.d/comm.sh.d/__tst/_tst_check_up_flag_boot_stl/_tst.sh ---${NORMAL}" #started functions

_tst_check_up_flag_boot_stl_rnd7_cdb38af() {

    # gig from file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD
    local path_file="${HOME}/.stl.d/prc.d/comm.sh.d/__tst/_tst_check_up_flag_boot_stl/_tst.sh"
    local path_dir="$(dirname "$path_file")"

    # echo -e "${CYAN}--- $FNN() $* in file://${path_file}---${NORMAL}" #started functions

    cd ${path_dir} || {
        # hint="\$1: \$2: "
        echo "in fs= file://$path_file , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${path_dir}' : ${hint} : return 1" >&2
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

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} less more "in fs= file://${path_file} , line=${LINENO}, ${FNN}() : ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    # local _ARGS_=("$@")
    # _parr3e _ARGS_

    #{{ptr_path}}

    #! START BODY FN ---------------------------------------

    echo "START BODY FN : ${FNN}() $*"

    local tst_dr=${HOME}/.stl.d/prc.d/comm.sh.d/__tst/_tst_check_up_flag_boot_stl/_tst.d

    local sh_fl=${HOME}/.stl.d/prc.d/comm.sh.d/up_flag_boot_stl.sh

    . ${sh_fl} || {
        echo "EXEC_FAIL '. file://${sh_fl}' :: return 1" >&2
        cd $PPWD
        return 1
    }

    cp -f ${tst_dr}/init.f ${tst_dr}/file.flag

    local v_flag=

    up_flag_boot_stl ${tst_dr}/file.flag v_flag

    echo -e "${GREEN}\$v_flag = '$v_flag'${NORMAL}"

    #{{body_fn}}

    #! END BODY FN ---------------------------------------

    cd $PPWD
    return 0

}

_tst_check_up_flag_boot_stl_rnd7_cdb38af "$@"
