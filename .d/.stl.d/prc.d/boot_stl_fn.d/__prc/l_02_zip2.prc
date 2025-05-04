#? for copy to help block

if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: 
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

# while IFS=$'\n' read -r line; do
#     :
# done <"${1:-/dev/stdin}"

#! ptr_path
# local ptr_path="$1"
# ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

[[ -n ${ARGS[0]} ]] && l_02_pa3e ARGS

if [[ -z "$2" ]]; then
    echo "in fs= file:// , line=${LINENO}, ${FNN}() : ERR_AMOUNT_ARGS entered : mast 2 args but: '${NARGS}' args : ${hint} : return 1" >&2
    return 1
fi

if ! [[ -f $2 ]] && ! [[ -d $2 ]]; then
    hint="\$1: node to zip"
    echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_zip_to.sh , line=${LINENO}, ${FNN}() : NOT_DIR or NOT_FILE : 'file://$2' : ${hint} : return 1" >&2
    return 1
fi

if ! [[ -d $(dirname $1) ]]; then
    hint="\$2: dir dist"
    echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_zip_to.sh , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://$(dirname $1)' : ${hint} : return 1" >&2
    return 1
fi

path_dist="${ARGS[0]}"
path_dist=$(_abs_path $PPWD "path_dist")

if [[ $(_prs_f -e ${path_dist}) != "zip" ]]; then
    path_dist=${path_dist}.zip
fi

path_src="${ARGS[1]}"
path_src=$(_abs_path $PPWD "path_src") #ptr args

dir_src=$(dirname "${path_src}")
file_src=$(basename "${path_src}")

dir_dist=$(dirname "${path_dist}")
file_dist=$(basename "${path_dist}")

if [[ -f ${path_dist} ]]; then
    mv ${path_dist} ${path_dist}~
fi

if ! cd ${dir_src}; then
    echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_zip_to.sh , line=${LINENO}, ${FNN}() : EXEC_FAIL : 'cd ${dir_src}' : ${hint} : return 1" >&2
    cd $PPWD
    return 1
fi

if [[ -f ${path_src} ]]; then
    zip "${file_dist}" "${file_src}"
    mv "${file_dist}" "${path_dist}"
    # echo -e "${HLIGHT}--- exec: mkdir ${dir_dist}/tmp_$(_rnd2e) ---${NORMAL}" #start files
    tmp_dir=${dir_dist}/_zip_to.tmp.d
    if ! [[ -d ${tmp_dir} ]]; then
        mkdir ${tmp_dir}
    fi
    # echo -e "${HLIGHT}--- cp file://${path_dist} file://${tmp_dir} ---${NORMAL}" #start files
    cp ${path_dist} ${tmp_dir}

    # echo -e "${HLIGHT}--- exec: cd ${tmp_dir} ---${NORMAL}" #start files
    cd ${tmp_dir} || {
        echo "NOT_DIR : ${tmp_dir} return 1" >&2
        cd $PPWD
        return 1
    }
    # echo -e "${HLIGHT}--- exec: unzip -o ${tmp_dir}/${file_dist} ---${NORMAL}" #start files
    unzip -o ${tmp_dir}/${file_dist}

    # read -p "continue?"

    # echo -e "${HLIGHT}--- exec: diff -q file://${tmp_dir}/${file_src} file://${path_src} ---${NORMAL}" #start files
    if ! diff -q ${tmp_dir}/${file_src} ${path_src}; then
        diff ${tmp_dir}/${file_src} ${path_src}
        echo "in fs= file:// , line=${LINENO}, ${FNN}() : : EXEC_FAIL : 'EXEC_EXPERSION' : ${hint} : return 1" >&2
        # read -p "continue?"
        rm -r ${tmp_dir}
        cd $PPWD
        return 1
    fi
    rm -r ${tmp_dir}
fi

if ! cd ${dir_src}; then
    echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_zip_to.sh , line=${LINENO}, ${FNN}() : EXEC_FAIL : 'cd ${dir_src}' : ${hint} : return 1" >&2
    cd $PPWD
    return 1
fi

if [[ -d ${path_src} ]]; then

    # echo -e "${HLIGHT}--- exec: zip -vr "${file_dist}" "${file_src}" ---${NORMAL}" #start files
    zip -vr "${file_dist}" "${file_src}"

    mv "${file_dist}" "${path_dist}"
    # echo -e "${HLIGHT}--- exec: mkdir ${dir_dist}/_zip_to.tmp.d ---${NORMAL}" #start files
    tmp_dir=${dir_dist}/_zip_to.tmp.d
    if ! [[ -d ${tmp_dir} ]]; then
        mkdir ${tmp_dir}
    fi
    # echo -e "${HLIGHT}--- cp file://${path_dist} file://${tmp_dir} ---${NORMAL}" #start files
    cp ${path_dist} ${tmp_dir}

    # echo -e "${HLIGHT}--- exec: cd ${tmp_dir} ---${NORMAL}" #start files
    cd ${tmp_dir} || {
        echo "NOT_DIR : ${tmp_dir} return 1" >&2
        cd $PPWD
        return 1
    }
    # echo -e "${HLIGHT}--- exec: unzip -o ${tmp_dir}/${file_dist} ---${NORMAL}" #start files
    unzip -o ${tmp_dir}/${file_dist}

    # read -p "continue?"

    # echo -e "${HLIGHT}--- exec: diff -qr file://${tmp_dir}/${ file_src} file://${path_src} ---${NORMAL}" #start files
    if ! diff -qr ${tmp_dir}/${file_src} ${path_src}; then
        diff -r ${tmp_dir}/${file_src} ${path_src}
        echo "in fs= file:// , line=${LINENO}, ${FNN}() : : EXEC_FAIL : 'EXEC_EXPERSION' : ${hint} : return 1" >&2
        # read -p "continue?"
        rm -r ${tmp_dir}
        cd $PPWD
        return 1
    fi
    rm -r ${tmp_dir}
fi

touch ${path_dist}
