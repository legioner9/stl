#!/bin/bash

warn_boot_stl_fn() {
    local FNN=${FUNCNAME[0]}
    echo -e "${YELLOW}-------- $FNN: $* --------${NORMAL}"
}
