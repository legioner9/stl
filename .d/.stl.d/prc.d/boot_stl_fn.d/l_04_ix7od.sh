#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_04_ix7od() {

    #! THIS FILE WILL BE CREATED: `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_04_ix7od`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands:

    #! l_04_ix7od _e_prc to edit/change 'fn block',
    #! l_04_ix7od _rbld to rebuild fn with changed 'fn block'
    #! l_04_ix7od _e_xxx` to edit 'init block'

    #* START 'init block' from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst
    local ext_dr=${fn_dr}/__ext
    local dta_dr=${fn_dr}/__dta
    local ext_dt_dr=${ext_dr}/_dt
    local ext_dr_prc=${ext_dr}/_prc

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local dta_nm_dr=${dta_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    unset IFS

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

    if [[ "_e_dta_dr" == "$1" ]]; then
        l_02_edit ${dta_nm_dr}
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            echo -e "${ECHO_RET1}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : '. file://${tst_nm_dr}/exec.tst ' : continue${NRM}"
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
            echo -e "${ECHO_RET1}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : '. file://${tst_nm_dr}/_flow_tst.sh' : continue${NRM}"
            cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
            return 1
        }
        cd "$PPWD" || l_00_echo_err "in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue"
        return 0
    fi

    if [[ "_flow_1" == "$1" ]]; then
        . ${tst_nm_dr}/_flow_tst_v1.sh || {
            echo -e "${ECHO_RET1}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : '. file://${tst_nm_dr}/_flow_tst_v1.sh' : continue${NRM}"
            cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
            return 1
        }
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 0
    fi

    if [[ "_flow_2" == "$1" ]]; then
        . ${tst_nm_dr}/_flow_tst_v2.sh || {
            echo -e "${ECHO_RET1}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : '. file://${tst_nm_dr}/_flow_tst_v2.sh' : continue${NRM}"
            cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
            return 1
        }
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_04_ix7od.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 0
    fi

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_04_ix7od.prc ------------------
    #[[fn_body]]
#? for copy to help block

if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: fix arg for l_03_ixod : \$1 - anum sub_dr from \${dta_nm_dr}/od.d
TAGS:
without args exec [see] :: {l_02_od2o \${dta_nm_dr}/od.d}
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
    _flow_2     : tst _flow_2   : . ${tst_nm_dr}/${FNN}/_flow_tst_v2.sh

    for anum_prc_ifs:
    [anum] _flow_1 - flow_1 anum_prc ${FNN} [anum]
    [anum] _tst - test anum_prc ${FNN} [anum]
    _tst_u - test all anum_prc ${FNN}

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_dta_dr   : edit dta_nm_dr: l_02_edit ${dta_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/${FNN}

RETU: (any {0} | if: [...] {0} | if [...] {1} | result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
EXAM:   ${FNN} [, [, ]]
see (${FNN} _flow_1)
flow from file \${STL_D_PATH}/prc.d/boot_stl_fn.d/__tst/${FNN}/_flow_tst_v1.sh :

${FNN} [without args] - ls sb_dr od.d
${FNN} _flow_1 - flow_1 functions ${FNN}
${FNN} [anum] _flow_1 - flow_1 procedure in ${FNN} [anum]
${FNN} [anum] _tst - test procedure in ${FNN} [anum]
${FNN} _tst_u - test all procedure in ${FNN}
"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 0
fi

#! add _flow_N
# if [[ "_flow_2" == "$1" ]]; then
#     . ${tst_nm_dr}/_flow_tst_v2.sh || {
#         cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
#         return 1
#     }
#     cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
#     return 0
# fi

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

#* grass parameter

# l_00_echo_gras "${FNN} [] \$1 :: 'ins_fl = file://$ptr_path_1 '"
# l_00_echo_gras "${FNN} [] \$2 :: 'rcv_str = $2'"
# l_00_echo_gras "${FNN} [pth_to_any_tml] {$dr_any} :: '{} = file://$ptr_path_3/any.f '"
# l_00_echo_gras "${FNN}[chiced dir]{num8} :: 'tml_dir_pth = file://$dir_res_itky54271 '"
# l_00_echo_gras "${FNN}[discribe var]{origin var} :: 'tml_dir_pth = file://$dir_res_itky54271 '"

#* check cntl

#* inname cntl

#* define local variables

#! echo ARGS
local ARGS_1266dfc=("${ARGS[@]}")
# [[ -n "${ARGS[0]}" ]] && l_02_pa3e ARG_23edew

[[ -n "$1" ]] || {
    l_02_od2o "${dta_nm_dr}"/od.d
    return 0
}

# [[ -n "$1" ]] || {
#     l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EMPTY_ARG '\$1' return 1"
#     cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
#     return 1
# }

l_01_is_od "$1" || {
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_NUMBER '${1}' where '\$1=$1' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
}

# [[ -f "$3" ]] || {
#     l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_FILE 'file://${3}' where '\$3=$3' return 1"
#     cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
#     return 1
# }

# local line=
# read -t 0.0002 - timeout
# while IFS=$'\n' read -r line; do
#     :
# done <"${1:-/dev/stdin}"

# local arg_3=
# if [[ "@" == "$3" ]]; then
#     echo "Enter num menu :"
#     read -r
#     arg_3=$REPLY
#     l_00_echo_info "'\$arg_3 = $arg_3'"
# else
#     arg_3="$3"
# fi

#! use arg_ptr
# eval "$2=$res_12341c43234rfe"

#! ptr_path_1
# local ptr_path_1="$1"
# ptr_path_1="$(l_01_abs_path "${PPWD}" "ptr_path_1")"

#! ptr_path_2
# local ptr_path_2="$2"
# ptr_path_2="$(l_01_abs_path "${PPWD}" "ptr_path_2")"

#! DTA path
# local dta_sh=${dta_nm_dr}/.sh
# local dta_lst=${dta_nm_dr}/.lst
# local dta_tml=${dta_nm_dr}/.tml

#! other args "${ARGS[@]:2}" -> ${ARGS[2]} ${ARGS[3]} ...

local elg_dr_nm=$(l_02_dd2e ${dta_nm_dr}/od.d | l_03_ibu "$1")

[[ -n "${elg_dr_nm}" ]] || {
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: elegendy EMPTY '\${elg_dr_nm}' where '\$1=$1' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
}

local elg_dr_pth="${dta_nm_dr}/od.d/${elg_dr_nm}"

l_03_ixod ${elg_dr_pth} "${ARGS[@]:1}"

    #* END fn block ------------------

    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_04_ix7od @
