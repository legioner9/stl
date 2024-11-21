#!/bin/bash

_stl() {

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
    fi

}
