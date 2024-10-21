#!/bin/bash

echo -e "${CYAN}--- stl.boot_rnd7_fccf426() $* in file://${HOME}/.stl.d/stl.boot.d/stl.boot.sh ---${NORMAL}" #started functions

stl_boot_sh() {

    # gig from file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD
    local path_file="${HOME}/.stl.d/stl.boot.d/stl.boot.sh"
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

    boot_stl_c_up() { 

        if [[ -d "$1" ]]; then
            cd $1
        else
            echo "in fs= file://$path_file , line=${LINENO}, ${FUNCNAME[0]} () '$1' is not dir :: return 1" >&2
            return 1
        fi

        local dir
        dir=$(pwd)

        for item in *; do

            local item_path=$dir/$item

            if [ -f "$item_path" ] && [ "${item:0:1}" != "_" ] && [ "${item##*.}" = sh ]; then

                if ! . "$item_path"; then
                    hint="\$1: \$2: "
                    echo "in fs=file:// , line=${LINENO}, ${FNN}() : EXEC_FAIL : '. file://$item_path' : ${hint} : return 1" >&2
                    return 1
                fi

            elif
                [ -d "$item_path" ] && [ "${item:0:1}" != "_" ]
            then

                boot_stl_c_up "$item_path"

            fi

        done
    }

    # up to memery 
    boot_stl_c_up ${HOME}/.stl.d/stl.boot.d/stl.boot.sh.d

    #{{body_fn}}

    #! END BODY FN ---------------------------------------

    cd $PPWD
    return 0

}

stl_boot_sh "$@"
