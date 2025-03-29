#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} line=${LINENO} :: CAUS_NAME 'code' :: return 1" >&2

l_00_warn_p_r0() {
    echo -e "${ECHO_WARN}$*${NRM}
${ECHO_INFO}ETR - continue, ^C - exit process${NRM}"
    read -r
    return 0
}
