#!/bin/bash

# ${HOME} global variable
# ARGS[2] is $3 from l_02_ixfv
# num from pre_exec_file
# echo file://$(pwd)/"${line}"
echo $PPWD 1
[[ -f ${PPWD}/"${line}" ]] && echo "${line}"
# num=$((num + 1))
