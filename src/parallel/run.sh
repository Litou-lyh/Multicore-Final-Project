#!/bin/bash
rm -rf build
mkdir build
cd build
cmake ..
make
echo ""
if [ ! -n "$1" ];
then
	echo "Running with 1 thread"
   ./ORBExtractor ../../../imgs/train4.jpg ../../../kpts/keypoints.txt ./out.txt 1
else
	echo "Running with $1 threads"
	./ORBExtractor ../../../train4.jpg ../../../keypoints.txt ./out.txt "$1"

fi
echo ""
echo "Head of output: "
head ./out.txt
