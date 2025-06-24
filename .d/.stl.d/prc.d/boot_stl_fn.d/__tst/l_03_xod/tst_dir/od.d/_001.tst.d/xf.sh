#!/bin/bash

# ${ptr_path_1} fl_xf arg_1 l_02_ixfv
# ${ptr_path_2} fl_gv arg_2 l_02_ixfv

# ${ARGS_1234cedfc[@]} args l_03_ixod

# l_02_pa3e ARGS_1234cedfc
# l_00_echo_info "'\$ptr_path_1 = $ptr_path_1'"
# l_00_echo_info "'\$ptr_path_2 = $ptr_path_2'"

# l_00_echo_exec ". file://${ptr_path_1}"

# ${ARGS_1234cedfc[0]} - od_dr as arg $1

echo "${num} : ${ARGS_1234cedfc[1]} - ${line}"
num=$((num + 1))
