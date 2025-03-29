#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}

l_00_err_p_r0() {
    echo -e "${ECHO_ERR}$*${NRM}
${ECHO_INFO}ETR - continue, ^C - exit shell process${NRM}"
    read -r
    return 0
}
