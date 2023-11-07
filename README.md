# Multicore-Final-Project



## Deadline: Nov 28th



## Tasks:

点击Notion链接查看自己的任务 [Notion Task List](https://www.notion.so/307a05aec2e24f13a39f778f6f9c1126?v=2e692dd61dc944e99d47bba17e807b30)



## Compile OpenCV with CUDA on cuda5.cims.nyu.edu

See `./opencv_compile/opencv_compile.txt`




## Run Test Prog:
```
mkdir build
cd build
cmake ..
make
./ORBExtractor ../train4.jpg ../keypoints.txt ../descriptor_test.txt
```

```Usage: ./feature_extractor <path_to_image> <path_to_keypoints_file> <path_to_descriptors_file>```
