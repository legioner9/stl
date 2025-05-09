#? for copy to help block

if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: zip -P str from stdin \$1 dist file from \$2 src node (-f|-d) 
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

    cd ${tst_nm_dr}
    rm -r dir_src dir_dist
    mkdir dir_dist
    cp -r dir_init dir_src

    echo 111 | l_02_zipp2 dir_dist/file_src dir_src/file_src
    unzip -P 111 dir_dist/file_src.zip -d dir_dist
    diff dir_dist/file_src dir_src/file_src # true

    echo 111 | l_02_zipp2 dir_dist/dir_src_in dir_src/dir_src_in
    unzip -P 111 dir_dist/dir_src_in.zip -d dir_dist
    diff -r dir_dist/dir_src_in dir_src/dir_src_in # true
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

[[ -n "$2" ]] || {
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EMPTY_ARG '\$2' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
}

# while IFS=$'\n' read -r line; do
#     :
# done <"${1:-/dev/stdin}"

#! ptr_path
# local ptr_path="$1"
# ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

[[ -n ${ARGS[0]} ]] && l_02_pa3e ARGS

if ! [[ -f $2 ]] && ! [[ -d $2 ]]; then
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_FILE && NOT_DIR 'file://${2}' where '\$2=$2' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
fi

if ! [[ -d $(dirname $1) ]]; then
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FALSE '[[ -d $(dirname $1) ]]' where '\$1=$1' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
fi

path_dist="${ARGS[0]}"
path_dist=$(l_01_abs_path $PPWD "path_dist")

if [[ $(l_01_prs_f -e ${path_dist}) != "zip" ]]; then
    path_dist=${path_dist}.zip
fi

path_src="${ARGS[1]}"
path_src=$(l_01_abs_path $PPWD "path_src") #ptr args

dir_src=$(dirname "${path_src}")
file_src=$(basename "${path_src}")

dir_dist=$(dirname "${path_dist}")
file_dist=$(basename "${path_dist}")

if [[ -f ${path_dist} ]]; then
    mv ${path_dist} ${path_dist}~
fi

if ! cd ${dir_src}; then
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FALSE 'cd ${dir_src}' where '\$1=$1' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
fi

local str=

read -r -p "enter str for ${FNN}" str

if [[ -f ${path_src} ]]; then
    zip -P "$str" "${file_dist}" "${file_src}"
    mv "${file_dist}" "${path_dist}"
fi

if [[ -d ${path_src} ]]; then
    zip -r -P "$str" "${file_dist}" "${file_src}"
    mv "${file_dist}" "${path_dist}"
fi
