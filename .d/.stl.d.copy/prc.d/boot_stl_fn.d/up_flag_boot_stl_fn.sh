#!/bin/bash

up_flag_boot_stl_fn() { # $1 file with flag $2 name wariable of flag

    local file_flag="$1"
    local name_var_flag="$2"

    if [ -f ${file_flag} ]; then

        eval "is_stl_log=$\${name_var_flag}"
        var_flag=$(cat ${file_flag})

        [ -z "${var_flag}" ] && {
            echo " file://${file_flag} EXIST bat EMPTY :: return 1" >&2
            return 1
        }

        [ 0 -ne ${var_flag} ] && [ 1 -ne ${var_flag} ] && {
            echo " file://${file_flag} EXIST and NOT_CONTANE '1' or '0' :: return 1" >&2
            return 1
        }

        eval "${name_var_flag}=${var_flag}"

    else

        echo 0 >${file_flag}
        echo "${name_var_flag}=0"

    fi

    return 0

}
