#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}

l_01_err_struct2e() {
    
    echo -e "exec:'\${FNN} \$*' in file://\${STL_D_PATH}/prc.d/\${FNN} , line=\${LINENO} 
expl: str_expl
evnt: nm_err :: 'bdy_err'
actn: return num_ret >&2"

}
