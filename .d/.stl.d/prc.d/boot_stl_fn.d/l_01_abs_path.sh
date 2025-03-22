#!/bin/bash

l_01_abs_path() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD

    if [[ -z "$2" ]]; then
        echo "in fs= file://${STL_D_PATH}/.stldrc  , line=${LINENO} : '$FNN() $*' : \$2 NOT_DEFINE , hint : '$3' : return 1" 1>&2
        return 1
    fi
    local dpwd="$1"
    if ! [[ "/" == "${dpwd:0:1}" ]]; then
        echo "in fs= file://${STL_D_PATH}/.stldrc  , line=${LINENO} : '$FNN() $*' : '${dpwd}' NOT_ROOT , hint : '$3' : return 1" 1>&2
        return 1
    fi
    eval local arg2=\${$2}
    if [ "@" == "$arg2" ]; then
        echo ${dpwd}
        return 0
    fi
    if [[ -z "$arg2" ]]; then
        echo "in fs= file://${STL_D_PATH}/.stldrc  , line=${LINENO} : '$FNN() $*' : \$\$2 => '\$$2' NOT_DEFINE , hint : '$3' : return 1" 1>&2
        return 1
    fi

    # [[ "/" == "${arg1:0:1}" ]]
    if [[ "/" == "${arg2:0:1}" ]]; then
        echo ${arg2}
    else
        echo ${dpwd}/${arg2}
    fi

}
