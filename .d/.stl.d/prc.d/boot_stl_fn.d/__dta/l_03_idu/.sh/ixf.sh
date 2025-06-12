#!/bin/bash

# ${HOME} global variable
# ARGS[2] is $3 from l_02_ixfv
# $PPWD from clothure of l_02_ixfv
# num from pre_exec_file
# echo file://$(pwd)/"${line}"

[[ -d "${line}" ]] && echo "${line}"
return 0
# num=$((num + 1))
