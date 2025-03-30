#!/bin/bash

l_00_all_name_fn2e() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local file_name=${STL_D_PATH}/prc.d/boot_stl_fn.d/${FNN}.sh

    if [[ "_e" == "$1" ]]; then
        vim ${file_name}
        return 0
    fi

    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} :: all name function in shell
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

    declare -F -p | cut -d " " -f 3
}
