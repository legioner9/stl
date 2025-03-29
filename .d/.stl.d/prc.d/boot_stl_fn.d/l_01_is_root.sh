#!/bin/bash

l_01_is_root() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local file_name=${STL_D_PATH}/prc.d/boot_stl_fn.d/${FNN}.sh

    l_00_echo_exec "${FNN}() $*"

    local arg1="$1"

    if [[ -z "${arg1}" ]]; then
        echo "in fs= file://${STL_D_PATH}/.stldrc  , line=${LINENO} : '$FNN() $*' : \$1 NOT_DEFINE : return 1" 1>&2
        return 1
    fi
    if [[ "/" == "${arg1:0:1}" ]]; then
        return 0
    else
        return 1
    fi
}