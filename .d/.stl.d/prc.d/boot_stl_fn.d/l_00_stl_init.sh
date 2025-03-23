#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}

l_00_stl_init() { # source .stldrc
    echo "source ${STL_D_PATH}/.stldrc"
    source ${STL_D_PATH}/.stldrc
}
