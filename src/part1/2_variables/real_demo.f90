! Fortran real data types
program real_type 

   implicit none
   
   real defreal               ! Define default real variable
   ! Note use of KIND type parameter - for memory size
   real(kind =  4) :: real4val  ! Define single precision real variable
   real(kind =  8) :: real8val  ! Define double precision real variable
   integer defint            ! Define integer variables, kind=4
   
   defreal = 1.   ! initialize real

   print *, HUGE(defreal), KIND(defreal) 
   print *, HUGE(real4val), KIND(real4val)
   print *, HUGE(real8val), KIND(real8val)

   ! floating point division
   real4val = 2.0/3.0  ! be mindful of decimal point
   ! integer division
   defint = 2/3
   ! double precision
   real8val = 2.0/3.0 

   print *, 'Single precision division:', real4val
   print *, 'Double precision division:', real8val
   print *, 'Integer division:', defint
   print *, 'Type casting:', INT(real8val)  ! convert to integer
   print *, 'Type casting:', NINT(real8val) ! round to nearest integer

end program real_type
