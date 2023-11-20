# cmake_minimum_required(VERSION 3.10)

# project(ORBExtractor)

# find_package(OpenCV REQUIRED)

# include_directories(${OpenCV_INCLUDE_DIRS})

# add_executable(ORBExtractor src/orb_test.cpp)

# target_link_libraries(ORBExtractor ${OpenCV_LIBS})

cmake_minimum_required(VERSION 3.10)

project(ORBExtractor)

# Find the OpenCV package
find_package(OpenCV REQUIRED)

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
