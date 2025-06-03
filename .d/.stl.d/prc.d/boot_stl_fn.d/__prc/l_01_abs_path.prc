#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: echo abs_path [, \$1 abs_path [, \$2 ptr_to_path]] {see FLOW}
TAGS: @pth
ARGS:
[, \$1 abs_path
[, \$2 ptr_to_path
    ]]
FLOW:   if \$1 is empty
            - echo \$PPWD
        if {\$arg1:0:1} = '/' else return 1
            if \$2 empty
                - echo \$arg1
            else 
                cace : val_ptr [from (eval val_ptr=\\\$\$2 )] 
                    is empty                : echo \$arg1
                    {\$val_ptr:0:1} = '/'   : echo \$val_ptr
                    {\$val_ptr:0:1} != '/'  : echo \$arg1/\$val_ptr

# HIE ${FNN} 
## CAUSA:
ПРИЧИНА создания:
        Возможность использовать путь относительный к директории PWD
## FORMULA:
СХЕМА решения:
## DOGMA:
РЕШЕНИЕ задачи:
### TST
### FLOW_1
    - call with args: abs_path, rel_path -> echo abs_path/rel_path
    - call with abs_path -> echo abs_path
    - call without args -> echo PWD

CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _flow       : tst _flow     : . ${tst_nm_dr}/${FNN}/_flow_tst.sh
    _flow_1     : tst _flow_1   : . ${tst_nm_dr}/${FNN}/_flow_tst_v1.sh
    
    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_01_abs_path

RETU: (any {0} | if: [...] {0} | if [...] {1})
EXAM:   ${FNN} [, [, ]]
"
    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
fi

#! stdout fn introduction
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

local dpwd

if [[ -n "$1" ]]; then
    dpwd="$1"
    if ! [[ "/" == "${dpwd:0:1}" ]]; then
        l_00_echo_ret1 "in fs= file://${STL_D_PATH}/.stldrc  , line=${LINENO} : '$FNN() $*' : '${dpwd}' NOT_ROOT , hint : '$3' : return 1"
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 1
    fi

else
    echo "$PPWD"
    return 0
fi

if [[ "@" == "$2" || -z "$2" ]]; then
    echo "$dpwd"
    return 0
else
    eval "local arg2=\${$2}"
fi

[[ "@" == "${arg2}" ]] && {
    echo "${dpwd}"
    return 0
}

if [[ -n "${arg2}" ]]; then

    if [[ "/" == "${arg2:0:1}" ]]; then
        echo "${arg2}"
    else
        echo "${dpwd}/${arg2}"
    fi
else
    echo "${dpwd}"
fi
