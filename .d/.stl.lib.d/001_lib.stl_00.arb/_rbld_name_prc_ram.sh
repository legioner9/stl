#!/bin/bash

echo -e "${CYAN}--- _rbld_name_prc_ram_rnd7_1359f86() $* in file://${REPO_PATH}/stl/.d/.stl.lib.d/001_lib.stl_00.arb/_rbld_name_prc_ram.sh ---${NORMAL}" #started functions

_rbld_name_prc_ram_rnd7_1359f86() {

    # HST :: gig command :: [ufl_stl0 1 1 _rbld_name_prc_ram.sh in file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh] in file://${REPO_PATH}/stl/.d/.stl.lib.d/001_lib.stl_00.arb

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD

    local path_file="${REPO_PATH}/stl/.d/.stl.lib.d/001_lib.stl_00.arb/_rbld_name_prc_ram.sh"
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
    local lib_name="stl_00"
    local pre_lib="001_lib"
    local lib_name_dir_arb=${pre_lib}.${lib_name}.arb

    # read -p "DO? : _rbld ${lib_name}_${1}.ram in ${path_dir} : ETR continue or ^C "

    local file_prc=${STL_LIB_D_PATH}/${pre_lib}.${lib_name}.arb/${1}.ram/.grot/${1}.prc
    [[ -f "$file_prc" ]] || {
        l_00_echo_ret1 "'$FNN() $*' in file://${path_file} , line=${LINENO} :: NOT_FILE ' file://$file_prc ' that mastbe stl_00_XXX return 1"
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 1
    }

    # l_00_echo_info "'\$file_prc = $file_prc'"

    local name_function=$(l_01_prs_f -n "$file_prc")

    # l_00_echo_info "'\$name_function = $name_function'"

    # type dotstldrc_wrap_prc_inner

    l_00_echo_code "alias ${name_function}=\"l_03_wrap_prc $file_prc\""

    eval "alias ${name_function}=\"l_03_wrap_prc $file_prc\""

    # eval "export ${name_function}"

    eval "type ${name_function}"

    #{{body_fn}}

    #! END BODY FN ---------------------------------------

    cd $PPWD
    return 0

}

_rbld_name_prc_ram_rnd7_1359f86 "$@"
