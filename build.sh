#!/bin/sh

rm -rf googletest-release-1.10.0
wget -qO- https://github.com/google/googletest/archive/release-1.10.0.tar.gz | tar xvzf -
cd googletest-release-1.10.0
export GTEST=$(pwd)
cmake .
make
cd -
cmake .
make clean
echo "gtest directory : $GTEST"
make
