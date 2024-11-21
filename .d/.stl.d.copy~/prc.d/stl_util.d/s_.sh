#!/bin/bash

s_() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    echo "$FNN() $*"

    # cd "$PPWD" || return 1
    # return 0

    if [[ "-h" == "$1" ]]; then
        echo -e "
        # STL help
        ## Files
        entry point STL:
            file://${HOME}/.stl.d/.stlrc 
        opus STL lib:
            file://${HOME}/
        opus STL boot:
            file://${HOME}/.stl.d/data.d/opus.d/boot.opus/cntx.res.md


"
        cd "$PPWD" || return 1
        return 0
    fi

    . ${HOME}/.stl.d/.stlrc

    cd "$PPWD" || return 1
    return 0

}
