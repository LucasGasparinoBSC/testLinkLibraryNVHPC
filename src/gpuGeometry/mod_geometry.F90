module mod_geometry
    use mod_mpi
    use mod_paramArrays
    use mod_allocArrays
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
            call nvtxStartRange("Calling dotProduct")
            call dotProduct(n, x, x, norm)
            call nvtxEndRange()
            
            norm = sqrt(norm)
        end subroutine vecNorm
        subroutine callRoutinesFromDummyArrays()
            implicit none
            call modifyDummy2()
            dummy2(1) = 10
            print*, dummy2(:)
            call modifyDummy3()
            !dummy3(1) = 20 ! ! As dummy3 is PROTECTED, this will not work
            print*, dummy3(:)
            call modifyDummy4()
            !print*, dummy4(:) ! ! As dummy4 is PRIVATE, this will not work
        end subroutine callRoutinesFromDummyArrays
end module mod_geometry