V34 :0x24 mod_geometry
16 mod_geometry.F90 S624 0
03/12/2023  22:37:16
use mpi public 0 indirect
use mod_mpi public 0 direct
use mod_vecops public 0 direct
use openacc_la public 0 direct
use iso_c_binding public 0 indirect
use nvf_acc_common public 0 indirect
use cudafor_lib_la public 0 indirect
use cudafor_la public 0 direct
use iso_fortran_env private
enduse
D 58 26 650 8 649 7
D 67 26 653 8 652 7
D 76 23 6 1 11 111 0 0 0 0 0
 0 111 11 11 111 111
D 79 23 6 1 11 111 0 0 0 0 0
 0 111 11 11 111 111
D 82 23 6 1 11 111 0 0 0 0 0
 0 111 11 11 111 111
D 85 23 6 1 11 111 0 0 0 0 0
 0 111 11 11 111 111
D 88 23 6 1 11 112 0 0 0 0 0
 0 112 11 11 112 112
D 91 23 6 1 11 112 0 0 0 0 0
 0 112 11 11 112 112
D 5967 26 650 8 649 7
D 5988 26 20575 8 20574 7
D 7609 23 9 1 11 16042 0 0 1 0 0
 0 16041 11 11 16042 16042
S 624 24 0 0 0 6 1 0 5013 10005 0 A 0 0 0 0 B 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 mod_geometry
S 632 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 633 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 634 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
R 649 25 7 iso_c_binding c_ptr
R 650 5 8 iso_c_binding val c_ptr
R 652 25 10 iso_c_binding c_funptr
R 653 5 11 iso_c_binding val c_funptr
R 687 6 45 iso_c_binding c_null_ptr$ac
R 689 6 47 iso_c_binding c_null_funptr$ac
R 690 26 48 iso_c_binding ==
R 692 26 50 iso_c_binding !=
S 724 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 725 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 747 7 22 iso_fortran_env integer_kinds$ac
R 749 7 24 iso_fortran_env logical_kinds$ac
R 751 7 26 iso_fortran_env real_kinds$ac
R 20574 25 6 nvf_acc_common c_devptr
R 20575 5 7 nvf_acc_common cptr c_devptr
R 20581 6 13 nvf_acc_common c_null_devptr$ac
R 20619 26 51 nvf_acc_common =
S 27643 23 5 0 0 0 27647 624 186546 0 0 A 0 0 0 0 B 0 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 vecnorm
S 27644 6 3 1 0 6 1 27643 15819 800004 3000 A 0 0 0 0 B 0 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 n
S 27645 7 3 1 0 7609 1 27643 32329 800204 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 x
S 27646 1 3 2 0 9 1 27643 186554 4 3000 A 0 0 0 0 B 0 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 norm
S 27647 14 5 0 0 0 1 27643 186546 200 400000 A 0 0 0 0 B 0 10 0 0 0 0 0 11308 3 0 0 0 0 0 0 0 0 0 0 0 0 10 0 624 0 0 0 0 vecnorm vecnorm 
F 27647 3 27644 27645 27646
S 27648 6 1 0 0 7 1 27643 186559 40800006 3000 A 0 0 0 0 B 0 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_16041
A 13 2 0 0 0 6 632 0 0 0 13 0 0 0 0 0 0 0 0 0 0 0
A 15 2 0 0 0 6 633 0 0 0 15 0 0 0 0 0 0 0 0 0 0 0
A 17 2 0 0 0 6 634 0 0 0 17 0 0 0 0 0 0 0 0 0 0 0
A 68 1 0 0 0 58 687 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 71 1 0 0 0 67 689 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 111 2 0 0 0 7 724 0 0 0 111 0 0 0 0 0 0 0 0 0 0 0
A 112 2 0 0 0 7 725 0 0 0 112 0 0 0 0 0 0 0 0 0 0 0
A 118 1 0 1 0 76 747 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 124 1 0 1 0 82 749 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 128 1 0 3 0 88 751 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 14397 1 0 0 13849 5988 20581 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 16040 1 0 0 9847 6 27644 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 16041 7 0 0 11241 7 16040 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 16042 1 0 0 13013 7 27648 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
Z
J 133 1 1
V 68 58 7 0
S 0 58 0 0 0
A 0 6 0 0 1 2 0
J 134 1 1
V 71 67 7 0
S 0 67 0 0 0
A 0 6 0 0 1 2 0
J 69 1 1
V 118 76 7 0
R 0 79 0 0
A 0 6 0 0 1 3 1
A 0 6 0 0 1 15 1
A 0 6 0 0 1 13 1
A 0 6 0 0 1 17 0
J 71 1 1
V 124 82 7 0
R 0 85 0 0
A 0 6 0 0 1 3 1
A 0 6 0 0 1 15 1
A 0 6 0 0 1 13 1
A 0 6 0 0 1 17 0
J 73 1 1
V 128 88 7 0
R 0 91 0 0
A 0 6 0 0 1 13 1
A 0 6 0 0 1 17 0
J 36 1 1
V 14397 5988 7 0
S 0 5988 0 0 0
A 0 5967 0 0 1 68 0
Z
