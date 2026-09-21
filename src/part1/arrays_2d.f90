program arrays

   implicit none

   integer ierr, i, j

   ! static arrays
   real, dimension(15)       :: Aarr
   real, dimension(-4:0,0:2) :: Barr
   real                      :: Carr(5,3)
   real                      :: Darr(0:4,0:2) 

   ! allocatable arrays
   integer, dimension(:),  allocatable :: numbers
   real,   dimension(:,:), allocatable :: temperature

   ! allocations

   allocate(numbers(10), stat=ierr)
   allocate(temperature(5, 4), stat=ierr)

   do j = 1, 4
      do i = 1, 5
         temperature(i,j) = i*j
      end do
   end do

   print *, temperature(3, 4)

   ! operations
   Aarr = 10      ! sets whole array A 
   Aarr(1) = 2    ! sets one element
   Aarr(2:6) = 0  ! sets section of A
   Carr = 2
   Barr = Aarr(3) + Carr(5,1)  ! sets whole array B to the sum of two elementsA
   Darr = 1.
   Barr = Carr * Darr - Barr**2 ! must be conformable

   print *, size(Aarr), size(Barr), size(Carr), size(Darr)
   print *, shape(Aarr), shape(Barr), shape(Carr), shape(Darr)

   ! deallocations(*)
   deallocate(temperature)

end program 

