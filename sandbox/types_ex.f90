program types
! Fortran is statically typed: variable types fixed at compile time
! Fortran is strongly typed: it strictly enforces data type rules
    implicit none
    integer :: apples
    integer :: total

    apples = 5
    total = apples + 10  ! Both are integers, so this is valid.

    ! ERROR: You cannot add an integer and a text character string
    !total = apples + "ten"  

    print *, "Total apples:", total
end program types

