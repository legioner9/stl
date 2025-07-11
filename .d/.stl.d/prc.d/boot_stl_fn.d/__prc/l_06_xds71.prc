#? for copy to help block

if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: \$1 num_chapt \$2 num_point wrp l_05_xs71 \${dta_nm_dr}/od.dd 
TAGS:
without args exec [see struct] ::{l_03_odd2no \${dta_nm_dr}/od.dd}
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

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_dta_dr   : edit dta_nm_dr: l_02_edit ${dta_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/${FNN}

RETU: (any {0} | if: [...] {0} | if [...] {1} | result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
EXAM:   ${FNN} [, [, ]]
see (${FNN} _flow_1)
flow from file \${STL_D_PATH}/prc.d/boot_stl_fn.d/__tst/${FNN}/_flow_tst_v1.sh :
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
eval "local ARG_$FNN=("\$\{ARGS[@]\}")"
eval "local nARG_$FNN=("\$\{ARGS[@]:0:2\}")"
eval "local oARG_$FNN=("\$\{ARGS[@]:2\}")"
# [[ -n "${ARGS[0]}" ]] && l_02_pa3e ARG_$FNN

local dta_od_dd=${dta_nm_dr}/od.dd

[[ -n "$1" ]] || {
    l_03_odd2no ${dta_od_dd}
    return 0
}

[[ -n "$2" ]] || {
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EMPTY_ARG '\$2' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
}

l_01_is_od "$1" || {
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_NUMBER '${1}' where '\$1=$1' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
}

l_01_is_od "$2" || {
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_NUMBER '${2}' where '\$2=$2' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
}

# l_00_echo_gras "${FNN} [lnum chapt] {} :: '\$1 = $1'"
# l_00_echo_gras "${FNN} [lnum point] {} :: '\$2 = $2'"

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

local dir_chapt=${dta_od_dd}/$(l_02_dd2e ${dta_od_dd} | l_03_ibu "$1")
# l_00_echo_info "'\$dir_chapt = file://$dir_chapt'"

local dir_point=${dir_chapt}/$(l_02_dd2e ${dir_chapt} | l_03_ibu "$2")
# l_00_echo_info "'\$dir_point = file://$dir_point'"

[[ -n "$3" ]] && {

    [[ "_flow" == "$3" ]] && {
        local flow=${dir_point}/.d/_tst/_flow_tst.sh
        [[ -f "${flow}" ]] && {
            . "${flow}" || {
                l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FALSE '. file://${flow}' where '\$3=$3' return 1"
                cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
                return 1
            }
        }
        return 0
    }

    [[ "_flow_1" == "$3" ]] && {
        local flow_1=${dir_point}/.d/_tst/_flow_tst_v1.sh
        [[ -f "${flow_1}" ]] && {
            . "${flow_1}" || {
                l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FALSE '. file://${flow_1}' where '\$3=$3' return 1"
                cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
                return 1
            }
        }
        return 0
    }

    [[ "_flow_2" == "$3" ]] && {
        local flow_2=${dir_point}/.d/_tst/_flow_tst_v2.sh
        [[ -f "${flow_2}" ]] && {
            . "${flow_2}" || {
                l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FALSE '. file://${flow_2}' where '\$3=$3' return 1"
                cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
                return 1
            }
        }
        return 0
    }

    [[ "_tst" == "$3" ]] && {
        local _tst=${dir_point}/.d/_tst/exec_n.tst
        [[ -f "${_tst}" ]] && {
            . "${_tst}" || {
                l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FALSE '. file://${_tst}' where '\$3=$3' return 1"
                cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
                return 1
            }
        }
        return 0
    }

    [[ "_go" == "$3" ]] && {
        local xf_sh=${dir_point}/xf.sh
        [[ -f "${xf_sh}" ]] && {
            l_02_edit "${xf_sh}" || {
                l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FALSE 'l_02_edit ${xf_sh}' where '\$3=$3' return 1"
                cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
                return 1
            }
        }
        return 0
    }
}
:

# l_02_edit $tml_dir_pth/xf.sh

l_04_od7xfv "${dir_chapt}" "${2}" "${ARGS[@]:2}" || {
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FALSE 'l_04_od7xfv ${dir_chapt} ${2} ${ARGS[@]:2} ' where '\$3=$3' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
}

# l_04_od7xfv "${dir_chapt}" "${2}" "${ARGS[@]:2}"

# cat ${dir_point}/u.1
