#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location .stl.d/prc.d/boot_stl_fn.d

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}

da_421545() {

#     # hint="\$1: \$2: "
#     # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
#     #     return 1
#     # fi

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

#     #[[ptr_path]]
#     #! ptr_path
#     # local ptr_path="$1"
#     # ptr_path="$(_abs_path "${PPWD}" "ptr_path")"

#     # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
#     # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
#     # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3
#     # tml {{PPWD}}
#     # path2nom2d_YYY :: path2nom_YYY for all files (with prev) in dir $1
#     # path2nom_YYY :: _s2f ${PATH} '${REPO_PATH}' $1 : ST_RC_D_PATH, ST_RC_D_DATA_PATH, ST_RC_DATA_PATH, REPO_PATH, HOME
#     # _s2d "$HOME/"" '/' $dir - that only for .md path (before normalize path)

#     #* [ $di -eq 1 ] && echo "info"

#     #* standart echo fl
#     # _st_exit "in fs= file://${} , line=${LINENO}, EXEC: ${FNN} $* : 'SIGN_STR' (\$N) : 'file://${}' : ${hint} : return 1"
#     # cd "$PPWD" || echo "EXEC_FAIL : 'cd $PPWD' :: return 0|1" >&2
#     # return 1

#     #* greeting
#     # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

#     #* errno
#     # cmd arg
#     # errno=$?
#     # return ${errno}

#     #* rename args

#     #* check cntl

#     #* inname cntl

#     tst_prc_0stl_before_return() {
#         :
#     }

#     #* define local variables



    #? ----- START _XXX body_flow -----

    #* {{fn_sh_body}}
    echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

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
    _flow_1     : . _flow_tst.sh.v1 : . file://${d_name}/_tst/_flow_tst.sh.v1

    _hie_m      : more hie_file     : more file://${fn_hie_file} 
    _hie_e      : _edit hie_file    : _edit file://${fn_hie_file} 

    _depo_d_e   : depo data : use by ${FNN} : _edit $depo_dir : _edit file://${depo_dir}
    _opt_d_e    : opt data  : use by user   : _edit $opt_dir : _edit file://${opt_dir}    
    
RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERROR: ( if ... return 0 | if ... return 1 )
EXAM:
    ${FNN} 

    \$PPWD= file://$PPWD
    \${ARGS[@]}=${ARGS[@]}
    \${NARGS}=${NARGS}

    fn_hie_file= file://"${fn_sh_grot}/${FNN}.hie"
    fn_sh_file= file://"${fn_sh_grot}/${FNN}.prc"
    d_name= file://$(dirname ${fn_sh_file})

    opt_dir= file://${fn_sh_grot}/.opt
    opt_lst_dir= file://${fn_sh_grot}/.opt/.lst
    opt_prc_dir= file://${fn_sh_grot}/.opt/.prc
    opt_tml_dir= file://${fn_sh_grot}/.opt/.tml
    depo_dir= file://${fn_sh_grot}/.depo

    sublib_pth= file://${sublib_pth}
    sublib_pfx= ${sublib_pfx}
    sublib_nm= ${sublib_nm}

${NORMAL}"
        return 0
    fi
    :

    #? ----- END _XXX body -----
}

da_421545 "$@"

# tst_prc_0stl_before_return
# cd "$PPWD" || echo "in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
# return 0
# }

# cd "${idir}"
# unset filename
# #{post_fn}
