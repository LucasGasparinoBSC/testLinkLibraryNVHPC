set(CMAKE_Fortran_COMPILER "/home/lucas/apps/compilers/nvidia/hpc_sdk/Linux_x86_64/23.1/comm_libs/hpcx/hpcx-2.13/ompi/bin/mpif90")
set(CMAKE_Fortran_COMPILER_ARG1 "")
set(CMAKE_Fortran_COMPILER_ID "NVHPC")
set(CMAKE_Fortran_COMPILER_VERSION "23.1.0")
set(CMAKE_Fortran_COMPILER_WRAPPER "")
set(CMAKE_Fortran_PLATFORM_ID "Linux")
set(CMAKE_Fortran_SIMULATE_ID "")
set(CMAKE_Fortran_COMPILER_FRONTEND_VARIANT "")
set(CMAKE_Fortran_SIMULATE_VERSION "")




set(CMAKE_AR "/usr/bin/ar")
set(CMAKE_Fortran_COMPILER_AR "")
set(CMAKE_RANLIB "/usr/bin/ranlib")
set(CMAKE_Fortran_COMPILER_RANLIB "")
set(CMAKE_COMPILER_IS_GNUG77 )
set(CMAKE_Fortran_COMPILER_LOADED 1)
set(CMAKE_Fortran_COMPILER_WORKS TRUE)
set(CMAKE_Fortran_ABI_COMPILED TRUE)

set(CMAKE_Fortran_COMPILER_ENV_VAR "FC")

set(CMAKE_Fortran_COMPILER_SUPPORTS_F90 1)

set(CMAKE_Fortran_COMPILER_ID_RUN 1)
set(CMAKE_Fortran_SOURCE_FILE_EXTENSIONS f;F;fpp;FPP;f77;F77;f90;F90;for;For;FOR;f95;F95)
set(CMAKE_Fortran_IGNORE_EXTENSIONS h;H;o;O;obj;OBJ;def;DEF;rc;RC)
set(CMAKE_Fortran_LINKER_PREFERENCE 20)
if(UNIX)
  set(CMAKE_Fortran_OUTPUT_EXTENSION .o)
else()
  set(CMAKE_Fortran_OUTPUT_EXTENSION .obj)
endif()

# Save compiler ABI information.
set(CMAKE_Fortran_SIZEOF_DATA_PTR "8")
set(CMAKE_Fortran_COMPILER_ABI "")
set(CMAKE_Fortran_LIBRARY_ARCHITECTURE "")

if(CMAKE_Fortran_SIZEOF_DATA_PTR AND NOT CMAKE_SIZEOF_VOID_P)
  set(CMAKE_SIZEOF_VOID_P "${CMAKE_Fortran_SIZEOF_DATA_PTR}")
endif()

if(CMAKE_Fortran_COMPILER_ABI)
  set(CMAKE_INTERNAL_PLATFORM_ABI "${CMAKE_Fortran_COMPILER_ABI}")
endif()

if(CMAKE_Fortran_LIBRARY_ARCHITECTURE)
  set(CMAKE_LIBRARY_ARCHITECTURE "")
endif()





set(CMAKE_Fortran_IMPLICIT_INCLUDE_DIRECTORIES "")
set(CMAKE_Fortran_IMPLICIT_LINK_LIBRARIES "mpi_usempif08;mpi_usempi_ignore_tkr;mpi_mpifh;mpi;nvf;nvomp;dl;nvhpcatm;atomic;pthread;nvcpumath;nsnvc;nvc;rt;pthread;gcc;c;gcc_s;m")
set(CMAKE_Fortran_IMPLICIT_LINK_DIRECTORIES "/home/lucas/apps/compilers/nvidia/hpc_sdk/Linux_x86_64/23.1/comm_libs/hpcx/hpcx-2.13/ompi/lib;/home/lucas/apps/libraries/hdf5/1.14.0/nvidia/23.1/lib;/home/lucas/apps/compilers/nvidia/hpc_sdk/Linux_x86_64/23.1/comm_libs/hpcx/hpcx-2.13/nccl_rdma_sharp_plugin/lib;/home/lucas/apps/compilers/nvidia/hpc_sdk/Linux_x86_64/23.1/comm_libs/hpcx/hpcx-2.13/sharp/lib;/home/lucas/apps/compilers/nvidia/hpc_sdk/Linux_x86_64/23.1/comm_libs/hpcx/hpcx-2.13/hcoll/lib;/home/lucas/apps/compilers/nvidia/hpc_sdk/Linux_x86_64/23.1/comm_libs/hpcx/hpcx-2.13/ucc/lib;/home/lucas/apps/compilers/nvidia/hpc_sdk/Linux_x86_64/23.1/comm_libs/hpcx/hpcx-2.13/ucx/lib;/home/lucas/apps/compilers/nvidia/hpc_sdk/Linux_x86_64/23.1/compilers/lib;/usr/lib64;/usr/lib/gcc/x86_64-pc-linux-gnu/12.2.1")
set(CMAKE_Fortran_IMPLICIT_LINK_FRAMEWORK_DIRECTORIES "")
