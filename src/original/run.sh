rm -rf build
mkdir build
cd build
cmake ..
make
echo ""
echo "Running..."
./ORBExtractor ../../../imgs/train4.jpg ../../../kpts/keypoints.txt ./out.txt
echo ""
echo "Head of output: "
head ./out.txt
