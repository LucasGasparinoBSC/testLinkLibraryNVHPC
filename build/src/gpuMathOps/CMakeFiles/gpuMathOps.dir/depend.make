# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Note that incremental build could trigger a call to cmake_copy_f90_mod on each re-build
src/gpuMathOps/CMakeFiles/gpuMathOps.dir/mod_vecOps.F90.o: src/mpiUtils/CMakeFiles/mpiUtils.dir/mod_mpi.mod.stamp
src/gpuMathOps/CMakeFiles/gpuMathOps.dir/mod_vecOps.F90.o.provides.build: src/gpuMathOps/CMakeFiles/gpuMathOps.dir/mod_vecops.mod.stamp
src/gpuMathOps/CMakeFiles/gpuMathOps.dir/mod_vecops.mod.stamp: src/gpuMathOps/CMakeFiles/gpuMathOps.dir/mod_vecOps.F90.o
	$(CMAKE_COMMAND) -E cmake_copy_f90_mod src/gpuMathOps/mod_vecops.mod src/gpuMathOps/CMakeFiles/gpuMathOps.dir/mod_vecops.mod.stamp NVHPC
src/gpuMathOps/CMakeFiles/gpuMathOps.dir/mod_vecOps.F90.o.provides.build:
	$(CMAKE_COMMAND) -E touch src/gpuMathOps/CMakeFiles/gpuMathOps.dir/mod_vecOps.F90.o.provides.build
src/gpuMathOps/CMakeFiles/gpuMathOps.dir/build: src/gpuMathOps/CMakeFiles/gpuMathOps.dir/mod_vecOps.F90.o.provides.build
