#!/bin/bash

: >$tml_dir_pth/u.1

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

[[ -n "${ARG_l_06_xds71[2]}" ]] && {

    [[ "${ARG_l_06_xds71[2]}" == "-h" ]] && {
        echo -e "
    "
        return 0
    }
}

l_02_pa3e ARG_l_06_xds71 >>$tml_dir_pth/u.1
l_02_pa3e ARG_l_04_od7xfv >>$tml_dir_pth/u.1

l_00_echo_exec ". file://$tml_dir_pth/xf.sh"

#? START procedure ========================================
# l_00_echo_code "'ls -A ${ARG_l_06_xds71[@]:2}' in 'pwd=$(pwd)'" >>$tml_dir_pth/u.1
# ls -A "${ARG_l_06_xds71[@]:2}" >>$tml_dir_pth/u.1
#? END procedure ========================================
