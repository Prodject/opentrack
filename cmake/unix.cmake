# this file only serves as toolchain file when specified so explicitly
# when building the software. from repository's root directory:
# mkdir build && cd build && cmake -DCMAKE_TOOLCHAIN_FILE=$(pwd)/../cmake/mingw-w64.cmake
# -sh 20140922

SET(CMAKE_C_COMPILER    cc)
SET(CMAKE_CXX_COMPILER  c++)

SET(CMAKE_FIND_ROOT_PATH /usr)

set(cpu "-O3 -march=native -ffast-math -g")
set(CFLAGS-OVERRIDE "" CACHE STRING "")

set(CMAKE_C_FLAGS_RELEASE "${cpu} ${CFLAGS-OVERRIDE}" CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS_RELEASE ${CMAKE_C_FLAGS_RELEASE} CACHE STRING "" FORCE)
set(CMAKE_SHARED_LINKER_FLAGS_RELEASE "${cpu} ${CFLAGS-OVERRIDE}" CACHE STRING "" FORCE)
set(CMAKE_EXE_LINKER_FLAGS_RELEASE ${CMAKE_SHARED_LINKER_FLAGS_RELEASE} CACHE STRING "" FORCE)
set(CMAKE_MODULE_LINKER_FLAGS_RELEASE ${CMAKE_SHARED_LINKER_FLAGS_RELEASE} CACHE STRING "" FORCE)
set(CMAKE_BUILD_TYPE "RELEASE" CACHE STRING "" FORCE)