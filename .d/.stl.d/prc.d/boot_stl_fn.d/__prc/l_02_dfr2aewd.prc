#? for copy to help block

if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: like _dfr2ae - {echo \"file_path:depth_dir_contane_file\"} - \$1 dir (non uprev : like ls) (@|path) @ if path='' [, \$2 .ext]
TAGS: @dr @fl @2e @dpth
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : . ${tst_nm_dr}/${FNN}/exec.tst
    _flow       : tst _flow     : . ${tst_nm_dr}/${FNN}/_flow_tst.sh
    _flow_1     : tst _flow_1   : . ${tst_nm_dr}/${FNN}/_flow_tst_v1.sh

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_02_dfr2aewd

RETU: (any {0} | if: [...] {0} | if [...] {1} | result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
EXAM:   ${FNN} [, [, ]]
tree \${STL_D_PATH}/prc.d/boot_stl_fn.d/__ext/_dt/d2
├── _d1.no
│   ├── _f2
│   ├── f2
│   ├── _f2.no
│   ├── f2.no
│   ├── _f2.yes
│   └── f2.yes
├── d1.no
│   ├── _f2
│   ├── f2
│   ├── _f2.no
│   ├── f2.no
│   ├── _f2.yes
│   └── f2.yes
├── _d1.yes
│   ├── _f2
│   ├── f2
│   ├── _f2.no
│   ├── f2.no
│   ├── _f2.yes
│   └── f2.yes
├── d1.yes
│   ├── _f2.no
│   ├── f2.no
│   ├── _f2.yes
│   └── f2.yes 
├── _f1.no
├── f1.no
├── _f1.yes
└── f1.yes

    cd \${STL_D_PATH}/prc.d/boot_stl_fn.d/__ext/_dt || return 1
    l_02_dfr2aewd d2 yes ->:
        \${STL_D_PATH}/prc.d/boot_stl_fn.d/__ext/_dt/d2/d1.no/f2.yes:1
        \${STL_D_PATH}/prc.d/boot_stl_fn.d/__ext/_dt/d2/d1.yes/f2.yes:1
        \${STL_D_PATH}/prc.d/boot_stl_fn.d/__ext/_dt/d2/f1.yes:0
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

[[ -n "$1" ]] || {
    l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EMPTY_ARG '\$1' return 1"
    cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
}

#! ptr_path
local ptr_path="$1"
ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

_dr2ewd_infn_1() {

    local ptr_path="$2"
    ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    local arg1="$1"
    local item=

    if [[ "$2" == "@" ]]; then
        # ls
        for item in $(ls | sort); do
            if [ -z "$3" ]; then
                # echo -e "${HLIGHT}--- [ -d /$item ] || [ -f /$item ] ---${NORMAL}" #start files
                if { [ -f "$item" ]; } && [ "${item:0:1}" != "_" ]; then
                    echo "$item":$1
                fi
                if [ -d "$item" ] && [ "${item:0:1}" != "_" ]; then
                    _dr2ewd_infn_1 $((arg1 + 1)) "$item"
                fi
            else
                local _dr2e_ext=
                _dr2e_ext=$(l_01_prs_f -e "$item")
                if { [ -f "$item" ]; } && [ "${item:0:1}" != "_" ] && [ "${_dr2e_ext}" == "$3" ]; then
                    echo "$item":$1
                fi
                if [ -d "$item" ] && [ "${item:0:1}" != "_" ]; then
                    _dr2ewd_infn_1 $((arg1 + 1)) "$item" "$3"
                fi
            fi
        done

    else
        ls $ptr_path >/dev/null || {
            l_00_echo_ret1 "in fs= file://${fn_nm} , line=${LINENO}, ${FNN}() : : EXEC_FAIL : 'ls $ptr_path >/dev/null' : return 1"
            cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
            return 1
        }
        for item in $(ls $ptr_path | sort); do
            if [ -z "$3" ]; then
                if { [ -f "$ptr_path/$item" ]; } && [ "${item:0:1}" != "_" ]; then
                    echo "$ptr_path/$item":$1
                fi
                if [ -d "$ptr_path/$item" ] && [ "${item:0:1}" != "_" ]; then
                    _dr2ewd_infn_1 $((arg1 + 1)) "$ptr_path/$item"
                fi
            else
                local _dr2e_ext=
                _dr2e_ext=$(l_01_prs_f -e "$item")
                if { [ -f "$ptr_path/$item" ]; } && [ "${item:0:1}" != "_" ] && [ "${_dr2e_ext}" == "$3" ]; then
                    echo "$ptr_path/$item":$1
                fi
                if [ -d "$ptr_path/$item" ] && [ "${item:0:1}" != "_" ]; then
                    _dr2ewd_infn_1 $((arg1 + 1)) "$ptr_path/$item" "$3"
                fi
            fi
        done
    fi
}

_dr2ewd_infn_1 0 "$1" "$2"
