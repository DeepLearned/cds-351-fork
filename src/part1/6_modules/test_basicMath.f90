program test_basicMath
   use basicMath_mod
   implicit none
   real avg

   print *, add_integers(1, 2)
   call calc_avg(1., 3., avg)
   print *,avg

end program test_basicMath
