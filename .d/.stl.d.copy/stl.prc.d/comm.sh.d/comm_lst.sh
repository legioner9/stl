# ifc :: <NAME_LIB_FOR_CONST>:path/<name_lib>.lib.d:path/<name_lib>.data.d

# example
# BOOT_REPO_PATH - 
# generate : STL_PATH=${HOME}/REPOBARE/_repo/stl/stl.lib.d
# generate : STL_DATA_PATH=${HOME}/REPOBARE/_repo/stl/stl.data.d
# STL - [st]one [l]ib
STL:${HOME}/REPOBARE/_repo/stl/stl.lib.d:${HOME}/REPOBARE/_repo/stl/stl.data.d

# template user stl1 lib_data
# STL1 step up from STL
# STL1:${HOME}/REPOBARE/_repo/stl1/stl1.lib.d:${HOME}/REPOBARE/_repo/stl1_data_tml/stl1.data.d

# stl1_data_st - my stl1 lib_data with my dat
STL1:${HOME}/REPOBARE/_repo/stl1/stl1.lib.d:${HOME}/REPOBARE/_repo/stl1_data_st/stl1.data.d

# example:
# stl -  issue stl lib (underground lib)
# reduced (stl_data - user stl lib_data)
# reduced (stl_data_st - my stl lib_data)

# stl1 -  issue stl1 lib (underground lib)
# stl1_data_tml - template user stl1 lib_data
# stl1_data_st - my stl1 lib_data with my data
