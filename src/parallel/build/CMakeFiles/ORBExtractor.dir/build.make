# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yl10798/work/multicore/Multicore-Final-Project/src/parallel

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yl10798/work/multicore/Multicore-Final-Project/src/parallel/build

# Include any dependencies generated for this target.
include CMakeFiles/ORBExtractor.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ORBExtractor.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ORBExtractor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ORBExtractor.dir/flags.make

CMakeFiles/ORBExtractor.dir/src/orb_test.cpp.o: CMakeFiles/ORBExtractor.dir/flags.make
CMakeFiles/ORBExtractor.dir/src/orb_test.cpp.o: /home/yl10798/work/multicore/Multicore-Final-Project/src/parallel/src/orb_test.cpp
CMakeFiles/ORBExtractor.dir/src/orb_test.cpp.o: CMakeFiles/ORBExtractor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/yl10798/work/multicore/Multicore-Final-Project/src/parallel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ORBExtractor.dir/src/orb_test.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ORBExtractor.dir/src/orb_test.cpp.o -MF CMakeFiles/ORBExtractor.dir/src/orb_test.cpp.o.d -o CMakeFiles/ORBExtractor.dir/src/orb_test.cpp.o -c /home/yl10798/work/multicore/Multicore-Final-Project/src/parallel/src/orb_test.cpp

CMakeFiles/ORBExtractor.dir/src/orb_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ORBExtractor.dir/src/orb_test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yl10798/work/multicore/Multicore-Final-Project/src/parallel/src/orb_test.cpp > CMakeFiles/ORBExtractor.dir/src/orb_test.cpp.i

CMakeFiles/ORBExtractor.dir/src/orb_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ORBExtractor.dir/src/orb_test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yl10798/work/multicore/Multicore-Final-Project/src/parallel/src/orb_test.cpp -o CMakeFiles/ORBExtractor.dir/src/orb_test.cpp.s

CMakeFiles/ORBExtractor.dir/src/feature2d.cpp.o: CMakeFiles/ORBExtractor.dir/flags.make
CMakeFiles/ORBExtractor.dir/src/feature2d.cpp.o: /home/yl10798/work/multicore/Multicore-Final-Project/src/parallel/src/feature2d.cpp
CMakeFiles/ORBExtractor.dir/src/feature2d.cpp.o: CMakeFiles/ORBExtractor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/yl10798/work/multicore/Multicore-Final-Project/src/parallel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ORBExtractor.dir/src/feature2d.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ORBExtractor.dir/src/feature2d.cpp.o -MF CMakeFiles/ORBExtractor.dir/src/feature2d.cpp.o.d -o CMakeFiles/ORBExtractor.dir/src/feature2d.cpp.o -c /home/yl10798/work/multicore/Multicore-Final-Project/src/parallel/src/feature2d.cpp

CMakeFiles/ORBExtractor.dir/src/feature2d.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ORBExtractor.dir/src/feature2d.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yl10798/work/multicore/Multicore-Final-Project/src/parallel/src/feature2d.cpp > CMakeFiles/ORBExtractor.dir/src/feature2d.cpp.i

CMakeFiles/ORBExtractor.dir/src/feature2d.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ORBExtractor.dir/src/feature2d.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yl10798/work/multicore/Multicore-Final-Project/src/parallel/src/feature2d.cpp -o CMakeFiles/ORBExtractor.dir/src/feature2d.cpp.s

CMakeFiles/ORBExtractor.dir/src/keypoint.cpp.o: CMakeFiles/ORBExtractor.dir/flags.make
CMakeFiles/ORBExtractor.dir/src/keypoint.cpp.o: /home/yl10798/work/multicore/Multicore-Final-Project/src/parallel/src/keypoint.cpp
CMakeFiles/ORBExtractor.dir/src/keypoint.cpp.o: CMakeFiles/ORBExtractor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/yl10798/work/multicore/Multicore-Final-Project/src/parallel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ORBExtractor.dir/src/keypoint.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ORBExtractor.dir/src/keypoint.cpp.o -MF CMakeFiles/ORBExtractor.dir/src/keypoint.cpp.o.d -o CMakeFiles/ORBExtractor.dir/src/keypoint.cpp.o -c /home/yl10798/work/multicore/Multicore-Final-Project/src/parallel/src/keypoint.cpp

CMakeFiles/ORBExtractor.dir/src/keypoint.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ORBExtractor.dir/src/keypoint.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yl10798/work/multicore/Multicore-Final-Project/src/parallel/src/keypoint.cpp > CMakeFiles/ORBExtractor.dir/src/keypoint.cpp.i

CMakeFiles/ORBExtractor.dir/src/keypoint.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ORBExtractor.dir/src/keypoint.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yl10798/work/multicore/Multicore-Final-Project/src/parallel/src/keypoint.cpp -o CMakeFiles/ORBExtractor.dir/src/keypoint.cpp.s

CMakeFiles/ORBExtractor.dir/src/orb.cpp.o: CMakeFiles/ORBExtractor.dir/flags.make
CMakeFiles/ORBExtractor.dir/src/orb.cpp.o: /home/yl10798/work/multicore/Multicore-Final-Project/src/parallel/src/orb.cpp
CMakeFiles/ORBExtractor.dir/src/orb.cpp.o: CMakeFiles/ORBExtractor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/yl10798/work/multicore/Multicore-Final-Project/src/parallel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ORBExtractor.dir/src/orb.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ORBExtractor.dir/src/orb.cpp.o -MF CMakeFiles/ORBExtractor.dir/src/orb.cpp.o.d -o CMakeFiles/ORBExtractor.dir/src/orb.cpp.o -c /home/yl10798/work/multicore/Multicore-Final-Project/src/parallel/src/orb.cpp

CMakeFiles/ORBExtractor.dir/src/orb.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ORBExtractor.dir/src/orb.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yl10798/work/multicore/Multicore-Final-Project/src/parallel/src/orb.cpp > CMakeFiles/ORBExtractor.dir/src/orb.cpp.i

CMakeFiles/ORBExtractor.dir/src/orb.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ORBExtractor.dir/src/orb.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yl10798/work/multicore/Multicore-Final-Project/src/parallel/src/orb.cpp -o CMakeFiles/ORBExtractor.dir/src/orb.cpp.s

# Object files for target ORBExtractor
ORBExtractor_OBJECTS = \
"CMakeFiles/ORBExtractor.dir/src/orb_test.cpp.o" \
"CMakeFiles/ORBExtractor.dir/src/feature2d.cpp.o" \
"CMakeFiles/ORBExtractor.dir/src/keypoint.cpp.o" \
"CMakeFiles/ORBExtractor.dir/src/orb.cpp.o"

# External object files for target ORBExtractor
ORBExtractor_EXTERNAL_OBJECTS =

ORBExtractor: CMakeFiles/ORBExtractor.dir/src/orb_test.cpp.o
ORBExtractor: CMakeFiles/ORBExtractor.dir/src/feature2d.cpp.o
ORBExtractor: CMakeFiles/ORBExtractor.dir/src/keypoint.cpp.o
ORBExtractor: CMakeFiles/ORBExtractor.dir/src/orb.cpp.o
ORBExtractor: CMakeFiles/ORBExtractor.dir/build.make
ORBExtractor: /usr/local/lib64/libopencv_gapi.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_stitching.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_alphamat.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_aruco.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_bgsegm.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_bioinspired.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_ccalib.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_dnn_objdetect.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_dnn_superres.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_dpm.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_face.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_fuzzy.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_hfs.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_img_hash.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_intensity_transform.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_line_descriptor.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_mcc.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_quality.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_rapid.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_reg.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_rgbd.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_saliency.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_stereo.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_structured_light.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_superres.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_surface_matching.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_tracking.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_videostab.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_wechat_qrcode.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_xfeatures2d.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_xobjdetect.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_xphoto.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_shape.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_highgui.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_datasets.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_plot.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_text.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_ml.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_phase_unwrapping.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_optflow.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_ximgproc.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_video.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_videoio.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_imgcodecs.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_objdetect.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_calib3d.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_dnn.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_features2d.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_flann.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_photo.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_imgproc.so.4.8.0
ORBExtractor: /usr/local/lib64/libopencv_core.so.4.8.0
ORBExtractor: /usr/lib/gcc/x86_64-redhat-linux/4.8.5/libgomp.so
ORBExtractor: /usr/lib64/libpthread.so
ORBExtractor: CMakeFiles/ORBExtractor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/yl10798/work/multicore/Multicore-Final-Project/src/parallel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable ORBExtractor"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ORBExtractor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ORBExtractor.dir/build: ORBExtractor
.PHONY : CMakeFiles/ORBExtractor.dir/build

CMakeFiles/ORBExtractor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ORBExtractor.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ORBExtractor.dir/clean

CMakeFiles/ORBExtractor.dir/depend:
	cd /home/yl10798/work/multicore/Multicore-Final-Project/src/parallel/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yl10798/work/multicore/Multicore-Final-Project/src/parallel /home/yl10798/work/multicore/Multicore-Final-Project/src/parallel /home/yl10798/work/multicore/Multicore-Final-Project/src/parallel/build /home/yl10798/work/multicore/Multicore-Final-Project/src/parallel/build /home/yl10798/work/multicore/Multicore-Final-Project/src/parallel/build/CMakeFiles/ORBExtractor.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/ORBExtractor.dir/depend

