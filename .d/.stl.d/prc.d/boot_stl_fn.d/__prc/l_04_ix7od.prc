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

${FNN} [without args] - ls sb_dr of od.d
${FNN} _flow_1 - flow_1 functions ${FNN}
${FNN} [anum] _flow_1 - flow_1 procedure in ${FNN} [anum]
${FNN} [anum] _tst - test procedure in ${FNN} [anum]
${FNN} _tst_u - test all procedure in ${FNN}
. \${dta_nm_dr}/od.d/_ord_NNN [anum] - generate sd_od -> [anum].d (with example)
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
