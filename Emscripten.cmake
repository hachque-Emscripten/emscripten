#
# This CMake file allows you to run cmake with:
#
#   cmake -C $EMSCRIPTEN_ROOT/Emscripten.cmake
#
# and target the Emscripten toolchain to build your
# project correctly.
#

set(EMSCRIPTEN_ACTIVE true)

set(CMAKE_C_COMPILER "$ENV{EMSCRIPTEN_ROOT}/emcc")
set(CMAKE_C_FLAGS "-Wall -std=c89")
set(CMAKE_C_FLAGS_DEBUG "-g")
set(CMAKE_C_FLAGS_MINSIZEREL "-Os -DNDEBUG")
set(CMAKE_C_FLAGS_RELEASE "-O4 -DNDEBUG")
set(CMAKE_C_FLAGS_RELWITHDEBINFO "-O2 -g")

set(CMAKE_CXX_COMPILER "$ENV{EMSCRIPTEN_ROOT}/em++")
set(CMAKE_CXX_FLAGS "-Wall -std=c89")
set(CMAKE_CXX_FLAGS_DEBUG "-g")
set(CMAKE_CXX_FLAGS_MINSIZEREL "-Os -DNDEBUG")
set(CMAKE_CXX_FLAGS_RELEASE "-O4 -DNDEBUG")
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "-O2 -g")

set(CMAKE_AR "$ENV{EMSCRIPTEN_ROOT}/emar")
set(CMAKE_LINKER "$ENV{EMSCRIPTEN_ROOT}/emld")
set(CMAKE_NM "$ENV{EMSCRIPTEN_ROOT}/emnm")
set(CMAKE_OBJDUMP "$ENV{EMSCRIPTEN_ROOT}/emobjdump")
set(CMAKE_RANLIB "$ENV{EMSCRIPTEN_ROOT}/emranlib")
