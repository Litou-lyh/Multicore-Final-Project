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
   ./ORBExtractor ../../../train4.jpg ../../../keypoints.txt ./out.txt
else
	echo "Running with $1 threads"
	./ORBExtractor ../../../train4.jpg ../../../keypoints.txt ./out.txt

fi
echo ""
echo "Head of output: "
head ./out.txt
