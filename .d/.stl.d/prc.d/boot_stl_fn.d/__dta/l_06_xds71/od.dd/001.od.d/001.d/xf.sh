#!/bin/bash

l_00_echo_exec ". file://$tml_dir_pth/xf.sh"

# ${ARG_l_04_od7xfv[@]} args l_04_od7xfv
# ${ARG_l_06_xds71[@]} args l_06_xds71

# ${ARG_l_06_xds71[@]:2} args for xf.sh
# $tml_dir_pth/.d/_dta
#  /.lst
#  /.sh
#  /.dml
# $tml_dir_pth/.d/_doc/
# rdm.man
# tgs.lst
# $tml_dir_pth/.d/_tst
# /_flow_tst_v1.sh
# /_flow_tst_v2.sh
# /ecec_n.tst

local SFN="l_06_xds71 ${nARG_l_06_xds71[@]}"

l_00_echo_code "'${SFN} ${oARG_l_06_xds71[@]}' "

[[ -n "${ARG_l_06_xds71[2]}" ]] && {

    [[ "${ARG_l_06_xds71[2]}" == "-h" ]] && {
        echo -e "
MAIN: '${SFN}' :: stash_to_zip [sth2zip] : in \$1 dir all sub_dr as [sub_dr_nm].sth2zip_\$2.d be stash to zip
TAGS: 
without args exec [see] :: {}
\$1 
[, \$2]
FLOW:   [if 
            -]
        
# HIE '${SFN}' 
## CAUSA:
ПРИЧИНА создания: прятать в зип гит проекты, что бы не мешали основному гиту работать
## FORMULA:
СХЕМА решения: находим по расширению все поддир - зипуем их, а оригиналы удаляем
## DOGMA:
РЕШЕНИЕ задачи:
### TST [as FLOW_1]
### FLOW_1
    - cd tst_dir
    - call with args: [] -> [true answer in res_file]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit $tml_dir_pth/xf.sh
    _rbld       : rebuild fn    : . file://$tml_dir_pth/xf.sh
    _tst        : tst fn        : . file://$tml_dir_pth/.d/_tst/exec_n.tst
    _flow       : tst _flow     : . file://$tml_dir_pth/.d/_tst/_flow_tst.sh
    _flow_1     : tst _flow_1   : . file://$tml_dir_pth/.d/_tst/_flow_tst_v1.sh
    _flow_2     : tst _flow_2   : . file://$tml_dir_pth/.d/_tst/_flow_tst_v2.sh

RETU: (any {0} | if: [...] {0} | if [...] {1} | result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
EXAM:   '${SFN}' [, [, ]]
see ('${SFN}' _flow_1)
flow from file \${STL_D_PATH}/prc.d/boot_stl_fn.d/__tst/${FNN}/_flow_tst_v1.sh :
    "
        return 0
    }
}

# l_02_pa3e ARG_l_06_xds71
# l_02_pa3e ARG_l_04_od7xfv
[[ -n "${nARG_l_06_xds71[0]}" ]] && l_02_pa3e nARG_l_06_xds71
[[ -n "${oARG_l_06_xds71[0]}" ]] && l_02_pa3e oARG_l_06_xds71

local arg_1="${oARG_l_06_xds71[0]}"
local arg_2="${oARG_l_06_xds71[1]}"
local arg_3="${oARG_l_06_xds71[2]}"

#* greeting
# [ $di -eq 1 ] && echo -e "${CYAN}--- $SFN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

#* errno
# cmd arg
# errno=$?
# return ${errno}

#* rename args

#* grass parameter

# l_00_echo_gras "${SFN} [] \$arg_1  :: 'ins_fl = file://$ptr_path_1 '"
# l_00_echo_gras "${SFN} [] \$arg_2 :: 'rcv_str = $arg_2'"
# l_00_echo_gras "${SFN} [pth_to_any_tml] {$dr_any} :: '{} = file://$ptr_path_3/any.f '"
# l_00_echo_gras "${SFN}[chiced dir]{num8} :: 'tml_dir_pth = file://$dir_res_itky54271 '"
# l_00_echo_gras "${SFN}[discribe var]{origin var} :: 'tml_dir_pth = file://$dir_res_itky54271 '"

#* check cntl

#* inname cntl

#* define local variables

#! echo ARGS
# eval "local ARG_$FNN=("\$\{ARGS[@]\}")"
# [[ -n "${ARGS[0]}" ]] && l_02_pa3e ARG_$FNN

# [[ -n "$arg_1" ]] || {
#     l_02_od2o ${dta_nm_dr}/od.d
#     return 0
# }

# [[ -n "$arg_1" ]] || {
#     l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EMPTY_ARG '\$arg_1' return 1"
#     cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
#     return 1
# }

# l_01_is_od "$arg_2" || {
#     l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_NUMBER '${arg_2}' where '\$arg_2=$arg_2' return 1"
#     cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
#     return 1
# }

# [[ -f "$arg_3" ]] || {
#     l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_FILE 'file://${arg_3}' where '\$arg_3=$arg_3' return 1"
#     cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
#     return 1
# }



# local line=
# read -t 0.0002 - timeout
# while IFS=$'\n' read -r line; do
#     :
# done <"${1:-/dev/stdin}"

# local in_arg_3=
# if [[ "@" == "$arg_3" ]]; then
#     echo "Enter num menu :"
#     read -r
#     in_arg_3=$REPLY
#     l_00_echo_info "'\$in_arg_3 = $in_arg_3'"
# else
#     in_arg_3="$arg_3"
# fi

#! use arg_ptr
# eval "$arg_2=$res_12341c43234rfe"

#! ptr_path_1
# local ptr_path_1="$arg_1"
# ptr_path_1="$(l_01_abs_path "${PPWD}" "ptr_path_1")"
# l_00_echo_info "'\$ptr_path_1 = file://$ptr_path_1'"

#! ptr_path_2
# local ptr_path_2="$arg_2"
# ptr_path_2="$(l_01_abs_path "${PPWD}" "ptr_path_2")"
# l_00_echo_info "'\$ptr_path_2 = file://$ptr_path_2'"

#! DTA path
# local dta_sh=$tml_dir_pth/.d/_dta/.sh
# local dta_sh=$tml_dir_pth/.d/_dta/.lst
# local dta_sh=$tml_dir_pth/.d/_dta/.tml


#? START procedure ========================================



#? END procedure ========================================

:
