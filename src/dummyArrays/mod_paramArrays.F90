module mod_paramArrays
    implicit none
    integer(4), parameter :: dummy1 = 1
    integer(4) :: dummy2(3) = 1
    integer(4), protected :: dummy3(3) = 1
    contains
        subroutine modifyDummy2()
            implicit none
            dummy2 = dummy2+1
        end subroutine modifyDummy2
        subroutine modifyDummy3()
            implicit none
            dummy3 = dummy3+1
        end subroutine modifyDummy3
end module mod_paramArrays
