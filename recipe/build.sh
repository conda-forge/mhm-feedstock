#!/bin/bash
export FC=$(basename ${FC})
cmake ${CMAKE_ARGS} -DCMAKE_BUILD_TYPE=Release -DCMAKE_WITH_OpenMP=ON -B build -S .
cmake --build build --parallel
cmake --install build --prefix $PREFIX
