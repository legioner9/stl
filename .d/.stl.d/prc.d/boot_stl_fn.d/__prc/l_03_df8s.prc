#? for copy to help block

if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: in \$1 dir (in menu)=8 choice string \$2 ptr_result \$3 0 or num_menu for choice file ['TODO not work' or @ - num_menu from stdin] \$4 for string
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

#! echo ARGS
# [[ -n ${ARGS[0]} ]] && l_02_pa3e ARGS

[[ -n "$4" ]] || {
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EMPTY_ARG '\$1' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
}

# while IFS=$'\n' read -r line; do
#     :
# done <"${1:-/dev/stdin}"

#! use arg_ptr
# eval "$2=$res_12341c43234rfe"

# ! ptr_path_1
local ptr_path_1="$1"
ptr_path_1="$(l_01_abs_path "${PPWD}" "ptr_path_1")"

#! ptr_path_2
# local ptr_path_2="$2"
# ptr_path_2="$(l_01_abs_path "${PPWD}" "ptr_path_2")"

local arg_3=
local arg_4=

if [[ "@" == "$3" ]]; then
    # TODO don't work this section see ${FNN} _flow_1
    echo "Enter num menu :"
    read -r
    arg_3=$REPLY
    l_00_echo_info "'\$arg_3 = $arg_3'"
else
    arg_3="$3"
fi

if [[ "@" == "$4" ]]; then
    # TODO don't work this section see ${FNN} _flow_1
    echo "Enter num menu choice dir :"
    read -r
    arg_4=$REPLY
    l_00_echo_info "'\$arg_4 = $arg_4'"
else
    arg_4="$4"
fi

l_01_is_od "$arg_3" || {
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_NUMBER '\$3=$3' mast be 0 or num_menu return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
}

l_01_is_od "$arg_4" || {
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_NUMBER '\$4=$4' mast be 0 or num_menu return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
}

#* choice file in dir

local arr_file_dsae123444=()
local item=

for item in $(l_02_df2e "${ptr_path_1}"); do
    # l_00_echo_info "'\$item = $item'"
    arr_file_dsae123444+=("${ptr_path_1}/$item")
done
# l_02_pa3e arr_file_dsae123444
local res_file_bh565fdgg=

l_02_pa8s arr_file_dsae123444 arr_file_dsae123444 res_file_bh565fdgg "$arg_3"

# l_00_echo_info "'\$res_file_bh565fdgg = $res_file_bh565fdgg'"

#* choice str in file
IFS=$'\n'
local arr_str_hrfde3223=($(l_02_f2e "${res_file_bh565fdgg}"))
unset IFS
# l_02_pa3e arr_str_hrfde3223
local res_str_ukfs2345=

l_02_pa8s arr_str_hrfde3223 arr_str_hrfde3223 res_str_ukfs2345 "$arg_4"

# l_00_echo_info "'\$res_str_ukfs2345 = $res_str_ukfs2345'"

eval "$2=\"$res_str_ukfs2345\""
