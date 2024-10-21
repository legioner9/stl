#!/bin/bash

echo -e "${BLUE}--- that file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/cp_dotstldotd.sh ---${NORMAL}" #sistem info mesage

cp_dotstldotd() {
    diff -r ${HOME}/.stl.d ${REPO_PATH}/${name_repo}/.d/.stl.d || {
        is_yes_boot_stl "cp -rf ${HOME}/.stl.d ${REPO_PATH}/${name_repo}/.d/.stl.d" && {
            echo "exec: cp -fr ${HOME}/.stl.d ${REPO_PATH}/${name_repo}/.d/.stl.d"
            rm -rf ${REPO_PATH}/${name_repo}/.d/.stl.d~
            mv ${REPO_PATH}/${name_repo}/.d/.stl.d ${REPO_PATH}/${name_repo}/.d/.stl.d~
            cp -fr ${HOME}/.stl.d ${REPO_PATH}/${name_repo}/.d/.stl.d || {
                echo "in file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/cp_dotstldotd.sh : FAIL_EXEC: cp -fr ${HOME}/.stl.d ${REPO_PATH}/${name_repo}/.d/.stl.d return 1" >&2
                return 1
            }
        }

        return 0
    }
    return 0
}

if ! cp_dotstldotd; then
    echo "in file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/cp_dotstldotd.sh : FAIL_EXEC : cp_dotstldotd() : return 1" >&2
    return 1
fi
