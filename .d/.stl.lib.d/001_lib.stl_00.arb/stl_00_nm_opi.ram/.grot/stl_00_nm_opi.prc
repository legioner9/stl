#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location .stl.d/prc.d/boot_stl_fn.d

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}

_stl_00_nm_opi() {

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
    :


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
