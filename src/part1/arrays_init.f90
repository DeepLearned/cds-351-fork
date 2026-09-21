program arrays

   implicit none

   ! Array constructors
   ! initialize small explicit sequences
   integer :: fibonacci(6) = [1, 1, 2, 3, 5, 8]

   ! use for mathematical formulas using an implied DO loop
   integer :: evens(50) = [(i * 2, i = 1, 50)]

   ! constant character arrays
   character(len=7), dimension(3), parameter :: &
    NAMES = [ character(len=7) :: 'alice', 'bob', 'clarice' ]

   ! small 2D arrays
   ! Note: Fortran fills arrays in column-major order (down columns first)
   integer :: f(2,2) = reshape([0, 1, 0, 1], [2, 2])
   ! this is better
   integer :: g(2,2)
   ! g(1,:) = 0  ! Modern scalar broadcast: Fills the entire first row with 0
   ! g(2,:) = 1  ! Fills the entire second row with 1

   ! Legacy: initialize in-place using implied do-loops
   integer, dimension(10)         :: ints = (/(j, j=1,10)/)
   real, dimension(10)            :: floats = (/(real(j), j=1,10)/)
   
end program arrays
