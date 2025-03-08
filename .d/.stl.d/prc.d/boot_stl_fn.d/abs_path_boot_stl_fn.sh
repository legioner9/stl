#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location .stl.d/prc.d/boot_stl_fn.d

abs_path_boot_stl_fn() {
    if [[ -z "$2" ]]; then
        echo "_abs_path() : \$2 NOT_DEFINE , hint : '$3' : return 1" 1>&2
        return 1
    fi
    local dpwd="$1"
    if ! _is_root "${dpwd}"; then
        echo "_abs_path() : '${dpwd}' NOT_ROOT , hint : '$3' : return 1" 1>&2
        return 1
    fi
    eval local arg2=\${$2}
    if [ "@" == "$arg2" ]; then
        echo ${dpwd}
        return 0
    fi
    if [[ -z "$arg2" ]]; then
        echo "_abs_path() : \$\$2 => '\$$2' NOT_DEFINE , hint : '$3' : return 1" 1>&2
        return 1
    fi
    if _is_root "${arg2}"; then
        echo ${arg2}
    else
        echo ${dpwd}/${arg2}
    fi

}
