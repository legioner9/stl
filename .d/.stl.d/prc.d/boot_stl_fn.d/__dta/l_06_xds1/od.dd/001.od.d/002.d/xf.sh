#!/bin/bash

# ${HOME} global variable
# first free arg ARGS[2] is $3 from l_02_ixfv
# $PPWD from clothure of l_02_ixfv
# num from pre_exec_file
# echo file://$(pwd)/"${line}"

echo "${num} : ${ARGS[2]}${line}"
num=$((num + 1))
