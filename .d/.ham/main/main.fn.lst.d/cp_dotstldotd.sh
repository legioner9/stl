#!/bin/bash

echo -e "${BLUE}--- that file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/cp_dotstldotd.sh ---${NORMAL}" #sistem info mesage

cp_dotstldotd() {
    diff ${HOME}/.stl.d ${REPO_PATH}/${name_repo}/.d/.stl.d || {
        echo DIFF
    }
    return 0
}

if ! cp_dotstldotd ; then
    plt_info "in file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/cp_dotstldotd.sh : FAIL_EXEC : cp_dotstldotd() : return 1"
    return 1
fi