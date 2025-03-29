#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}

# nuntius lat. - весть

l_00_fail_p_r1() {
    echo -e "${ECHO_RET1}$*${NRM}
${ECHO_ERR}ETR - continue with 'return 1', ^C - exit shell process${NRM}"
    read -r
    return 1
}
