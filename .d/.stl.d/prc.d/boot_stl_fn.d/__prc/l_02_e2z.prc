#? for copy to help block

if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: stdout [tabout] : 'ent_cls'\t'ent_size'\t'ent_pth of dir or file $PWD [, \$1 ]  [arg_ls]
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
tree -L 1 \${STL_D_PATH}/prc.d/boot_stl_fn.d/__ext/_dt/df2z
\${STL_D_PATH}/prc.d/boot_stl_fn.d/__ext/_dt/df2z
├── 1964_b_d.px
└── 208_b_file.px

    cd \${STL_D_PATH}/prc.d/boot_stl_fn.d/__ext/_dt/df2z || return 1
    l_02_e2z 1964_b_d.px 
    l_02_e2z 208_b_file.px 
        ->:
        d	1964	/home/st/REPOBARE/_repo/stl/.d/.stl.d/prc.d/boot_stl_fn.d/__ext/_dt/df2z/1964_b_d.px
        f	208	/home/st/REPOBARE/_repo/stl/.d/.stl.d/prc.d/boot_stl_fn.d/__ext/_dt/df2z/208_b_file.px
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

#! ptr_path
# local ptr_path="$1"
# ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

# ! ptr_path
local ent_size=
local ent_cls=
local ent_pth=
local ptr_path="$1"
ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

[[ ! -d "$ptr_path" && ! -f "$ptr_path" ]] && {
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR AND NOT_FILE '$ptr_path' from '\$1=$1' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
}

[[ -d "$ptr_path" ]] && {
    ent_size="$(du -sb "$ptr_path" | awk '{print $1}')"
    ent_cls="d"
}

[[ -f "$ptr_path" ]] && {
    ent_size="$(stat -c %s "$ptr_path")"
    ent_cls="f"
}

ent_pth="$ptr_path"
echo -e "${ent_cls}\t${ent_size}\t${ent_pth}"
