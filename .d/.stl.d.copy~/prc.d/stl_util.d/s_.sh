#!/bin/bash

s_() {

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
        return 0
    fi

    . ${HOME}/.stl.d/.stlrc

}
