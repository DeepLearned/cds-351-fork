pure function square(x) result(y)
    implicit none
    real, intent(in) :: x
    real :: y
    
    y=x*x
    
end function square
