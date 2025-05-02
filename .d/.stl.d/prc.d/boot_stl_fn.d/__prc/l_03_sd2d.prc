#? for copy to help block

if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: cp dir \${3} to $(dirname \${3}) with replace \${1} to \${2} in files and name node
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

[[ -n "$3" ]] || {
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EMPTY_ARG '\$1' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
}

# while IFS=$'\n' read -r line; do
#     :
# done <"${1:-/dev/stdin}"

#! ptr_path
# local ptr_path="$1"
# ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

#! ptr_path
local init_dir="${3}"
init_dir="$(_abs_path "${PPWD}" "init_dir")"
#[[ptr_path_s]]

if ! [[ -d "$init_dir" ]]; then
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR 'file://$init_dir' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
fi

local reciver=${1}
local inserter=${2}

local init_dir_name=$(basename $init_dir)
local init_dir_base=$(dirname $init_dir)

l_00_echo_code "'l_02_s2se $reciver $inserter $init_dir_name'"
local result_dir_name=$(l_02_s2se $reciver $inserter $init_dir_name)

# echo -e "${HLIGHT}--- exec: cp -r ${init_dir_base}/${init_dir_name}/. ${init_dir_base}/${result_dir_name} ---${NORMAL}" #start files
if [[ -d ${init_dir_base}/${result_dir_name} ]]; then
    echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_sd2d.sh , line=${LINENO}, ${FNN}() : DIR_EXIST: 'file://${init_dir_base}/${result_dir_namer}' : ${hint} : return 1" >&2
    return 1
fi

# echo -e "${HLIGHT}--- exec: mkdir ${init_dir_base}/${result_dir_name}~ ---${NORMAL}" #start files
mkdir ${init_dir_base}/${result_dir_name}~

# echo -e "${HLIGHT}--- exec: mv ${init_dir_base}/${init_dir_name}~ ${init_dir_base}/${init_dir_name} ---${NORMAL}" #start files
mv ${init_dir_base}/${result_dir_name}~ ${init_dir_base}/${result_dir_name}

# echo -e "${HLIGHT}--- exec: cp -rfv ${init_dir_base}/${init_dir_name}/. ${init_dir_base}/${result_dir_name} ---${NORMAL}" #start files
cp -rf ${init_dir_base}/${init_dir_name}/. ${init_dir_base}/${result_dir_name}

local result_dir=${init_dir_base}/${result_dir_name}

l_00_echo_info "'\$result_dir = $result_dir'"

# return 0

_in_fn_1_sd2d() {

    if ! [[ -d "$1" ]]; then
        l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR 'file://${1}' return 1"
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 1
    fi

    local item
    for item in $(ls -A "$1"); do
        l_00_echo_info "'\$item = $item'"

        # echo -e "${HLIGHT}--- exec: echo $item | grep $reciver ---${NORMAL}" #start files
        # echo $item | grep $reciver
        if echo $item | grep $reciver >/dev/null; then
            # echo "--- exec: echo $item | sed \"$reciver | $inserter | g\" "--- #start files
            # echo $item | sed "s|$reciver|$inserter|g"

            l_00_echo_code "l_02_s2se $reciver $inserter $item"
            dest_name=$(l_02_s2se $reciver $inserter $item)

            dest_path=$1/$dest_name
            src_path=$1/$item

            # echo -e "${HLIGHT}--- exec: mv $src_path $dest_path ---${NORMAL}" #start files
            mv $src_path $dest_path
        else
            dest_path=$1/$item
        fi

        if [[ -f $dest_path ]]; then
            l_00_echo_code "l_02_s2f $reciver $inserter $dest_path"
            l_02_s2f $reciver $inserter $dest_path
        elif [[ -d $dest_path ]]; then

            if ! _in_fn_1_sd2d $dest_path; then
                l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FALSE '_in_fn_1_sd2d $dest_path' return 1"
                cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
                return 1
            fi

        else
            l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FALSE 'NOT_DIR or NOT_FILE : 'file://$dest_path'' return 1"
            cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
            return 1
        fi
    done

}

# _in_fn_1_sd2d ${result_dir}

if ! _in_fn_1_sd2d $result_dir; then
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FALSE '_in_fn_1_sd2d $result_dir'' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
fi
