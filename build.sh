#!/usr/bin/env bash

set -e -E

if [[ $1 == "-h" || $1 == "--help" ]]; then
    echo "Usage: ./build.sh [--install]"
    exit 0
fi

mkdir -p build
cd build
cmake ..  -DCMAKE_INSTALL_PREFIX:PATH=/usr
make C_FLAGS='-g '

if [[ $1 == "--install" ]]; then
    sudo make install
else
    ./ympd
fi

cd ..

