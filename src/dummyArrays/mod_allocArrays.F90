module arrays
    contains
    implicit none
    real(4), ALLOCATABLE, private :: arr1(:)
end module arrays

module mod_allocArrays
    use arrays
    implicit none
    integer(4), parameter :: nArr = 512*512
    contains
#if 1
        subroutine modifyArr1()
            implicit none
            integer(4) :: i
            allocate(arr1(nArr))
            !$acc parallel loop
            do i = 1, nArr
                arr1(i) = real(i,4)
            end do
            !$acc end parallel loop
            print*, arr1(nArr)
        end subroutine modifyArr1
#endif
end module mod_allocArrays