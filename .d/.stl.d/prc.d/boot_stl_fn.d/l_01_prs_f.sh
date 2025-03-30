#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

l_01_prs_f() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local file_name=${STL_D_PATH}/prc.d/boot_stl_fn.d/${FNN}.sh

    if [[ "_e" == "$1" ]]; then
        vim ${file_name}
        return 0
    fi

    # l_00_echo_exec "${FNN}() $*"

    local path=
    local name_ext=
    local name_ext2=
    local name2_ext=
    if [[ "_e" == "$1" ]]; then
        vim ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_prs_f.sh
        return 0
    fi
    if [[ "_t" == "$1" ]]; then
        vim ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_prs_f.tst.d
        return 0
    fi
    if [ "$1" = "-h" ]; then
        path="/the/path/_foo.ext2.txt"
        echo -e "${BLUE}------------------------ 
MAIN: ${FUNCNAME} ::
TAGS:
path=/the/path/_foo.txt        
\$(l_1_prs_f -d $path)   : $(l_1_prs_f -d $path) 
\$(l_1_prs_f -ne $path)  : $(l_1_prs_f -ne $path)   
\$(l_1_prs_f -n $path)   : $(l_1_prs_f -n $path)   
\$(l_1_prs_f -n2 $path)  : $(l_1_prs_f -n2 $path)   
\$(l_1_prs_f -e $path)   : $(l_1_prs_f -e $path)   
\$(l_1_prs_f -e2 $path)  : $(l_1_prs_f -e2 $path) 
\$(l_1_prs_f -pr $path)  : $(l_1_prs_f -pr $path)   
\$(l_1_prs_f -po $path)  : $(l_1_prs_f -po $path)    
----------------------${NORMAL}"
        return 0
    else
        if [ $# -ne 2 ]; then
            echo "_prs_f() mast be 2 parameters : illegal number of parameters : return 1"
            return 1
        fi
        name_ext="${2##*/}"
        if [ "$1" = "-d" ]; then
            dirname "$2"
        else
            if [ "$1" = "-ne" ]; then
                echo "$name_ext"
            else
                if [ "$1" = "-n" ]; then
                    echo "${name_ext%.*}"
                else
                    if [ "$1" = "-n2" ]; then
                        name2_ext="${name_ext%.*}"
                        echo "${name2_ext%.*}"
                    else
                        if [ "$1" = "-e" ]; then
                            echo "${name_ext##*.}"
                        else
                            if [ "$1" = "-e2" ]; then
                                name_ext2="${name_ext%.*}"
                                echo "${name_ext2##*.}"
                            else
                                if [ "$1" = "-pr" ]; then
                                    echo "${name_ext:0:1}"
                                else
                                    if [ "$1" = "-po" ]; then
                                        echo "${name_ext:1}"
                                    else
                                        echo "$1: parameter mastby: -d -ne -n -n2 -e -e2 -pr -po : return 1" >&2
                                        return 1
                                    fi
                                fi
                            fi
                        fi
                    fi
                fi
            fi
        fi
    fi
}
