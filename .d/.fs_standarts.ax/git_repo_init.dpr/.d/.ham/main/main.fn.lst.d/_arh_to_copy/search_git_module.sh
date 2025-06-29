#!/bin/bash

echo -e "${BLUE}--- that file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/search_git_module.sh ---${NORMAL}" #sistem info mesage
echo -e "${HLIGHT}--- search_git_module() ---${NORMAL}"                                                            #start files

search_git_module_proc__ham__d() {

    find ${REPO_PATH}/stl -type d -name .git
    local arr_mod=($(find ${REPO_PATH}/${name_repo} -type d -name .git))

    [[ -n "${arr_mod[1]}" ]] && {
        l_00_echo_ret1 "'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_EMPTY 'find  file://${REPO_PATH}/${name_repo} -type d -name .git ' where '\$3=$3' return 1"
        for module in ${arr_mod[@]:1}; do
            l_00_echo_info "'\$module = file://$module '"
        done
        cd "$PPWD" || echo -e "${ECHO_WARN}in fs= file://${fn_nm} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 1
    }

    return 0
}

if ! search_git_module_proc__ham__d ""; then
    echo "in file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/search_git_module.sh : FAIL_EXEC : search_git_module_proc__ham__d() : return 1" >&2
    return 1
fi

return 0
