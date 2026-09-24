program foo
   implicit none
   real :: a
   integer :: n

   a = 1.0
   n = 3
   ! what gets passed here are the pointers to the memory
   ! locations containing the calling arguments
   print *, 'loc(a): ', LOC(a)
   print *, 'loc(n): ', LOC(n)
   call sub1 (a, n)

contains
   
   subroutine sub1(x, i)
     real, intent(out) :: x
     integer, intent(in) :: i

     print *, 'loc(x): ', LOC(x)
     print *, 'loc(i): ', LOC(i)
     
   end subroutine sub1
end program foo
