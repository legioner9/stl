#!/bin/bash

source_boot_stl_fn() { # wrap [source $1]

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    echo "$FNN() $*"
    echo -e "${CYAN}--- $FNN() $* ---${NORMAL}"
    # cd $PPWD || return 1
    # return 0

    local s_file="$1"

    if [ -f ${s_file} ]; then

        :

    else
        echo "NOT_FILE '' :: return 1" >&2

    fi

    cd $PPWD || return 1
    return 0

}
