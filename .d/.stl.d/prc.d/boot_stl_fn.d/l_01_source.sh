#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

l_01_source() { # source $1

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local file_name=${STL_D_PATH}/prc.d/boot_stl_fn.d/${FNN}.sh

    if [[ "_e" == "$1" ]]; then
        vim ${file_name}
        return 0
    fi

    l_00_echo_exec "${FNN}() $*"

    [ -n "$1" ] || {
        l_00_echo_ret1 -e "exec:'${FNN} $*' in file://${STL_D_PATH}/prc.d/${FNN} , line=${LINENO} 
expl: \$1 EMPTY
evnt: FAIL_EXEC :: '[ -n \"$1\" ]'
actn: return 1" >&2
        cd "${PWD}" || l_00_echo_err "'${FNN} $*' in file://${STL_D_PATH}/prc.d/${FNN} , line=${LINENO} :: FAIL_EXEC :: 'cd \"${PWD}\"' :: return 1" >&2
        return 1
    }

    [ -f "$1" ]
}
