program coin_test

   implicit none
   integer            :: n, i
   real, allocatable, dimension(:) :: tosses
   external Coin_toss  ! needed because Coin_toss() is external
   character(len=1)   :: Coin_toss

   print *, 'Enter an integer n'
   read *, n
   allocate(tosses(n))
   
   call RANDOM_NUMBER(tosses)

   do i =1, n
      print *, 'Coin toss got: ', Coin_toss(tosses(i))
   end do

   deallocate(tosses)

end program coin_test
