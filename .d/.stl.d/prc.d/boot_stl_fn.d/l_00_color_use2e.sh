#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV:
# ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# INV:
# ${WHT} ${BLK} ${RED} ${GRN} ${YLW} ${BLU} ${MGN} ${CYN} ${GRY}
# ${NRM} ${ULN} ${U2L} ${LLG} ${HLG} ${MIG} ${CRS}

l_00_color_use2e() {

    echo -e "

    W WHT
    N BLK
    R RED
    G GRN
    Y YLW
    B BLU
    M MGN
    C CYN
    D GRN

    L LLG
    H HLG

    Z NRM

    F font
    E ground
    X revece font-ground



    IRIS short:

    NRM - reset

    LLG - low brightness
    HLG - hight brightness
    
    BLK - black
    RED - red
    GRN - green
    YLW - yellow
    BLU - blue
    MGN - purple
    CYN - cyan
    GRY - grey
    WHT - white


    RVC - revece font-ground
    ULN - under line
    U2L - under 2 line
    ITL - italy
    MIG - mig
    CRS - cros

    BLKG - black ground NG
    REDG - red ground RG 
    GRNG - green ground
    YLWG - yellow ground
    BLUG - blue ground
    MGNG - purple ground
    CYNG - cyan ground
    WHTG - white ground

$RED RED - red $NRM
$GRN GRN - green $NRM
$YLW YLW - yellow $NRM
$BLU BLU - blue $NRM
$MGN MGN - purple $NRM
$CYN CYN - cyan $NRM
$GRY GRY - grey $NRM

$WBLKG WBLKG=\$WHT\$BLKG $NRM
$BREDG BREDG=\$BLK\$REDG $NRM
$BGRNG BGRNG=\$BLK\$GRNG $NRM
$BYLWG BYLWG=\$BLK\$YLWG $NRM
$BBLUG BBLUG=\$BLK\$BLUG $NRM
$BMGNG BMGNG=\$BLK\$MGNG $NRM
$BCYNG BCYNG=\$BLK\$CYNG $NRM
$BWHTG BWHTG=\$BLK\$WHTG $NRM

$RYLWG  RYLWG=$RED$YLWG
    RBLUG=$RED$BLUG
    RMGNG=$RED$MGNG
    RCYNG=$RED$CYNG
    RWHTG=$RED$WHTG


"
    return 0
}
