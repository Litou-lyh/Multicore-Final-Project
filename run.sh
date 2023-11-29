#!/bin/bash
rm -rf build
mkdir build
cd build
cmake ..
make
echo ""
./ORBExtractor ./train4.jpg ./keypoints.txt ./out.txt 1
