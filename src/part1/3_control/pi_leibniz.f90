program pi_Leibniz
   implicit none

   integer :: i, n
   real :: y
   real :: x

   print *, 'Using Leibniz formula for pi.'
   print *, 'How many terms do you want to compute? '
   read *, n

   x = 1.0
   y = 1.0

   do i = 1, n
      if ( MOD(i, 2) == 1) then
         x = x - (1.0 / ((2.0*i) + 1.0))
      else
         x = x + (1.0 / ((2.0*i) + 1.0))
      end if
   end do

   x = x * 4.0
   print *, 'Approximation: ',x
   print *, 'Error:', (ABS(x-4.0*ATAN(1.0))/4.0*ATAN(1.0))*100,'%'

end program pi_Leibniz

