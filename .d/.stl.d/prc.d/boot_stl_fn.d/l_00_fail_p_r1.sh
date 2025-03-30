#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}

# nuntius lat. - весть

l_00_fail_p_r1() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local file_name=${STL_D_PATH}/prc.d/boot_stl_fn.d/${FNN}.sh

    if [[ "_e" == "$1" ]]; then
        vim ${file_name}
        return 0
    fi

        if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} :: stdout \$1 like return 1 with pause
TAGS:
\$1 
[, \$2]
CNTL: 
    -h : help
    _e : _edit body      : vim ${sh_file}
EXAM: 
    ${FNN}
"
        return 0
    fi

    echo -e "${ECHO_RET1}$*${NRM}
${ECHO_ERR}ETR - continue with 'return 1', ^C - exit shell process${NRM}"
    read -r
    return 1
}
