#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

l_02_edit() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local file_name=${STL_D_PATH}/prc.d/boot_stl_fn.d/${FNN}.sh

    l_00_echo_exec "${FNN}() $*"

    if [[ -n "$1" ]]; then
        echo -e "${ULINE}THIS_ARG1=$1${NORMAL}"
        ptr_path="$1"
    else
        echo -e "${ULINE}THIS_ARG1=$PPWD${NORMAL}"
        ptr_path="$PPWD"

    fi

    ptr_path=$(l_1_abs_path $PPWD "ptr_path")

    [ -e $ptr_path ] || {
        echo "in fs= file://${STL_D_PATH}/.stldrc  , line=${LINENO} : '$FNN() $*' :, EXEC: edit_boot_stl_fn $@ : NOT_ENTETY : 'file://$ptr_path' : return 1" >&2
        cd $PPWD
        return 1
    }
    if type "codium"; then
        echo -e "${ULINE} codium $ptr_path${NORMAL}"
        codium $2 "$ptr_path"
    else
        if type "code"; then
            echo -e "${ULINE} code $ptr_path${NORMAL}"
            code $2 "$ptr_path"
        else
            if type "gvim" && type "mate-terminal" && [ -f $ptr_path ]; then
                echo -e "${ULINE}mate-terminal -- sh -c gvim -v +$2 $ptr_path${NORMAL}"
                mate-terminal -- sh -c "gvim -v +$2 $ptr_path"
            else
                if type "mc" && type "mate-terminal" && [ -f $ptr_path ]; then
                    echo -e "${ULINE}mate-terminal -- sh -c mc -e $ptr_path${NORMAL}"
                    mate-terminal -- sh -c "mc -e $ptr_path"
                else
                    if type "mc" && type "mate-terminal" && [ -d $ptr_path ]; then
                        echo -e "${ULINE}mate-terminal -- sh -c mc $ptr_path${NORMAL}"
                        mate-terminal -- sh -c "mc $ptr_path"
                    else
                        if type "vim"; then
                            echo -e "${ULINE}vim $ptr_path${NORMAL}"
                            vim "$ptr_path"
                        else
                            echo "editors: codium, code, gvim, vim, mc not enabled" >&2
                        fi
                    fi
                fi
            fi
        fi
    fi
}
