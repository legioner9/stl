#!/bin/bash

is_yes_boot_stl() {
    local yes
    read -r -p "only 'y' is yes. QUESTION: $1" yes

    if [ "${yes:-no}" == "y" ]; then
        return 0
    else
        return 1
    fi
}
