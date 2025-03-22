#!/bin/bash

l_01_source() { # source $1
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD

    [ -n "$1" ] || {
        echo -e "exec:'${FNN} $*' in file://${STL_D_PATH}/prc.d/${FNN} , line=${LINENO} 
expl: \$1 EMPTY
evnt: FAIL_EXEC :: '[ -n \"$1\" ]'
actn: return 1" >&2
        cd "${PWD}" || echo "'${FNN} $*' in file://${STL_D_PATH}/prc.d/${FNN} , line=${LINENO} :: FAIL_EXEC :: 'cd \"${PWD}\"' :: return 1" >&2
        return 1
    }

    [ -f "$1" ]
}
