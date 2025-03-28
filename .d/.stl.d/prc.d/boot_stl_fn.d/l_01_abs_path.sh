#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

l_01_abs_path() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local file_name=${STL_D_PATH}/prc.d/boot_stl_fn.d/${FNN}.sh

    # l_00_echo_exec "${FNN}() $*"

    if [[ -z "$2" ]]; then
        l_00_echo_ret1 "in fs= file://${STL_D_PATH}/.stldrc  , line=${LINENO} : '$FNN() $*' : \$2 NOT_DEFINE , hint : '$3' : return 1" 1>&2
        return 1
    fi
    local dpwd="$1"
    if ! [[ "/" == "${dpwd:0:1}" ]]; then
        l_00_echo_ret1 "in fs= file://${STL_D_PATH}/.stldrc  , line=${LINENO} : '$FNN() $*' : '${dpwd}' NOT_ROOT , hint : '$3' : return 1" 1>&2
        return 1
    fi
    eval local arg2=\${$2}
    if [ "@" == "$arg2" ]; then
        echo ${dpwd}
        return 0
    fi
    if [[ -z "$arg2" ]]; then
        l_00_echo_ret1 "in fs= file://${STL_D_PATH}/.stldrc  , line=${LINENO} : '$FNN() $*' : \$\$2 => '\$$2' NOT_DEFINE , hint : '$3' : return 1" 1>&2
        return 1
    fi

    # [[ "/" == "${arg1:0:1}" ]]
    if [[ "/" == "${arg2:0:1}" ]]; then
        echo ${arg2}
    else
        echo ${dpwd}/${arg2}
    fi

}
