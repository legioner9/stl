#!/bin/bash

# ${HOME} global variable
# ARGS[2] is $3 from l_02_ixfv
# num from pre_exec_file

num=$((num * ARGS[2] + 1))
echo "${num}:${line} '\${HOME}=${HOME}'"
