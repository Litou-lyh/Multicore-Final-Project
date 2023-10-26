cmake_minimum_required(VERSION 3.10)

project(ORBExtractor)

find_package(OpenCV REQUIRED)

include_directories(${OpenCV_INCLUDE_DIRS})

add_executable(ORBExtractor src/orb_test.cpp)

target_link_libraries(ORBExtractor ${OpenCV_LIBS})