#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}

l_00_color_self() {
    echo -e "${CYAN}--- start : ${FUNCNAME}() $@ ---${NORMAL}"

    if [ "-h" == "$1" ]; then
        echo -e "
MAIN: ${FUNCNAME} :: 
TAGS:
\$1 
[, \$2]
"
        return 0
    fi

    # INVER='\033[33;5;7m'
    # MIG='\e[41m'

    # for item1 in {0..8}; do
    #     eval "COLOR_${item1}='\033[${item1};31m'"
    # done

    # for item1 in {0..8}; do
    #     for item2 in {0..8}; do
    #         eval "COLOR_${item1}${item2}='\033[${item1}${item2};31m'"
    #     done
    # done

    # for item0 in {0..8}; do
    #     for item1 in {0..8}; do
    #         for item2 in {0..8}; do
    #             eval "COLOR_${item0}${item1}${item2}_31='\033[${item0}${item1}${item2};31m'"
    #         done
    #     done
    # done

    # for item1 in {0..8}; do
    #     for item2 in {0..8}; do
    #         for item3 in {0..8}; do
    #             for item4 in {0..8}; do
    #                 eval "COLOR_${item1}${item2}_${item3}${item4}='\033[${item1}${item2}\033[${item3}${item4}m'"
    #             done
    #         done
    #     done
    # done

    #? ALIASE_OLD
    NORMAL='\033[0m'
    NRM='\033[0m'

    HLIGHT='\033[1m'
    HLG='\033[1m'

    LLIGHT='\033[2m'
    LLG='\033[2m'

    BLACK='\033[0;30m'
    BLK='\033[0;30m'
    FN='\033[0;30m'
    FN='\033[0;30m'

    RED='\033[0;31m'
    FR='\033[0;31m'

    GREEN='\033[0;32m'
    GRN='\033[0;32m'
    FG='\033[0;32m'

    YELLOW='\033[0;33m'
    YLW='\033[0;33m'
    FY='\033[0;33m'

    BLUE='\033[0;34m'
    BLU='\033[0;34m'
    FB='\033[0;34m'

    MAGENTA='\033[0;35m'
    MGN='\033[0;35m'
    FM='\033[0;35m'

    CYAN='\033[0;36m'
    CYN='\033[0;36m'
    FC='\033[0;36m'

    GRAY='\033[0;37m'
    GRY='\033[0;37m'
    FD='\033[0;37m'


    WHITE='\033[38m'
    WHT='\033[38m'
    FW='\033[38m'

    #? ALIASE_CUR
    CFYUP='\033[1m'
    CFYDW='\033[2m'

    FITAL='\033[3m'
    ITL='\033[3m'

    ULINE='\033[4m'
    ULN='\033[4m'

    FMIG='\033[5m'
    MIG='\033[5m'

    FGREV='\033[7m'
    RVC='\033[7m'

    FDEL='\033[8m'

    FCROS='\033[9m'
    CRS='\033[9m'

    U2LINE='\033[21m'
    U2L='\033[21m'

    APLINE='\033[53m'

    #? whell usefull
    WBLKG=$WHT$BLKG

    BREDG=$BLK$REDG
    BGRNG=$BLK$GRNG
    BYLWG=$BLK$YLWG
    BBLUG=$BLK$BLUG
    BMGNG=$BLK$MGNG
    BCYNG=$BLK$CYNG
    BWHTG=$BLK$WHTG

    CM_0='\033[0m'
    CM_1='\033[1m'
    CM_2='\033[2m'

    FM_3='\033[3m'   # FITAL
    FM_4='\033[4m'   # ULINE
    FM_5='\033[5m'   # FMIG
    FM_6='\033[6m'   # FMIG
    FM_7='\033[7m'   # FGREV
    FM_8='\033[8m'   # FDEL
    FM_9='\033[9m'   # FCROS
    FM_21='\033[21m' # U2LINE
    FM_53='\033[53m' # APLINE

    FC_0='\033[30m' # black
    FC_1='\033[31m' # red
    FC_2='\033[32m' # green
    FC_3='\033[33m' # yellow
    FC_4='\033[34m' # blue
    FC_5='\033[35m' # purple
    FC_6='\033[36m' # cyan
    FC_7='\033[37m' # white

    GCN_0='\033[40m'
    GCN_1='\033[41m'
    GCN_2='\033[42m'
    GCN_3='\033[43m'
    GCN_4='\033[44m'
    GCN_5='\033[45m'
    GCN_6='\033[46m'
    GCN_7='\033[47m'

    GCH_0='\033[100m'
    BLKG='\033[100m'

    GCH_1='\033[101m'
    REDG='\033[101m'

    GCH_2='\033[102m'
    GRNG='\033[102m'

    GCH_3='\033[103m'
    YLWG='\033[103m'

    GCH_4='\033[104m'
    BLUG='\033[104m'

    GCH_5='\033[105m'
    MGNG='\033[105m'

    GCH_6='\033[106m'
    CYNG='\033[106m'

    GCH_7='\033[107m'
    WHTG='\033[107m'

    GCZ_0='\033[40m'
    GCZ_1='\033[41m'
    GCZ_2='\033[42m'
    GCZ_3='\033[43m'
    GCZ_4='\033[44m'
    GCZ_5='\033[45m'
    GCZ_6='\033[46m'
    GCZ_7='\033[47m'
    GCZ_8='\033[100m'
    GCZ_9='\033[101m'
    GCZ_10='\033[102m'
    GCZ_11='\033[103m'
    GCZ_12='\033[104m'
    GCZ_13='\033[105m'
    GCZ_14='\033[106m'
    GCZ_15='\033[107m'

    for cm in 1 2; do
        for fc in {0..7}; do
            for gcz in {0..15}; do
                eval "ST_MFG_0_${cm}_${fc}_${gcz}=\$CM_${cm}\$FC_${fc}\$GCZ_${gcz}"
                eval "ST_MFG_1_${cm}_${fc}_${gcz}=\${FM_7}\$CM_${cm}\$FC_${fc}\$GCZ_${gcz}"
            done
        done
    done

    for fc in {0..7}; do
        eval "GCZ0CM1_${fc}=\$CM_1\$GCZ_0\$FC_${fc}"
    done

    # for cm in 1 2; do
    #     for fc in {0..7}; do
    #         for gcz in {0..15}; do
    #             eval "ST_MFGR_${cm}_${fc}_${gcz}=\${FM_7}\$CM_${cm}\$FC_${fc}\$GCZ_${gcz}"
    #         done
    #     done
    # done

}

l_00_color_self @
