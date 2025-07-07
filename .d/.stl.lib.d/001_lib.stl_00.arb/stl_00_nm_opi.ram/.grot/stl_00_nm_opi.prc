#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location .stl.d/prc.d/boot_stl_fn.d

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}

_stl_00_nm_opi() {

    #? ----- START _XXX body_flow -----

    local hint="hint -> "
    if [ -n "$1" ] && [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: 
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

    ${FNN}: content ::
    prv_dta_lst= file://${d_data_ram}/.grot/.opt/.lst/_lst
    prv_dta_var= file://${d_data_ram}/.grot/.opt/.var/_var

    ham_sys = file://${d_lib_ram}/.grot/.opt/.prc/ham
    
    set_fn = file://${d_lib_ram}/.grot/.opt/.mul/set_fn
    singl_fn = file://${d_lib_ram}/.grot/.opt/.mul/singl_fn
    util = file://${d_lib_ram}/.grot/.opt/.mul/util



${NORMAL}"
        return 0
    fi

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

    # l_00_echo_gras "${FNN} [] \$1 :: 'ins_fl = file://$ptr_path_1 '"
    # l_00_echo_gras "${FNN} [] \$2 :: 'rcv_str = $2'"
    # l_00_echo_gras "${FNN} [pth_to_any_tml] {$dr_any} :: '{} = file://$ptr_path_3/any.f '"
    # l_00_echo_gras "${FNN}[chiced dir]{num8} :: 'tml_dir_pth = file://$dir_res_itky54271 '"
    # l_00_echo_gras "${FNN}[discribe var]{origin var} :: 'tml_dir_pth = file://$dir_res_itky54271 '"

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

    local prv_dta_lst=${d_data_ram}/.grot/.opt/.lst/1.v
    local prv_dta_var=${d_data_ram}/.grot/.opt/.var/1.v
    local prv_cns_var=${d_data_ram}/.grot/.opt/.cns/1.v

    local ham_sys=${d_lib_ram}/.grot/.opt/.prc/ham

    local set_fn=${d_lib_ram}/.grot/.opt/.mul/set_fn
    local singl_fn=${d_lib_ram}/.grot/.opt/.mul/singl_fn
    local util=${d_lib_ram}/.grot/.opt/.mul/util

    local arr_up=("$set_fn" "$singl_fn" "$util" "$prv_dta_lst" "$prv_dta_var" "$ham_sys")

    local dr_up=
    local ret1=0

    for dr_up in ${arr_up[@]}; do
        l_01_c_up ${dr_up} || {
            l_00_echo_ret1 "'$FNN() $*' in file://${fn_sh_file} , line=${LINENO} :: EXEC_FALSE 'l_01_c_up file://${dr_up} ' :: ret1=1"
            ret1=1
        }
    done

    local stl_00_nm_opi_repo_bare=
    stl_00_nm_opi_repo_bare=$(l_02_f2e ${prv_cns_var}/stl_00_nm_opi_repo_bare.cns.lstX) || {
        l_00_echo_ret1 "'$FNN() $*' in file://${fn_sh_file} , line=${LINENO} :: NOT_FILE 'l_02_f2e file://${prv_cns_var}/stl_00_nm_opi_repo_bare.cns.lstX ' where '\$3=$3' return 1"
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 1
    }

    [[ 0 -eq ${ret1} ]] || {
        l_00_echo_ret1 "'$FNN() $*' in file://${fn_sh_file} , line=${LINENO} :: FLAG_FALSE 'ret1=1' return 1"
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 1
    }

    :

    l_00_echo_gras "${FNN}[pth from dta file :: ${prv_cns_var}/stl_00_nm_opi_repo_bare.cns.lst ]{origin var:stl_00_nm_opi_repo_bare} :: 'repo_bare_pth = file://$stl_00_nm_opi_repo_bare '"

    #? ----- END _XXX body -----
}

_stl_00_nm_opi "$@"

# tst_prc_stl_00_before_return
# cd "$PPWD" || echo "in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
# return 0
# }

# cd "${idir}"
# unset filename
# #{post_fn}
