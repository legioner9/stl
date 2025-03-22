#!/bin/bash

l2_arb_up() { # \$1 dir with executable arb

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
    local item=$@

    for item in *; do
        # echo "\$item=$item"
        # lib.0stl.arb/_XXX_YYY.ram/.grot/_XXX_YYY.sh
        item_path=$dir/$item
        item_name="${item%.*}"
        item_ext="${item##*.}"
        file_path=${item_path}/.grot/${item_name}.sh

        # echo "\$file_path= file://$file_path"

        if [ -f "$file_path" ] && [ "${item_name:0:1}" != "_" ] && [ "${item##*.}" == "ram" ]; then
            # echo ". $file_path"
            echo -e "${GREEN}\$file_path = '$file_path'${NORMAL}"
            . "$file_path" || {
                echo "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: EXEC_FAIL '. file://$file_path' :: return 1" >&2
                cd "$PPWD" || echo "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
                return 1
            }
        fi
    done

    cd "$PPWD" || echo "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
    return 0
}