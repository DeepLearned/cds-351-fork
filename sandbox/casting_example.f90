program casting
    implicit none
    integer :: whole_number
    real :: decimal_number
    real :: result_decimal
    integer :: result_integer

    whole_number = 5
    decimal_number = 2.75

    ! Convert the integer to a real number
    result_decimal = REAL(whole_number) + decimal_number
    print *, "Decimal result (5.0 + 2.75):", result_decimal

    ! Converting to Integer (Chops off the decimal)
    result_integer = INT(decimal_number)
    print *, "Using int() on 2.75 gives:", result_integer

    ! Converting to Integer (Rounds to nearest)
    result_integer = NINT(decimal_number)
    print *, "Using nint() on 2.75 gives:", result_integer

end program casting

