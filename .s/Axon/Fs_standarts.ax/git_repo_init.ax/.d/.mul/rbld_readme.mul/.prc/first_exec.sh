#!/bin/bash

_is_yes "start this file in his directory YOU_REPO/.d/.mul/rbld_readme.mul/.prc '$(pwd)' ?" || return 0

root_path="$(pwd)"
dir_root_path=$(dirname ${root_path})

_is_yes "EXEC ufl_stl0 9 first start ?" && {

    ufl_stl0 9 ${dir_root_path}/.cnx ${dir_root_path}/.prc/README.md 2
    _st_info "insert CHAPT in README.md"
}

_is_yes "insert path to rbld_readme.sh ?" && {
    _s2f {{path_to_rbld_readme_mul}} ${dir_root_path} ${root_path}/rbld_readme.sh
    _s2f "${HOME}" '${HOME}' ${root_path}/rbld_readme.sh
}

_is_yes "start rbld_readme.sh ?" && {
    echo -e "${HLIGHT}--- . ${root_path}/rbld_readme.s ---${NORMAL}"
    . ${root_path}/rbld_readme.sh
}
