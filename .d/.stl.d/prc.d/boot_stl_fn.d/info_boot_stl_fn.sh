#!/bin/bash

info_boot_stl_fn() {
    local FNN=${FUNCNAME[0]}
    echo -e "${BLUE}-------- $FNN: $* --------${NORMAL}"
}
