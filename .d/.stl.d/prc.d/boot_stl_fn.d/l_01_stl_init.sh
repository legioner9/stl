#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}

l_01_stl_init() { # source .stldrc

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local file_name=${STL_D_PATH}/prc.d/boot_stl_fn.d/${FNN}.sh

    if [[ "_e" == "$1" ]]; then
        vim ${file_name}
        return 0
    fi

    l_00_echo_exec "${FNN}() $*"
    
    l_00_echo_code "source ${STL_D_PATH}/.stldrc"
    source "${STL_D_PATH}/.stldrc"
}
