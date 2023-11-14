cmake_minimum_required(VERSION 3.10)

project(ORBExtractor)
# set(CMAKE_CXX_COMPILER /misc/linux/centos7/x86_64/local/stow/gcc-11.2/bin/g++)
set(CXX_STANDARD C++11)

# set(OpenCV_DIR /home/yl10798/opencv-gpu-4.8.0/)
# set(OpenCV_INCLUDE_DIRS /home/yl10798/opencv-gpu-4.8.0/include/opencv4)
find_package(OpenCV REQUIRED)

include_directories(${OpenCV_INCLUDE_DIRS})

add_executable(ORBExtractor src/orb_test.cpp)
add_executable(ORBExtractorCuda src/orb_test_cuda.cpp)

target_link_libraries(ORBExtractor ${OpenCV_LIBS})
target_link_libraries(ORBExtractorCuda ${OpenCV_LIBS})

