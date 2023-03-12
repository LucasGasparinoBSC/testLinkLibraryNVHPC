program test_gpuGeometry
    use mod_mpi
    use mod_geometry
    implicit none
    integer(4), parameter   :: nArray = 512*512
    real(8)   , parameter   :: pi     = 3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986
    real(4),    allocatable :: x(:), xPart(:)
    integer(4)              :: i, nPart
    real(4)                 :: xNorm

    ! Initialize the MPI env
    call mpiStart(mpi_rank, mpi_nprocs)

    ! Write MPI info to the screen
    if (mpi_rank .eq. 0) write(*,*) "--| Running with ", mpi_nprocs, " MPI processes"

    ! Rank 0 creates the array x
    if (mpi_rank .eq. 0) then
        allocate(x(nArray))
        !$acc parallel loop
        do i = 1, nArray
            x(i) = 1.0
        end do
        !$acc end parallel loop
    end if

    ! Scatter x to all processes
    if (MODULO(nArray,mpi_nprocs) .eq. 0) then
        nPart = nArray/mpi_nprocs
        allocate(xPart(nPart))
        call MPI_Scatter(x, nPart, MPI_REAL, xPart, nPart, MPI_REAL, 0, MPI_COMM_WORLD, mpi_err)
    else
        if (mpi_rank .eq. 0) write(*,*) "Error: nArray is not divisible by mpi_nprocs"
        call MPI_Abort(MPI_COMM_WORLD, 1, mpi_err)
    end if

    ! Compute the norm of x
    xNorm = 0.0
    call vecNorm(nPart, xPart, xNorm)
    print*, "Rank ", mpi_rank, " has norm ", xNorm

    ! Veryfing the norm
    if (xNorm .lt. sqrt(real(nArray,4))-1.0e-7 .or. xNorm .gt. sqrt(real(nArray,4))+1.0e-7) then
        if (mpi_rank .eq. 0) write(*,*) "Error: norm is not correct"
        call MPI_Abort(MPI_COMM_WORLD, 1, mpi_err)
    else
        if (mpi_rank .eq. 0) write(*,*) "Norm is correct"
    end if

    ! Finalize the MPI env
    call mpiEnd()
end program test_gpuGeometry