#!/bin/bash

ptr_path=/home/st/REPOBARE/_repo/stl/.d/.stl.lib.d/001_lib.stl_00.arb/stl_00_flur.ram/.grot/_tst/tst_dir/echo.f

cd ${REPO_PATH}/NBash/_man/write_to_file/tst_dir
while IFS= read -r line; do
    l_00_echo_info "'\$line = $line'"
    # . "${_result}"
done <for_read.txt
