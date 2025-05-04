#!/bin/bash

cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_zip_to.tst.d || echo "cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_zip_to.tst.d EXEC_FALI" >&2

# if true; then
#     echo "_zip_to"
# fi

: >${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_zip_to.tst.d/res

# cd tst.d/src_init_dir || echo "NOT_DIR tst.d/src_init_dir" >&2\

# rm tst.d/dist_init_dir/dist.f.zip &>/dev/null
# rm tst.d/dist_init_dir/dist.f.zip

mkdir ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_zip_to.tst.d/tst.d/dist_init_dir &>/dev/null
rm -r ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_zip_to.tst.d/tst.d/unzip_init_dir &>/dev/null
mkdir ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_zip_to.tst.d/tst.d/unzip_init_dir &>/dev/null

flag=1

echo -e "${HLIGHT}--- exec: _zip_to tst.d/dist_init_dir/dist.f tst.d/src_init_dir/src.f ---${NORMAL}" #start files

if ! _zip_to tst.d/dist_init_dir/dist.f tst.d/src_init_dir/src.f; then
    echo "in fs= file:// , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '_zip_to tst.d/dist_init_dir/dist.f tst.d/src_init_dir/src.f' : ${hint} : flag=0" >&2
    flag=1
fi
_unzip_to tst.d/unzip_init_dir tst.d/dist_init_dir/dist.f.zip
echo -e "${HLIGHT}--- exec: _zip_to tst.d/dist_init_dir/dist.d tst.d/src_init_dir/src.d ---${NORMAL}" #start files

if ! _zip_to tst.d/dist_init_dir/dist.d tst.d/src_init_dir/src.d; then
    echo "in fs= file:// , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '_zip_to tst.d/dist_init_dir/dist.d tst.d/src_init_dir/src.d' : ${hint} : flag=0" >&2
    flag=1
fi
_unzip_to tst.d/unzip_init_dir tst.d/dist_init_dir/dist.d.zip
pwd

tree tst.d

if ! diff -qr tst.d/unzip_init_dir tst.d/src_init_dir; then
    echo "tst _zip_to diff -qr tst.d/unzip_init_dir tst.d/src_init_dir : FAIL" >${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_zip_to.tst.d/res
else
    echo "tst _zip_to diff -qr tst.d/unzip_init_dir tst.d/src_init_dir : TRUE" >${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_zip_to.tst.d/res
fi

# rm -r ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_zip_to.tst.d/tst.d/dist_init_dir

# _zip_to >/dev/null

# cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_zip_to.tst.d || echo "cd ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_zip_to.tst.d EXEC_FALI" >&2

if ! diff -q res pre >/dev/null; then
    flag=0
fi

if [ 0 -eq "$flag" ]; then
    echo "in file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_zip_to.tst.d/_zip_to.tst.sh fail" >&2
    diff res pre >&2
    return 1
else
    echo "in file://${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_zip_to.tst.d/_zip_to.tst.sh true"
    return 0
fi
