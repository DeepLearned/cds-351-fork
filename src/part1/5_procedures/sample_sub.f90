program sample_sub
   implicit none
   real :: avg
   
   call Calc_avg(1.,2.,3.,avg)
   print *, avg
   
contains
    
    ! Calculate average using a subroutine
    ! Note the difference with the function implementation
    ! What should you use?
    
    subroutine Calc_avg (a, b, c, avg)
        implicit none
        real, intent(in)  :: a, b, c
        real, intent(out) :: avg
        
        avg = (a + b + c)/3.0
        
    end subroutine Calc_avg

end program sample_sub
