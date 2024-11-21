#!/bin/bash

err_boot_stl_fn() {
    local FNN=${FUNCNAME[0]}
    echo -e "${RED}-------- $FNN: $* --------${NORMAL}" >&2
}
