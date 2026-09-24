subroutine square(x, y)
    implicit none
    real, intent(in) :: x
    real, intent(out) :: y
    
    print *, "Squaring", x
    y=x*x
    
end subroutine square
