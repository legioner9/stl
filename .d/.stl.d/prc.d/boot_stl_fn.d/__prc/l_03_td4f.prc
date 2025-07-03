#? for copy to help block

if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: \$1 [[ {{rcv_fl}} pth_to_res_fl ]] recive file with {{[name]}} string \$2 dir with [name].ins files LEX(6.2) :: {{rcv_fl}} is full path to \$1
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
DOIN: change \$1
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

#* check cntl

#* inname cntl

#* define local variables

#! echo ARGS
# local ARG_23edew=("${ARGS[@]}")
# [[ -n "${ARGS[0]}" ]] && l_02_pa3e ARG_23edew

[[ -n "$2" ]] || {
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EMPTY_ARG '\$2' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
}

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
local ptr_path_1="$1"
ptr_path_1="$(l_01_abs_path "${PPWD}" "ptr_path_1")"

[[ -f "$ptr_path_1" ]] || {
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_FILE 'file://${ptr_path_1}' where '\$1=$1' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
}

#! ptr_path_2
local ptr_path_2="$2"
ptr_path_2="$(l_01_abs_path "${PPWD}" "ptr_path_2")"

[[ -d "$ptr_path_2" ]] || {
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR 'file://${ptr_path_2}' where '\$2=$2' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
}

#* rename args
local rcv_fl=${ptr_path_1}
local ins_dir=${ptr_path_2}

l_00_echo_gras "${FNN}[] \$1 :: 'rcv_fl = file://$ptr_path_1 '"
l_00_echo_gras "${FNN}[] \$2 :: 'ins_dir = file://${ptr_path_2} '"

local item=
local name_ins=
local fl_ins=

for item in $(l_02_df2e ${ins_dir} "ins"); do
    # l_00_echo_info "'\$item = $item'"
    fl_ins="${ins_dir}/$item"
    name_ins=$(l_01_prs_f -n $item)
    # l_00_echo_info "'\$name_ins = $name_ins'"

    grep "{{${name_ins}}}" "${rcv_fl}" && {
        l_02_fs2f "${fl_ins}" "{{${name_ins}}}" "${rcv_fl}"
        l_02_s2f "{{${name_ins}}}" "[[${name_ins}]]" "${rcv_fl}"
    }
    :
done

grep "{{rcv_fl}}" "${rcv_fl}" && {
    l_02_s2f "{{rcv_fl}}" "${rcv_fl}" "${rcv_fl}"
}
:

grep "${HOME}" "${rcv_fl}" && {
    l_02_s2f "${HOME}" '${HOME}' "${rcv_fl}"
}
:

