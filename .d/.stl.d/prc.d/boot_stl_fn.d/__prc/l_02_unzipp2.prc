#? for copy to help block

if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: unzip -P str from stdin \$1 [ to \$2 or to \$PWD if \$2 empty] 
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
tree ${tst_nm_dr}/dir_init
├── dir_src_in
│   └── file_src_in
└── file_src

    rm -r dir_src dir_dist
    mkdir dir_dist
    cp -r dir_init dir_src

    cd dir_src || return 1
    zip -P 111  file_src.zip file_src

    cd ${tst_nm_dr} || return 1
    echo 111 | l_02_unzipp2 dir_src/file_src.zip dir_dist

    cd dir_src || return 1
    zip -P 111 -r dir_src_in.zip dir_src_in

    cd ${tst_nm_dr} || return 1
    echo 111 | l_02_unzipp2 dir_src/dir_src_in.zip dir_dist
    diff dir_dist/dir_src_in dir_src/dir_src_in
    #! unzip to $PWD

    rm -r dir_src dir_dist
    mkdir dir_dist
    cp -r dir_init dir_src

    cd dir_src || return 1
    zip -P 111 file_src.zip file_src

    cd ${tst_nm_dr} || return 1
    mv dir_src/file_src dir_src/file_src~
    echo 111 | l_02_unzipp2 dir_src/file_src.zip
    diff dir_src/file_src dir_src/file_src~ # true

    cd dir_src || return 1
    zip -P 111 -r dir_src_in.zip dir_src_in

    cd ${tst_nm_dr} || return 1
    mv dir_src/dir_src_in dir_src/dir_src_in~
    echo 111 | l_02_unzipp2 dir_src/dir_src_in.zip
    diff dir_src/dir_src_in dir_src/dir_src_in~ # true
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

# [[ -n "$1" ]] || {
#     l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EMPTY_ARG '\$1' return 1"
#     cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
#     return 1
# }

# while IFS=$'\n' read -r line; do
#     :
# done <"${1:-/dev/stdin}"

#! ptr_path_1
# local ptr_path_1="$1"
# ptr_path_1="$(l_01_abs_path "${PPWD}" "ptr_path_1")"

#! ptr_path_2
# local ptr_path_2="$2"
# ptr_path_2="$(l_01_abs_path "${PPWD}" "ptr_path_2")"

[[ -n "$1" ]] || {
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EMPTY_ARG '\$1' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
}

#! ptr_path_1
local ptr_path_1="$1"
ptr_path_1="$(l_01_abs_path "${PPWD}" "ptr_path_1")"

#! ptr_path
local ptr_path_2="$2"
ptr_path_2="$(l_01_abs_path "${PPWD}" "ptr_path_2")"

[[ -f ${ptr_path_1} ]] || {
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_FILE 'file://${ptr_path_1}' where '\$1=$1' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
}

read -r -p "enter str for ${FNN}" str

if [[ -d "$ptr_path_2" ]]; then
    if [[ -n "$2" ]]; then
        # l_00_echo_code "'unzip \"${ptr_path_1}\" -d \"$ptr_path_2\"' in $(pwd) "
        unzip -P "${str}" "${ptr_path_1}" -d "${ptr_path_2}" || {
            l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FALSE 'unzip \"${ptr_path_1}\" -d \"$ptr_path_2\"' where '\$1=$1' '\$2=$2' return 1"
            cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
            return 1
        }
    else
        # l_00_echo_code "'unzip \"${ptr_path_1}\" -d \"$(dirname ${ptr_path_1})\"' in $(pwd) "
        unzip -P "${str}" "${ptr_path_1}" -d "$(dirname ${ptr_path_1})" || {
            l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FALSE 'unzip \"${ptr_path_1}\" -d \"$ptr_path_2\"' where '\$1=$1' '\$2=$2' return 1"
            cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
            return 1
        }
    fi
else
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR 'file://${ptr_path_2}' where '\$2=$2' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
fi
