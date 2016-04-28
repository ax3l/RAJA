##
## Copyright (c) 2016, Lawrence Livermore National Security, LLC.
##
## Produced at the Lawrence Livermore National Laboratory.
##
## All rights reserved.
##
## For release details and restrictions, please see raja/README-license.txt
##

set(RAJA_COMPILER "RAJA_COMPILER_ICC" CACHE STRING "")

set(CMAKE_CXX_COMPILER "/collab/usr/global/tools/intel/chaos_5_x86_64_ib/ipsxe-2017.0-beta/bin/icpc" CACHE PATH "")

if(CMAKE_BUILD_TYPE MATCHES Release)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -O3 -xMIC-AVX512 -inline-max-total-size=20000 -inline-forceinline -ansi-alias -std=c++0x" CACHE STRING "")
elseif(CMAKE_BUILD_TYPE MATCHES RelWithDebInfo)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -O3 -xMIC-AVX512 -inline-max-total-size=20000 -inline-forceinline -ansi-alias -std=c++0x" CACHE STRING "")
elseif(CMAKE_BUILD_TYPE MATCHES Debug)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O0 -std=c++0x" CACHE STRING "")
endif()

set(RAJA_USE_OPENMP On CACHE BOOL "")
set(RAJA_USE_CILK On CACHE BOOL "")

set(RAJA_RANGE_ALIGN 4 CACHE INT "")
set(RAJA_RANGE_MIN_LENGTH 32 CACHE INT "")
set(RAJA_DATA_ALIGN 64 CACHE INT "")
set(RAJA_COHERENCE_BLOCK_SIZE 64 CACHE INT "")

set(RAJA_HOST_CONFIG_LOADED On CACHE Bool "")