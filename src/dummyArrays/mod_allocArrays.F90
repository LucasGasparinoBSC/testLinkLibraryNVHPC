module arrays
    contains
    implicit none
    real(4), ALLOCATABLE :: arr1(:)
end module arrays

module mod_allocArrays
    use arrays
    implicit none
    integer(4), parameter :: nArr = 100
    contains
#if 1
        subroutine allocArrays()
            implicit none
            integer(4) :: i
            allocate(arr1(nArr))
        end subroutine allocArrays
#endif
end module mod_allocArrays