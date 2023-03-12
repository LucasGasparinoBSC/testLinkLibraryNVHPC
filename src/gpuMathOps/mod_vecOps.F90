module mod_vecOps
    use mod_mpi
#ifndef NOACC
	use cudafor
	use openacc
#endif
	implicit none
	contains
		subroutine saxpy(n,s,a,p,b,c)
			implicit none
			integer(4), intent(in)  :: n
			real(4)   , intent(in)  :: a(n), b(n), s, p
			real(4)   , intent(out) :: c(n)
            integer(4)              :: i
            !$acc parallel loop
            do i=1,n
                c(i) = s*a(i) + p*b(i)
            end do
            !$acc end parallel loop
		end subroutine saxpy
        subroutine dotProduct(n,a,b,s)
            implicit none
            integer(4), intent(in)  :: n
            real(4)   , intent(in)  :: a(n), b(n)
            real(4)   , intent(out) :: s
            integer(4)              :: i
            real(4)                 :: sPart
            s = 0.0
            sPart = 0.0
            !$acc parallel loop reduction(+:sPart)
            do i=1,n
                sPart = sPart + a(i)*b(i)
            end do
            !$acc end parallel loop

            ! If more than 1 rank, use allreduce to sum up the partial sums
            if (mpi_nprocs > 1) then
                call mpi_allreduce(sPart,s,1,mpi_real,mpi_sum,mpi_comm_world,mpi_err)
            else
                s = sPart
            end if
        end subroutine dotProduct
end module mod_vecOps