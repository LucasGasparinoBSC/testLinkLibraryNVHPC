# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Note that incremental build could trigger a call to cmake_copy_f90_mod on each re-build
src/gpuGeometry/CMakeFiles/gpuGeometry.dir/mod_geometry.F90.o: src/mpiUtils/CMakeFiles/mpiUtils.dir/mod_mpi.mod.stamp
src/gpuGeometry/CMakeFiles/gpuGeometry.dir/mod_geometry.F90.o: src/gpuMathOps/CMakeFiles/gpuMathOps.dir/mod_vecops.mod.stamp
src/gpuGeometry/CMakeFiles/gpuGeometry.dir/mod_geometry.F90.o.provides.build: src/gpuGeometry/CMakeFiles/gpuGeometry.dir/mod_geometry.mod.stamp
src/gpuGeometry/CMakeFiles/gpuGeometry.dir/mod_geometry.mod.stamp: src/gpuGeometry/CMakeFiles/gpuGeometry.dir/mod_geometry.F90.o
	$(CMAKE_COMMAND) -E cmake_copy_f90_mod src/gpuGeometry/mod_geometry.mod src/gpuGeometry/CMakeFiles/gpuGeometry.dir/mod_geometry.mod.stamp NVHPC
src/gpuGeometry/CMakeFiles/gpuGeometry.dir/mod_geometry.F90.o.provides.build:
	$(CMAKE_COMMAND) -E touch src/gpuGeometry/CMakeFiles/gpuGeometry.dir/mod_geometry.F90.o.provides.build
src/gpuGeometry/CMakeFiles/gpuGeometry.dir/build: src/gpuGeometry/CMakeFiles/gpuGeometry.dir/mod_geometry.F90.o.provides.build
