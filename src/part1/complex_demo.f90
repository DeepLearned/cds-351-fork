! Fortran complex data type
program complex_type  

   implicit none 
   
   real :: x, y
   complex :: complex_num1, complex_num2 ! default is that of a default real

   x   = 1
   y   = -1
   complex_num1 = (3, 4)    ! cx1 = 3.0 +4.0i
   complex_num2 = cmplx (x, y)  ! cx3 = x + yi
   
   print *, 'complex_num1: ', complex_num1
   print *, 'real part of cx1:     ', REAL(complex_num1)
   print *, 'imag part of cx1:     ', AIMAG(complex_num1)
   print *, 'complex_num2: ', complex_num2
   print *, 'magnitude of cx2:     ', CABS(complex_num2)
   
   print *, 'cx1+cx2: ', complex_num1+complex_num2
   print *, 'cx1-cx2: ', complex_num1-complex_num2
   print *, 'cx1*cx2: ', complex_num1*complex_num2
   print *, 'cx1/cx2: ', complex_num1/complex_num2

end program complex_type 
