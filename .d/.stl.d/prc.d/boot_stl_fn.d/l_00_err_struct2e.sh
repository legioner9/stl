#!/bin/bash

l_01_err_struct2e() {
    echo -e "exec:'\${FNN} \$*' in file://\${STL_D_PATH}/prc.d/\${FNN} , line=\${LINENO} 
expl: str_expl
evnt: nm_err :: 'bdy_err'
actn: return num_ret >&2"
}
