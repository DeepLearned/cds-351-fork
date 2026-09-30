program test_basicMath
   use basicMath_mod
   implicit none
   real avg
   integer :: x(5) = [1,2,3,4,5]
   integer :: y(5) = [1,2,3,4,5]

   print *, add_arrays(x, y)
   
   print *, add_numbers(1, 2)
   call calc_avg(1., 3., avg)
   print *,avg

end program test_basicMath
