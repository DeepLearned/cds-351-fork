! Simple program with an internal procedure
! Simulate a coin toss - use RANDOM_NUMBER()
program coin_test

   implicit none
   integer            :: n, i
   ! allocatable because we don't know how much memort we'll need
   real, allocatable, dimension(:) :: tosses

   print *, 'Enter an integer n'
   read *, n
   allocate(tosses(n))
  
   ! generate n tosses
   call RANDOM_NUMBER(tosses)

   do i =1, n
      print *, 'Coin toss got: ', Coin_toss(tosses(i))
   end do

   deallocate(tosses)

contains

   ! Note function itself has a type
   character (len=1) function Coin_toss(x)
   implicit none
   real, intent(in) :: x  

   if (x > 0.5) then
      Coin_toss = 'H'
   else
      Coin_toss = 'T'
   end if
   
   end function Coin_toss

end program coin_test
