#!/bin/bash

echo -e "${BLUE}--- that file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/before_git.sh ---${NORMAL}" #sistem info mesage

before_git() {
    local ret1=0
    l_99_tst_l || ret1=1

    [[ $(l_02_d2z ${STL_D_PATH}/prc.d/boot_stl_fn.d/__bcp_fn) -lt 1000 ]] || {
        l_00_echo_err "l_02_d2z ${STL_D_PATH}/prc.d/boot_stl_fn.d/__bcp_fn > 1000"
        ret1=1
    }

    [[ 0 -eq ${ret1} ]] || return 1
    return 0
}

if ! before_git; then
    echo "in file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/before_git.sh : FAIL_EXEC : before_git() : return 1" >&2
    return 1
fi
