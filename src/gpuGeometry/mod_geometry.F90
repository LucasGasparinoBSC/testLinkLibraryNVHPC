module mod_geometry
    use mod_mpi
    use mod_vecOps
#ifndef NOACC
    use openacc
    use cudafor
#endif
    implicit none
    contains
        subroutine vecNorm(n, x, norm)
            integer(4), intent(in)  :: n
            real(4),    intent(in)  :: x(n)
            real(4),    intent(out) :: norm
            norm = 0.0
            call dotProduct(n, x, x, norm)
            norm = sqrt(norm)
        end subroutine vecNorm
end module mod_geometry