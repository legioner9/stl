#!/bin/bash
# REPOBARE/_repo/stl/.d/.stl.lib.d/002_lib.stl_01.arb/_rm_name_prc_ram.sh
echo -e "${CYAN}--- _rm_name_prc_ram_rnd7_b9a3674() $* in file://${REPO_PATH}/stl/.d/.stl.lib.d/002_lib.stl_01.arb/_rm_name_prc_ram.sh ---${NORMAL}" #started functions

_rm_name_prc_ram_rnd7_b9a3674() {

    # HST :: gig command :: [ufl_stl0 1 1 _rm_name_prc_ram.sh in file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh] in file://${REPO_PATH}/stl/.d/.stl.lib.d/001_lib.stl_00.arb

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD

    local path_file="${REPO_PATH}/stl/.d/.stl.lib.d/002_lib.stl_01.arb/_rm_name_prc_ram.sh"
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

    [ -n "$1" ] || {
        l_00_echo_ret1 "in fs= file://$path_file , line=${LINENO}, ${FNN}() : \$1 NOT_DEFINE : ${hint} : return 1"
        return 1
    }

    #! get lib_name from args
    local lib_name="stl_01"
    local pre_lib="002_lib"
    local lib_name_dir_arb=${pre_lib}.${lib_name}.arb

    read -p "DO? : rm ${lib_name}_${1}.ram in ${path_dir} : ETR continue or ^C "

    rm -r ${STL_LIB_D_PATH}/${pre_lib}.${lib_name}.arb/${lib_name}_${1}.ram
    rm -r ${STL_DATA_D_PATH}/${pre_lib}.${lib_name}.arb/${lib_name}_${1}.ram

    #{{body_fn}}

    #! END BODY FN ---------------------------------------

    cd $PPWD
    return 0

}

_rm_name_prc_ram_rnd7_b9a3674 "$@"
