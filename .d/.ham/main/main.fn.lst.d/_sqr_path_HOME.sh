echo -e "${BLUE}--- that file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/sqr_path_HOME.sh ---${NORMAL}" #sistem info mesage

sqr_path_HOME() {
    local ret1=0
    # l_01_stl_init || ret1=1

    local sqr_path=${REPO_PATH}/${name_repo}/.d/.ham/_sqr_path

    [[ -d ${sqr_path} ]] || {
        mkdir -p ${sqr_path} || ret1=1
    }

    grep -rl ${REPO_PATH}/${name_repo} > ${sqr_path}/HOME.sqr_p th

    [[ 0 -eq ${ret1} ]] || return 1
    return 0
}

if ! sqr_path_HOME; then
    echo "in file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/before_git.sh : FAIL_EXEC : before_git() : return 1" >&2
    return 1
fi
