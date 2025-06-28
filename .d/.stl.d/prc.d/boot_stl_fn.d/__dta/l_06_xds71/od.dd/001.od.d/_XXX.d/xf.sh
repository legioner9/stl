#!/bin/bash

: >$tml_dir_pth/u.1

# ${ARG_l_04_od7xfv[@]} args l_04_od7xfv
# ${ARG_l_06_xds71[@]} args l_06_xds71

l_02_pa3e ARG_l_06_xds71 >>$tml_dir_pth/u.1
l_02_pa3e ARG_l_04_od7xfv >>$tml_dir_pth/u.1

l_00_echo_exec ". file://$tml_dir_pth/xf.sh"
