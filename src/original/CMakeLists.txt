# cmake_minimum_required(VERSION 3.10)

# project(ORBExtractor)

# find_package(OpenCV REQUIRED)

# include_directories(${OpenCV_INCLUDE_DIRS})

# add_executable(ORBExtractor src/orb_test.cpp)

# target_link_libraries(ORBExtractor ${OpenCV_LIBS})

cmake_minimum_required(VERSION 3.10)

project(ORBExtractor)
set(CXX_STANDARD C++11)
set(DCMAKE_BUILD_TYPE Release)
set(CMAKE_CXX_FLAGS_RELEASE "-O3")


# !!! Important
# choose your version and uncomment others

# Yihan's cuda version @ cudax.cims.nyu.edu
set(CMAKE_CXX_COMPILER /misc/linux/centos7/x86_64/local/stow/gcc-11.2/bin/g++)
set(OpenCV_DIR /home/yl10798/opencv-gpu-4.8.0/)
set(OpenCV_INCLUDE_DIRS /home/yl10798/opencv-gpu-4.8.0/include/opencv4)
# find_package(OpenCV REQUIRED)

# wcy's version @ vm
# find_package(OpenCV 4.5 REQUIRED)

# common version / github CICD
find_package(OpenCV REQUIRED)
find_package(OpenMP REQUIRED)

# Include directories for both OpenCV and your project headers
include_directories(${OpenCV_INCLUDE_DIRS})
include_directories(include)  # Add your include directory here

# List all your source files here
set(SOURCE_FILES
    src/orb_test.cpp
    src/feature2d.cpp
    src/keypoint.cpp
    src/orb.cpp
    src/precomp.hpp
)

# Add executable with the specified source files
add_executable(ORBExtractor ${SOURCE_FILES})

# Link the OpenCV libraries with your executable
target_link_libraries(ORBExtractor PUBLIC ${OpenCV_LIBS} OpenMP::OpenMP_CXX)

# if(OpenMP_CXX_FOUND)
#    target_link_libraries(ORBExtractor PUBLIC OpenMP::OpenMP_CXX)
# endif()
