#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location .stl.d/prc.d/boot_stl_fn.d

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}

_stl_00_mnd_opi() {

    #? ----- START _XXX body_flow -----

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

    #! Gretting
    #! l_00_echo_exec "$FNN() $* in file://${fn_sh_file}" #started functions

    local hint="hint -> "
    if [ -n "$1" ] && [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: git treat dr_repo \$1 dir using :: \$2 (dr .lst) \$3 (dr .var) \$4 (dr .mul) :: anum \$5 (fl in .lst) \$6 (fl in .var) \$7 (fl in in .mul)
TAGS:
ARGS: [\$1 : ] 
[, \$N last arg DEBAG CNTL]
    if '_i' debag action, use: [ \$di -eq 1 ] && {debag action} ]
GLAR: ${FNN}_glar_[name_glar]    
CNTL: 
    _go         : _edit body        : _edit file://${d_name}/${FNN}.sh
    _tst        : . exec.tst        : . file://${d_name}/_tst/exec.tst
    _tst_e      : _edit tst_dir     : _edit file://${d_name}/_tst
    _flow       : . _flow_tst.sh.v1 : . file://${d_name}/_tst/_flow_tst.sh
    _flow_1     : . _flow_tst.sh.v1 : . file://${d_name}/_tst/_flow_tst.sh.v1

    _rbld       : . lib_arb/_rbld_name_prc_ram.sh ${FNN}

    _hie_m      : more hie_file     : more file://${fn_hie_file} 
    _hie_e      : _edit hie_file    : _edit file://${fn_hie_file} 

    _lib_d_e   : depo files : use by ${FNN} : _edit \$d_lib_grot_depo : _edit file://${d_lib_ram}
    _depo_d_e   : depo files : use by ${FNN} : _edit \$d_lib_grot_depo : _edit file://${d_lib_grot_depo}
    _opt_d_e    : opt files : use by ${FNN} : _edit \$d_lib_grot_opt : _edit file://${d_lib_grot_opt}    

    _data_d_e   : data files : use by user : _edit \$d_data_grot : _edit file://$d_data_ram
    
RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERROR: ( if ... return 0 | if ... return 1 )
EXAM:
    ${FNN} 

    ENV: 
    \${STL_D_PATH} = file://${STL_D_PATH}
    \${STL_DATA_D_PATH} = file://${STL_DATA_D_PATH}
    \${STL_LIB_D_PATH} = file://${STL_LIB_D_PATH}

    see dotstldrc_wrap_prc_inner() in /.stldrc

    \$PPWD= file://$PPWD
    \${ARGS[@]}=${ARGS[@]}
    \${NARGS}=${NARGS}

    local fn_sh_file= file://${d_name}/${FNN}.prc
    local fn_hie_file= file://${d_name}/${FNN}.hie

    local sublib_pth= file://$(dirname $(dirname ${d_name}))
    local sublib_pfx=$(l_01_prs_f -e2 ${sublib_pth})
    local sublib_num=$(l_01_prs_f -n2 ${sublib_pth})
    local sublib_nm=$(l_01_prs_f -ne ${sublib_pth})

    local d_data_arb= file://${STL_DATA_D_PATH}/${sublib_num}.${sublib_pfx}.arb
    local d_lib_arb= file://${STL_LIB_D_PATH}/${sublib_num}.${sublib_pfx}.arb

    local d_data_ram= file://${STL_DATA_D_PATH}/${sublib_num}.${sublib_pfx}.arb/${FNN}.ram
    local d_lib_ram= file://${STL_LIB_D_PATH}/${sublib_num}.${sublib_pfx}.arb/${FNN}.ram

    local d_data_grot= file://${d_data_ram}/.grot
    local d_lib_grot= file://${d_lib_ram}/.grot

    local d_lib_grot_opt= file://${d_lib_grot}/.opt
    local d_lib_grot_opt_lst= file://${d_lib_grot_opt}/.lst
    local d_lib_grot_opt_prc= file://${d_lib_grot_opt}/.prc
    local d_lib_grot_opt_tml= file://${d_lib_grot_opt}/.tml

    local d_lib_grot_depo= file://${d_lib_grot}/.depo

${NORMAL}"
        return 0
    fi
    :

    #! add _flow_N
    # if [[ "_flow_2" == "$1" ]]; then
    #     . ${tst_nm_dr}/_flow_tst_v2.sh || {
    #         cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    #         return 1
    #     }
    #     cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    #     return 0
    # fi

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

    #* grass parameter

    # l_00_echo_gras "GRAS:::${FNN} [] \$1 :: 'ins_fl = file://$ptr_path_1 '"
    # l_00_echo_gras "GRAS:::${FNN} [] \$2 :: 'rcv_str = $2'"
    # l_00_echo_gras "GRAS:::${FNN} [pth_to_any_tml] {$dr_any} :: '{} = file://$ptr_path_3/any.f '"
    # l_00_echo_gras "GRAS:::${FNN}[chiced dir]{num8} :: 'tml_dir_pth = file://$dir_res_itky54271 '"
    # l_00_echo_gras "GRAS:::${FNN}[discribe var]{origin var} :: 'tml_dir_pth = file://$dir_res_itky54271 '"

    #* check cntl

    #* inname cntl

    #* define local variables

    #! echo ARGS
    # eval "local ARG_$FNN=("\$\{ARGS[@]\}")"
    # [[ -n "${ARGS[0]}" ]] && l_02_pa3e ARG_$FNN

    # [[ -n "$1" ]] || {
    #     l_02_od2o ${dta_nm_dr}/od.d
    #     return 0
    # }

    # [[ -n "$1" ]] || {
    #     l_00_echo_ret1 "'$FNN() $*' in file://${fn_sh_file} , line=${LINENO} :: EMPTY_ARG '\$1' return 1"
    #     cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    #     return 1
    # }

    # l_01_is_od "$2" || {
    #     l_00_echo_ret1 "'$FNN() $*' in file://${fn_sh_file} , line=${LINENO} :: NOT_NUMBER '${2}' where '\$2=$2' return 1"
    #     cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    #     return 1
    # }

    # [[ -f "$3" ]] || {
    #     l_00_echo_ret1 "'$FNN() $*' in file://${fn_sh_file} , line=${LINENO} :: NOT_FILE 'file://${3}' where '\$3=$3' return 1"
    #     cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    #     return 1
    # }

    # local line=
    # read -t 0.0002 - timeout
    # while IFS=$'\n' read -r line; do
    #     :
    # done <"${1:-/dev/stdin}"

    # local arg_3=
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

    #! PPWD from $FNN
    eval "local PPWD_$FNN=\$\{PPWD\}"

    #! Gretting
    #! l_00_echo_exec "$FNN() $* in file://${fn_sh_file}" #started functions

    [[ -n "$4" ]] || {
        l_00_echo_ret1 "'$FNN() $*' in file://${fn_sh_file} , line=${LINENO} :: EMPTY_ARG '\$4' return 1"
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 1
    }

    [[ -d "$1" ]] || {
        l_00_echo_ret1 "'$FNN() $*' in file://${fn_sh_file} , line=${LINENO} :: NOT_DIR 'file://${1}' where '\$1=$1' return 1"
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 1
    }

    #! ptr_path_1
    local ptr_path_1="$1"
    ptr_path_1="$(l_01_abs_path "${PPWD}" "ptr_path_1")"

    [[ -d "$2" ]] || {
        l_00_echo_ret1 "'$FNN() $*' in file://${fn_sh_file} , line=${LINENO} :: NOT_DIR 'file://${2}' where '\$2=$2' return 1"
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 1
    }

    #! ptr_path_2
    local ptr_path_2="$2"
    ptr_path_2="$(l_01_abs_path "${PPWD}" "ptr_path_2")"

    [[ -d "$3" ]] || {
        l_00_echo_ret1 "'$FNN() $*' in file://${fn_sh_file} , line=${LINENO} :: NOT_DIR 'file://${3}' where '\$3=$3' return 1"
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 1
    }

    #! ptr_path_3
    local ptr_path_3="$3"
    ptr_path_3="$(l_01_abs_path "${PPWD}" "ptr_path_3")"

    [[ -d "$4" ]] || {
        l_00_echo_ret1 "'$FNN() $*' in file://${fn_sh_file} , line=${LINENO} :: NOT_DIR 'file://${4}' where '\$4=$4' return 1"
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 1
    }

    #! ptr_path_4
    local ptr_path_4="$4"
    ptr_path_4="$(l_01_abs_path "${PPWD}" "ptr_path_4")"

    [[ -n "$5" ]] && {
        l_01_is_od "$5" || {
            l_00_echo_ret1 "'$FNN() $*' in file://${fn_sh_file} , line=${LINENO} :: NOT_NUMBER '${5}' where '\$5=$5' return 1"
            cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
            return 1
        }
    }

    [[ -n "$6" ]] && {
        l_01_is_od "$6" || {
            l_00_echo_ret1 "'$FNN() $*' in file://${fn_sh_file} , line=${LINENO} :: NOT_NUMBER '${6}' where '\$6=$6' return 1"
            cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
            return 1
        }
    }

    [[ -n "$7" ]] && {
        l_01_is_od "$7" || {
            l_00_echo_ret1 "'$FNN() $*' in file://${fn_sh_file} , line=${LINENO} :: NOT_NUMBER '${7}' where '\$7=$7' return 1"
            cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
            return 1
        }
    }

    local repo_dr_pth="${ptr_path_1}"

    local prv_lst_dr="${ptr_path_2}"
    local prv_var_dr="${ptr_path_3}"
    local lib_mul_dr="${ptr_path_4}"

    local lst_anum="$5"
    [[ -n $lst_anum ]] || lst_anum=0
    local var_anum="$6"
    [[ -n $var_anum ]] || var_anum=0
    local set_anum="$7"
    [[ -n $set_anum ]] || set_anum=0

    local set_fn_dr=${lib_mul_dr}/set_fn.d
    local singl_fn_dr=${lib_mul_dr}/singl_fn.d
    local util_dr=${lib_mul_dr}/util.d

    #? prc up_to_mem
    local arr_up=("$singl_fn_dr" "$util_dr")

    local dr_up=
    local ret1=0

    for dr_up in ${arr_up[@]}; do
        l_01_c_up ${dr_up} || {
            l_00_echo_ret1 "'$FNN() $*' in file://${fn_sh_file} , line=${LINENO} :: EXEC_FALSE 'l_01_c_up file://${dr_up} ' :: ret1=1"
            ret1=1
        }
    done

    local lst_nm=$(l_02_df2e ${prv_lst_dr} | l_03_ibu "$lst_anum")
    l_00_echo_info "'\$lst_nm = $lst_nm'"
    local lst_pth=${prv_lst_dr}/$lst_nm
    l_00_echo_info "'\$lst_pth = file://$lst_pth'"

    local var_nm=$(l_02_df2e ${prv_var_dr} | l_03_ibu "$var_anum")
    l_00_echo_info "'\$var_nm = $var_nm'"
    local var_pth=${prv_var_dr}/$var_nm
    l_00_echo_info "'\$var_pth = file://$var_pth'"

    local set_nm=$(l_02_df2e ${set_fn_dr} | l_03_ibu "$set_anum")
    l_00_echo_info "'\$set_nm = $set_nm'"
    local set_pth=${set_fn_dr}/$set_nm
    l_00_echo_info "'\$var_pth = file://$set_pth'"

    [[ 0 -eq ${ret1} ]] || {
        l_00_echo_ret1 "'$FNN() $*' in file://${fn_sh_file} , line=${LINENO} :: NOT_FILE '[[ 0 -eq ${ret1} ]]' where '\$ret1=$ret1' return 1"
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 1
    }

    l_00_echo_gras "GRAS:::${FNN}[]{} :: 'repo_dr_pth = file://$repo_dr_pth '"

    #* CONST for prc
    #** in $var_pth
    #? fs contaner: dir_repo
    local dir_contaner="${repo_dr_pth}"

    # | grep -w '#@' | sed 's|#@ ||g'

    local arr=()
    local res=()
    local item_1=
    local item_1_pth=

    for item_1 in $(l_02_df2e ${prv_var_dr}); do
        #? rcv fl_od
        item_1_pth=${prv_var_dr}/${item_1}
        arr+=("$(cat ${item_1_pth} | grep -w '#@' | sed 's|#@ ||g')")
    done
    # arr=($(l_02_df2e ${prv_var_dr}))
    #? rcv fl_nm
    res=($(l_02_df2e ${prv_var_dr}))

    arr+=("l_02_edit ${set_fn_dr}")
    res+=("!l_02_edit ${set_fn_dr}")

    arr+=("l_02_edit ${singl_fn_dr}")
    res+=("!l_02_edit ${singl_fn_dr}")

    arr+=("l_02_edit ${prv_lst_dr}")
    res+=("!l_02_edit ${prv_lst_dr}")

    arr+=("l_02_edit ${prv_var_dr}")
    res+=("!l_02_edit ${prv_var_dr}")

    arr+=("bcp_before_push__")
    res+=("!bcp_before_push__")

    arr+=("dpl_after_pull__")
    res+=("!dpl_after_pull__")

    arr+=("l_06_xds71 1 1 ${repo_dr_pth} ${prv_lst_dr}/002_chng.lst")
    res+=("!l_06_xds71 1 1 ${repo_dr_pth} ${prv_lst_dr}/002_chng.lst ; cat ${prv_lst_dr}/002_chng.lst")

    arr+=("exit menu")
    res+=("!return 0")

    local arg_1=

    if [[ -n "$1" ]]; then
        arg_1="$1"
    else
        arg_1=0
    fi

    local _result_=

    l_02_pa8s arr res _result_ ${var_anum}

    l_00_echo_gras "GRAS:::${FNN}[choice fl.lst from prv_dta_var.dr ]{origin var:} :: 'fl.lst = file://${prv_var_dr}/$_result_ '"

    #! maping _result_

    [[ ${_result_:0:1} == "!" ]] && {
        l_00_echo_code "'${_result_:1}'"
        eval "${_result_:1}" || {
            l_00_echo_ret1 "'$FNN() $*' in file://${fn_sh_file} , line=${LINENO} :: EXEC_FALSE '${_result_:1}' return 1"
            cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
            return 1
        }

        return 0
    }

    :

    #? ----- END _XXX body -----
}

_stl_00_mnd_opi "$@"

# tst_prc_stl_00_before_return
# cd "$PPWD" || echo "in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
# return 0
# }

# cd "${idir}"
# unset filename
# #{post_fn}
