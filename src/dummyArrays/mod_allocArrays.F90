module mod_allocArrays
    implicit none
    integer(4), parameter :: nArr = 100
    real(4), private, allocatable :: arr1(:)
    contains
#if 0
        subroutine allocArrays()
            implicit none
            integer(4) :: i
            allocate(arr1(nArr))
        end subroutine allocArrays
#endif
end module mod_allocArrays