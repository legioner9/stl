#!/bin/bash

# ${HOME} global variable
# ARGS[2] is $3 from l_02_ixfv
# num from pre_exec_file

[[ $num -eq ${ARGS[2]} ]] && echo "${line}"
num=$((num + 1))
