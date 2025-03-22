#!/bin/bash

l2_arb_tst() { # \$1 dir with testable arb

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD

    echo "$FNN() $*"

    #! IFS to default value
    unset IFS

    if [[ -d "$1" ]]; then
        cd "$1" || {
            echo "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: FAIL_EXEC :: 'cd $1' :: return 1" >&2
            return 1
        }
    else
        echo "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: \$1='$1' is not dir" >&2
        return 1
    fi

    local dir=
    local item=
    local item_path=
    local err_flag=0

    dir=$(pwd)

    for item in *; do
        # echo "\$item=$item"
        [[ "_" == ${item:0:1} ]] && continue
        # /lib.0stl.arb/_XXX_YYY.ram/.grot/_tst/_exec.tst
        item_path=$dir/$item
        item_name="${item%.*}"
        item_ext="${item##*.}"
        file_path=${item_path}/.grot/_tst/exec.tst

        echo "\$file_path= file://$file_path"

        if [ -f "$file_path" ]; then
            # echo ". $file_path"
            . "$file_path" || {
                echo "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: EXEC_FAIL '. file://$file_path' :: err_flag=1" >&2
                cd "$PPWD" || echo "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
                err_flag=1
            }
        fi
    done

    if [[ 1 -eq ${err_flag} ]]; then
        echo "in lib_dir= file://$1 FAIL_TST" >&2
        cd "$PPWD" || echo "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
        return 1
    else
        echo "in lib_dir= file://$1 TRUE_TST"
        cd "$PPWD" || echo "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
        return 0
    fi

}