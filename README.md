# Fall 2023 Multicore Final Project @ NYU

### Members: Ziyue Feng, Yihan Li, Chenyu Wang, Sid Wang



## 1. Environment Preparation

We tested our program on cuda5.cims.nyu.edu with the following software versions;

	OpenCV		4.8			Self-compiled, see section 2 OpenCV compilation
	cmake		3.22
	gcc		11.2
	cuda 		11.4

| Software | Version | Comments                                        |
| -------- | ------- | ----------------------------------------------- |
| OpenCV   | 4.8.0   | Self-compiled, see section 2 OpenCV compilation |
| cmake    | 3.22    |                                                 |
| gcc      | 11.2    |                                                 |
| cuda     | 11.4    |                                                 |

First, you need to load those modules on the server with the following command:

```shell
module load cmake-3.22
module load gcc-11.2
module load cuda-11.4
```




## 2. OpenCV Compilation
Please follow the instructions, the whole process may take over one hour:

```shell
git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git
cd opencv_contrib
git checkout 4.8.0 
cd ..
cd opencv
git checkout 4.8.0 
mkdir build && cd build
module load cmake-3.22
module load gcc-11.2
module load cuda-11.4
```

\# replace your path to install opencv at "-DCMAKE_INSTALL_PREFIX=~/opencv-gpu-4.8.0"
\# check the disk space beforehand

```shell
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=~/opencv-gpu-4.8.0 -DOPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules/ -DWITH_TBB=OFF -DWITH_OPENMP=OFF -DWITH_CUDA=ON -DBUILD_opencv_gpu=ON -DBUILD_opencv_gpuarithm=ON -DENABLE_FAST_MATH=ON -DCUDA_FAST_MATH=ON -DWITH_CUBLAS=ON -DOPENCV_GENERATE_PKGCONFIG=ON -DBUILD_opencv_python3=OFF -DBUILD_opencv_java=OFF -DBUILD_EXAMPLES=OFF

make -j16
make install

```



## 3. Compile and Run
You can simply run 

```shell
sh ./compile_and_run.sh 
```

the script will automatically run tests with different sizes of inputs and different nums of threads.
You can also run a single version of "ORBExtractor" by either of the following:

```shell
\# serial version
cd ./src/original
sh run.sh
\# cuda version
cd ./src/cuda
sh run.sh
\# omp version
cd ./src/parallel

```

sh run.sh <num_threads>


To change input sizes and number of threads, change these two lines in "compile_and_run.sh"
line 26: 

```shell
NUM_THREADS_PARALLEL=${NUM_THREADS:-"1 2 4 8 16 32"}
```

line 28: 

```shell
NUM_KPTS=${NUM_KPTS:-"1000 2000 5000 10000"} # see what's avail in ./kpts
```



To validate the correctness of output, try `compareOutput.sh`


## 3. Our Modification
We mainly modified the file orb.cpp, the function "computeOrbDescriptor()" is the main process of orb descriptor computation.
You can compare our version "./src/parallel/src" with serial version "./src/original/src".

## Contact
Please contact yl10798@nyu.edu (Mr. Yihan Li)
