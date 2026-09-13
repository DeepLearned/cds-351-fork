program precision
    implicit none
    real :: x  ! default real, usually 4 bytes, ~7 digits
    real(4) :: y ! the same thing on most compilers
    real(8) :: z ! ~15 digits, and a far larger exponent range
    
    integer :: i ! default integer, usually 4 bytes
    integer(8) :: n ! counts beyond +/- 2147483647



end program precision

