#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_02_pa2mm() {

    #! THIS FILE WILL BE CREATED: `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_02_pa2mm`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands:

    #! l_02_pa2mm _e_prc to edit/change 'fn block',
    #! l_02_pa2mm _rbld to rebuild fn with changed 'fn block'
    #! l_02_pa2mm _e_xxx` to edit 'init block'

    #* START 'init block' from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst
    local ext_dr=${fn_dr}/__ext
    local ext_dt_dr=${ext_dr}/_dt
    local ext_dr_prc=${ext_dr}/_prc

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 0
    fi

    if [[ "_flow" == "$1" ]]; then
        . ${tst_nm_dr}/_flow_tst.sh || {
            cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
            return 1
        }
        cd "$PPWD" || l_00_echo_err "in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue"
        return 0
    fi

    if [[ "_flow_1" == "$1" ]]; then
        . ${tst_nm_dr}/_flow_tst_v1.sh || {
            cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
            return 1
        }
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_02_pa2mm.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 0
    fi

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_02_pa2mm.prc ------------------
    #[[fn_body]]
#? for copy to help block

if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: 
TAGS:
\$1 
[, \$2]
FLOW:   [if 
            -]
        
# HIE ${FNN} 
## CAUSA:
ПРИЧИНА создания:
## FORMULA:
СХЕМА решения:
## DOGMA:
РЕШЕНИЕ задачи:
### TST [as FLOW_1]
### FLOW_1
    - cd tst_dir
    - call with args: [] -> [true answer in res_file]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : . ${tst_nm_dr}/${FNN}/exec.tst
    _flow       : tst _flow     : . ${tst_nm_dr}/${FNN}/_flow_tst.sh
    _flow_1     : tst _flow_1   : . ${tst_nm_dr}/${FNN}/_flow_tst_v1.sh

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/${FNN}

RETU: (any {0} | if: [...] {0} | if [...] {1} | result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
EXAM:   ${FNN} [, [, ]]
"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 0
fi

#! stdout fn introduction
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

#     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
#     local di=
#     if [ -n "$N" ]; then
#         if [ "$N" == "_i" ]; then
#             di=1
#         else
#             di=0
#         fi
#     else
#         di=0
#     fi

#* greeting
# [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

#* errno
# cmd arg
# errno=$?
# return ${errno}

#* rename args

#* check cntl

#* inname cntl

#* define local variables

# _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
# _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
# _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

# hint="\$1: \$2: "
# if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
#     cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
#     return 1
# fi

# [[ -n "$1" ]] || {
#     l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EMPTY_ARG '\$1' return 1"
#     cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
#     return 1
# }

# while IFS=$'\n' read -r line; do
#     :
# done <"${1:-/dev/stdin}"

#! ptr_path
# local ptr_path="$1"
# ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

local ARGS=("$@")

local ARGS0="$1"
local ARGS1="$2"
local ARGS2="$3"
local ARGS3="$4"

[[ -n "$4" ]] || {
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EMPTY_ARG '\$4' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
}

local num=

#! ------ START confict_name_arg ------
local coflict_name_arr=("arr_name" "arr_res" "result")
local item1=
local item2=
local i=
local conflict_flag=0
for item1 in ${coflict_name_arr[@]}; do
    i=0
    for item2 in ${ARGS[@]}; do
        if [[ ${item1} = ${item2} ]]; then
            hint="\$1: parr [n]ame mm, \$2: parr [r]es [mm], \$3: parr string result \$4 0 or num menu"
            l_00_echo_err "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: CONFLICT_NAME : ARGS${i} not be equal '${item1}' : ${hint} : continue"
            conflict_flag=1
        fi
        ((++i))
    done
done
if [[ ${conflict_flag} -eq 1 ]]; then
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: CONFLICT '\${coflict_name_arr[@]} = ${coflict_name_arr[*]}' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
fi
#! ------ END confict_name_arg ------
#[[confict_name_arg]]
#* ---------- arr_name ----------------
local arr_name=()

eval num=\$\{#"${ARGS0}"[@]\}

if [[ "${num}" -eq 0 ]]; then

    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DEFINE as array : '${ARGS0}' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : return 1${NRM}"
    return 1

fi

for ((i = 0; i < ${num}; i++)); do
    eval arr_name+=\(\"\${${ARGS0}[$i]}\"\)
done

l_02_pa3e arr_name

#* ---------- arr_res ----------------

local arr_res=()

eval num=\$\{#"${ARGS1}"[@]\}

if [[ "${num}" -eq 0 ]]; then

    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DEFINE as array : '${ARGS1}' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : return 1${NRM}"
    return 1

fi

# if [[ "${ARGS1}" == "arr_res" ]]; then
#     hint="\$1: parr [n]ame mm, \$2: parr [r]es [mm], \$3: parr string result \$4 0 or num menu"
#     _st_exit "in fs= file:// , line=${LINENO}, ${FNN}() : CONFLICT_NAME : ARGS1 not be equal 'arr_res' : ${hint} : return 1"
#     return 1
# fi

for ((i = 0; i < ${num}; i++)); do
    eval arr_res+=\(\"\${${ARGS1}[$i]}\"\)
done

# parr3e_ arr_res

eval result=${ARGS2}

#! start bash select -----------------------------------
#! enter env menu: $1 as nomber menu, arr as name of points, res as using stinr
# echo -e "${BLUE}--- exec ${FNN}() (num_menu) ---${NORMAL}" #started functions

local num_res=
local item_arr=
#{arr_res}
# arr+=("aaaaaaaaa")
# res+=("bbbbbbbbb")
# arr+=("aaaaaaaaa")
# res+=("bbbbbbbbb")
# arr+=("aaaaaaaaa")
# res+=("bbbbbbbbb")
# arr+=("aaaaaaaaa")
# res+=("bbbbbbbbb")
arr_name+=("exit menu")
arr_res+=("return 0")

#! _parr3e arr_name
#! _parr3e arr_res

if ! l_01_is_od $ARGS3; then
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_NUM : '\$ARGS3 = $ARGS3: 0 or num menu' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : return 1${NRM}"
    return 1
fi

if ! [[ $ARGS3 -le ${#arr_name[@]} ]]; then
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL : '[[ \$ARGS3 -le \${#arr_name[@]} ]]' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : return 1${NRM}"
    return 1
fi

if [[ -n "$ARGS3" ]] && [[ $ARGS3 -ne 0 ]] && l_01_is_od $ARGS3 && [[ $ARGS3 -le ${#arr_name[@]} ]]; then
    num_res=$(($ARGS3 - 1))
    if [[ "${arr_name[${num_res}]}" == "exit menu" ]]; then

        cd $PPWD
        return 0
    fi
    eval $result=\"${arr_res[${num_res}]}\"

    cd $PPWD
    return 0
fi
PS3="eligendi actiones: "
select item_arr in "${arr_name[@]}"; do
    for ((i = 0; i < 1000; i++)); do
        if [[ ${item_arr} == ${arr_name[$i]} ]]; then
            if [[ "${arr_name[$i]}" == "exit menu" ]]; then
                return 0
            fi
            eval $result=\"${arr_res[$i]}\"

            cd $PPWD
            return 0
        fi
    done
done

    #* END fn block ------------------

    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_02_pa2mm @
