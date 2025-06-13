#!/bin/bash
l_00_echo_exec ". file://${tml_dir_pth}/xf.sh"

# ${HOME} global variable
# first free arg ARGS[2] is $3 from l_04_od8xfv
# $PPWD from clothure of l_02_ixfv
# num from pre_exec_file
# echo file://$(pwd)/"${line}"

local ARG_23edew=("${ARGS[@]}")
[[ -n "${ARGS[0]}" ]] && l_02_pa3e ARG_23edew

: >${tml_dir_pth}/u.1
# l_00_echo_code "ls -A ${ARGS[2]} :: " | tee -a ${tml_dir_pth}/u.1
l_00_echo_code "ls -A ${ARGS[@]:2} :: " | tee -a ${tml_dir_pth}/u.1
ls -A "${ARGS[2]}" | tee -a ${tml_dir_pth}/u.1
# echo "${num} : ${ARGS[2]}${line}"
# num=$((num + 1))
