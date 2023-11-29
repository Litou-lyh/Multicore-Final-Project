# cmake_minimum_required(VERSION 3.10)

# project(ORBExtractor)

# find_package(OpenCV REQUIRED)

# include_directories(${OpenCV_INCLUDE_DIRS})

# add_executable(ORBExtractor src/orb_test.cpp)

# target_link_libraries(ORBExtractor ${OpenCV_LIBS})

cmake_minimum_required(VERSION 3.10)

project(ORBExtractor)
# set(CMAKE_CXX_COMPILER /misc/linux/centos7/x86_64/local/stow/gcc-11.2/bin/g++)
set(CXX_STANDARD C++11)

# set(OpenCV_DIR /home/yl10798/opencv-gpu-4.8.0/)
# set(OpenCV_INCLUDE_DIRS /home/yl10798/opencv-gpu-4.8.0/include/opencv4)
find_package(OpenCV 4.5 REQUIRED)

# Include directories for both OpenCV and your project headers
include_directories(${OpenCV_INCLUDE_DIRS})
include_directories(include)  # Add your include directory here

# List all your source files here
set(SOURCE_FILES
    src/orb_test.cpp
    src/feature2d.cpp
    src/keypoint.cpp
    src/main.cpp
    src/orb.cpp
    src/precomp.hpp
)

# Add executable with the specified source files
add_executable(ORBExtractor ${SOURCE_FILES})

# Link the OpenCV libraries with your executable
target_link_libraries(ORBExtractor ${OpenCV_LIBS})
add_executable(ORBExtractor1 src/orb_test.cpp)
add_executable(ORBExtractorCuda src/orb_test_cuda.cpp)

target_link_libraries(ORBExtractor1 ${OpenCV_LIBS})
target_link_libraries(ORBExtractorCuda ${OpenCV_LIBS})

