#!/bin/bash

# ${HOME} global variable
# first free arg ARGS[2] is $3 from l_02_ixfv
# $PPWD from clothure of l_02_ixfv
# num from pre_exec_file
# echo file://$(pwd)/"${line}"


: >${tml_dir_pth}/u.1
# l_00_echo_code "ls -A ${ARGS[2]} :: " | tee -a ${tml_dir_pth}/u.1
l_00_echo_code "echo ${line//${ARGS[2]}/ }"
# ls -A "${ARGS[2]}" | tee -a ${tml_dir_pth}/u.1

echo ${line//${ARGS[2]}/ } | tee -a ${tml_dir_pth}/u.1
# echo "${num} : ${ARGS[2]}${line}"
# num=$((num + 1))
