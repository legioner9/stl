#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV:
# ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# INV:
# ${WHT} ${BLK} ${RED} ${GRN} ${YLW} ${BLU} ${MGN} ${CYN} ${GRY}
# ${NRM} ${ULN} ${U2L} ${LLG} ${HLG} ${MIG} ${CRS}

l_00_avesom_color2e() {

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
    P delete font
    



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

    FE - delete chars


$FN FN - black $NRM
$FNL FNL - blackl $NRM
$FNH FNH - blackh $NRM

$FR FR - red $NRM
$FRL FRL - redl $NRM
$FRH FRH - redh $NRM

$FG FG - green $NRM
$FGL FGL - greenl $NRM
$FGH FGH - greenh $NRM

$FY FY - yellow $NRMFGH
$FYL FYL - yellowl $NRMFGH
$FYH FYH - yellowh $NRMFGH

$FB FB - blue $NRM
$FBL FBL - bluel $NRM
$FBH FBH - blueh $NRM

$FM FM - purple $NRM
$FML FML - purplel $NRM
$FMH FMH - purpleh $NRM

$FC FC - cyan $NRM
$FCL FCL - cyanl $NRM
$FCH FCH - cyanh $NRM

$FD FD - grey $NRM
$FDL FDL - greyl $NRM
$FDH FDH - greyh $NRM

$FW FW - white $NRM
$FWL FWL - whitel $NRM
$FWH FWH - whiteh $NRM

$ENL ENL - blackl ground $NRM
$ENH ENH - blackg ground $NRM

with font \$FN
$FN$ERL ERL - redl ground $NRM
$FN$ERH ERH - redh ground $NRM

$FN$EGL EGL - greenl ground $NRM
$FN$EGH EGH - greenh ground $NRM

$FN$EYL EYL - yellowl ground $NRM
$FN$EYH EYH - yellowh ground $NRM

$FN$EBL EBL - bluel ground $NRM
$FN$EBH EBH - blueh ground $NRM

$FN$EML EML - purplel ground $NRM
$FN$EMH EMH - purpleh ground $NRM

$FN$ECL ECL - cyanl ground $NRM
$FN$ECH ECH - cyanh ground $NRM

$FN$EDL EDL - greyl ground $NRM
$FN$EDH EDH - greyh ground $NRM

"

    local font=(FN FNL FNH
        FR FRL FRH
        FG FGL FGH
        FY FYL FYH
        FB FBL FBH
        FM FML FMH
        FC FCL FCH
        FD FDL FDH
        FW FWL FWH
    )

    local ground=(ENL ENH
        ERL ERH
        EGL EGH
        EYL EYH
        EBL EBH
        EML EMH
        ECL ECH
        EDL EDH
    )

    for fnt in ${font[@]}; do
        for grn in ${ground[@]}; do
            eval "echo -e \"\\\$\$fnt\\\$\$grn \$$fnt\$$grn SDFfhn.;90*&\$NRM\" \"\\\$\$fnt\\\$\$grn\\\$RVC \$$fnt\$$grn\$RVC SDFfhn.;90*&\$NRM\""
        done
    done

    echo "------------AVESOME:-------------"

    font=(FN FNL FNH
        FR FRL FRH
        FG FGL FGH
        FY FYL FYH
        FB FBL FBH
        FM FML FMH
        FC FCL FCH
        FD FDL FDH
        FW FWL FWH
    )

    ground=(EDH
    )

    for fnt in ${font[@]}; do
        for grn in ${ground[@]}; do
            eval "echo -e \"\\\$\$fnt\\\$\$grn \$$fnt\$$grn SDFfhn.;90*&\$NRM\" \"\\\$\$fnt\\\$\$grn\\\$RVC \$$fnt\$$grn\$RVC SDFfhn.;90*&\$NRM\""
        done
    done

    font=(FNL FBL FML
    )

    ground=(ENL ENH
        ERL ERH
        EGL EGH
        EYL EYH
        EBL EBH
        EML EMH
        ECL ECH
        EDL EDH
    )

    for fnt in ${font[@]}; do
        for grn in ${ground[@]}; do
            eval "echo -e \"\\\$\$fnt\\\$\$grn \$$fnt\$$grn SDFfhn.;90*&\$NRM\" \"\\\$\$fnt\\\$\$grn\\\$RVC \$$fnt\$$grn\$RVC SDFfhn.;90*&\$NRM\""
        done
    done
    return 0
}
