#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}

l_00_info_p_r0() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local file_name=${STL_D_PATH}/prc.d/boot_stl_fn.d/${FNN}.sh

    if [[ "_e" == "$1" ]]; then
        vim ${file_name}
        return 0
    fi

    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} :: stdout \$1 like info with pause
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

    echo -e "${ECHO_QUES}$*${NRM}
${ECHO_INFO}ETR - continue, ^C - exit shell process${NRM}"
    read -r
    return 0
}
