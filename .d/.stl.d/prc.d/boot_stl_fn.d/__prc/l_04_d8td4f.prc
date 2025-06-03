#? for copy to help block

if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: dir {\$1 IFS(3.2)} 8num {\$2 LEX(1.2)} dir 4 IFS(2.1), \$3 result fl name LEX(8.1) , \$4 result dir or @ LEX(1.12)
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
see (${FNN} _flow_1)
flow from file \${STL_D_PATH}/prc.d/boot_stl_fn.d/__tst/${FNN}/_flow_tst_v1.sh :
"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 0
fi

#! stdout fn introduction
echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

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

# l_00_echo_gras "\$1 :: 'ins_fl = file://$ptr_path_1 '"
# l_00_echo_gras "\$2 :: 'rcv_str = $2'"
# l_00_echo_gras "\$3 :: 'rcv_fl = file://$ptr_path_3 '"

#* check cntl

#* inname cntl

#* define local variables

#! echo ARGS
# local ARG_23edew=("${ARGS[@]}")
# [[ -n "${ARGS[0]}" ]] && l_02_pa3e ARG_23edew

# [[ -n "$1" ]] || {
#     l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EMPTY_ARG '\$1' return 1"
#     cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
#     return 1
# }

# [[ -f "$3" ]] || {
#     l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_FILE 'file://${3}' where '\$3=$3' return 1"
#     cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
#     return 1
# }

# while IFS=$'\n' read -r line; do
#     :
# done <"${1:-/dev/stdin}"

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

[[ -n "$4" ]] || {
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EMPTY_ARG '\$4' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
}

[[ -d "$1" ]] || {
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR 'file://${1}' where '\$1=$1' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
}

[[ "@" != "$4" ]] && {
    [[ -d "$4" ]] || {
        l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR 'file://${4}' where '\$4=$4' return 1"
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 1
    }
}

# while IFS=$'\n' read -r line; do
#     :
# done <"${1:-/dev/stdin}"

#! use arg_ptr
# eval "$2=$res_12341c43234rfe"

#! ptr_path_1
local ptr_path_1="$1"
ptr_path_1="$(l_01_abs_path "${PPWD}" "ptr_path_1")"

#! ptr_path_4
local ptr_path_4="$4"
ptr_path_4="$(l_01_abs_path "${PPWD}" "ptr_path_4")"

#* grass parameter

l_00_echo_gras "${FNN} \$1 :: 'dir_with_dirs = file://$ptr_path_1 '"
l_00_echo_gras "${FNN} \$2 :: '8num = $2'"
l_00_echo_gras "${FNN} \$3 :: 'res_fl_name = $3'"
l_00_echo_gras "${FNN} \$4 :: 'res_dir_pth = file://$ptr_path_4 '"

local dir_res_itky54271=

l_03_od8d "${ptr_path_1}" dir_res_itky54271 "$2"

#* rename args

local tml_dir_pth=${dir_res_itky54271}

l_00_echo_gras "${FNN}[choiced dir]{} :: 'tml_dir_pth = file://$tml_dir_pth '"

# l_03_td4f :: \$1 recive file with {{[name]}} string \$2 dir with [name].ins files LEX(6.2)

cp -f $tml_dir_pth/rcv.f $ptr_path_4/$3|| {
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FALSE 'cp -f file://$tml_dir_pth/rcv.f file://$ptr_path_4/${res_fl_name}' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
}

l_03_td4f ${ptr_path_4}/$3 $tml_dir_pth/ins.d
