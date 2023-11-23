rm -rf build
mkdir build
cd build
cmake ..
make
./ORBExtractor ../../../train4.jpg ../../../keypoints.txt ./out.txt
head ./out.txt