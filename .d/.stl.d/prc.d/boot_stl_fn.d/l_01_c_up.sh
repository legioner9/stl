#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

l_01_c_up() { # \$1 dir with execuable files

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local file_name=${STL_D_PATH}/prc.d/boot_stl_fn.d/${FNN}.sh

    l_00_echo_exec "${FNN}() $*"

    #! IFS to default value
    unset IFS

    if [[ -d "$1" ]]; then
        cd "$1" || {
            l_00_echo_ret1 "'$FNN() $*' in file://${STL_D_PATH}/.stldrc :: FAIL_EXEC :: 'cd $1' :: return 1" >&2
            cd "$PPWD" || l_00_echo_err "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
            return 1
        }
    else
        l_00_echo_ret1 "'$FNN() $*' in file://${STL_D_PATH}/.stldrc :: \$1='$1' is not dir" >&2
        cd "$PPWD" || l_00_echo_err "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
        return 1
    fi

    local dir=
    local item=
    local item_path=

    dir=$(pwd)

    for item in *; do

        item_path=$dir/$item

        if [ -f "$item_path" ] && [ "${item:0:1}" != "_" ] && [ "${item##*.}" == "sh" ]; then
            . "$item_path" || {
                l_00_echo_ret1 "'$FNN() $*' in file://${STL_D_PATH}/.stldrc :: EXEC_FAIL '. file://$item_path' :: return 1" >&2
                cd "$PPWD" || l_00_echo_err "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
                return 1
            }

        elif [ -d "$item_path" ] && [ "${item:0:1}" != "_" ]; then
            l1_c_up "$item_path" || {
                l_00_echo_ret1 "'$FNN() $*' in file://${STL_D_PATH}/.stldrc :: EXEC_FAIL 'dotstldrc_c_up file://$item_path' :: return 1" >&2
                cd "$PPWD" || l_00_echo_err "$FNN() $* in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
                return 1
            }
        fi

    done

    cd "$PPWD" || l_00_echo_err "'$FNN() $* 'in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
    return 0
}
