rm -rf build
mkdir build
cd build
cmake ..
make
echo ""
echo "Running..."
./ORBExtractor ../../../train4.jpg ../../../keypoints.txt ./out.txt
echo ""
echo "Head of output: "
head ./out.txt