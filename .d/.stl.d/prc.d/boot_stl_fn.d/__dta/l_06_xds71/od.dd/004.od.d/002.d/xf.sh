#!/bin/bash

# ${HOME} global variable
# first free arg ARGS[2] is $3 from l_02_ixfv
# $PPWD from clothure of l_02_ixfv
# num from pre_exec_file
local pml_jar=${STL_D_PATH}/data.d/cdn.d/plantuml.jar


: >${tml_dir_pth}/u.1
# l_00_echo_code "ls -A ${ARGS[2]} :: " | tee -a ${tml_dir_pth}/u.1
l_00_echo_code "java -jar ${pml_jar} :: " | tee -a ${tml_dir_pth}/u.1
java -jar ${pml_jar} -filename ${ARGS[2]} -o ${ARGS[3]}  ${ARGS[4]}| tee -a ${tml_dir_pth}/u.1
