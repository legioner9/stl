#!/bin/bash

echo -e "${BLUE}--- that file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/empty_dir.sh ---${NORMAL}" #sistem info mesage
echo -e "${HLIGHT}--- empty_dir_proc__ham__d() ---${NORMAL}"                                    #start files

empty_dir_proc__ham__d() {

    [[ -z $(find ${REPO_PATH}/${name_repo} -not -path "${REPO_PATH}/${name_repo}/.git/*" -type d -empty) ]] || {
        # find ${REPO_PATH}/${name_repo} -not -path "${REPO_PATH}/${name_repo}/.git/*" -type d -empty
        l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_EMPTY 'find \${REPO_PATH}/\${name_repo} -not -path \${REPO_PATH}/\${name_repo}/.git/* -type d -empty)' where '\$3=$3' return 1"
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 1
    }
    return 0
}

if ! empty_dir_proc__ham__d ""; then
    echo "in file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/empty_dir.sh : FAIL_EXEC : empty_dir_proc__ham__d() : return 1" >&2
    return 1
fi

return 0
