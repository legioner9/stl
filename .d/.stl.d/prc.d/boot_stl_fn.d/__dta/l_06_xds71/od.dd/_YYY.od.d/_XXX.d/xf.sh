#!/bin/bash

l_00_echo_exec ". file://$tml_dir_pth/xf.sh"

# ${ARG_l_04_od7xfv[@]} args l_04_od7xfv
# ${ARG_l_06_xds71[@]} args l_06_xds71

# ${ARG_l_06_xds71[@]:2} args for xf.sh
# $tml_dir_pth/.d/_dta
#  /.lst
#  /.sh
#  /.dml
# $tml_dir_pth/.d/_doc/
# rdm.man
# tgs.lst
# $tml_dir_pth/.d/_tst
# /_flow_tst_v1.sh
# /_flow_tst_v2.sh
# /ecec_n.tst

local SFN="l_06_xds71 ${ARG_l_06_xds71[@]:0:2}"

l_00_echo_code "'${SFN} ${ARG_l_06_xds71[@]:2}' "

[[ -n "${ARG_l_06_xds71[2]}" ]] && {

    [[ "${ARG_l_06_xds71[2]}" == "-h" ]] && {
        echo -e "
MAIN: '${SFN}' :: 
TAGS:
without args exec [see] :: {}
\$1 
[, \$2]
FLOW:   [if 
            -]
        
# HIE '${SFN}' 
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
    _go         : edit body     : l_02_edit $tml_dir_pth/xf.sh
    _rbld       : rebuild fn    : . file://$tml_dir_pth/xf.sh
    _tst        : tst fn        : . file://$tml_dir_pth/.d/_tst/exec_n.tst
    _flow       : tst _flow     : . file://$tml_dir_pth/.d/_tst/_flow_tst.sh
    _flow_1     : tst _flow_1   : . file://$tml_dir_pth/.d/_tst/_flow_tst_v1.sh
    _flow_2     : tst _flow_2   : . file://$tml_dir_pth/.d/_tst/_flow_tst_v2.sh

RETU: (any {0} | if: [...] {0} | if [...] {1} | result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
EXAM:   '${SFN}' [, [, ]]
see ('${SFN}' _flow_1)
flow from file \${STL_D_PATH}/prc.d/boot_stl_fn.d/__tst/${FNN}/_flow_tst_v1.sh :
    "
        return 0
    }
}

l_02_pa3e ARG_l_06_xds71
l_02_pa3e ARG_l_04_od7xfv

#? START procedure ========================================
# l_00_echo_code "'ls -A ${ARG_l_06_xds71[@]:2}' in 'pwd=$(pwd)'"
# ls -A "${ARG_l_06_xds71[@]:2}"
#? END procedure ========================================
