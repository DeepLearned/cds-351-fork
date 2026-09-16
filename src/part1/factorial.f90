program foo
   implicit none
   integer :: i
   integer :: n
   integer :: factorial

   factorial = 1
   print *, 'Enter a number: '
   read *,n
   do i = 1, n
      factorial = factorial * i
   end do

   print *, factorial

end program foo
