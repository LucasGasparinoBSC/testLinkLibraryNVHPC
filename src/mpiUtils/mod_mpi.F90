module mod_mpi
    use mpi
    implicit none
    integer :: mpi_err, mpi_rank, mpi_nprocs
    contains
        subroutine mpiStart(rank,nranks)
            implicit none
            integer, intent(out) :: rank, nranks
            call mpi_Init(mpi_err)
            call MPI_Comm_rank(MPI_COMM_WORLD, rank, mpi_err)
            call MPI_Comm_size(MPI_COMM_WORLD, nranks, mpi_err)
        end subroutine mpiStart
        subroutine mpiEnd()
            implicit none
            call mpi_Finalize(mpi_err)
        end subroutine mpiEnd
end module mod_mpi