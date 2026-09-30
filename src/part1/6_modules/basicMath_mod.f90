module basicMath_mod

   implicit none
   private

   public add_arrays
   public add_numbers
   public calc_avg
   integer, parameter :: TWO = 2 ! not visible to the outside

contains

    pure function add_arrays(a, b) result(c)
        integer, intent(in) :: a(:), b(:)
        integer, allocatable :: c(:)
        
        c = a + b        
    end function add_arrays
    
    pure integer function add_numbers(a, b) result (c)
        integer, intent(in) :: a, b
        c = a + b
    end function add_numbers
    
    subroutine calc_avg(a, b, c)
        real, intent(in)  :: a, b
        real, intent(out) :: c
        c = (a + b) / TWO
    end subroutine calc_avg
     

end module basicMath_mod

