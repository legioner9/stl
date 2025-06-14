#!/bin/bash

echo -e "${BLUE}--- that file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/rbld_readme.sh ---${NORMAL}" #sistem info mesage
# echo -e "${HLIGHT}--- git_reset__() ---${NORMAL}"

rbld_file=${REPO_PATH}/${name_repo}/.d/.opus/readme.opus/rbld_res_md.sh #start files

if [ -f ${rbld_file} ]; then

    _source_w1_isf ${rbld_file} || {
        _st_error "in fs= file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/rbld_readme.sh , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : '_source_w1_isf ${rbld_file}' : ${hint} : return 1"
        return 1
    }

fi

return 0
