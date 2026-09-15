program types
  integer :: n
  real :: temperature
  real :: a, b
  complex :: z
  logical :: is_valid
  character(len=40) :: name
  character :: s

  n = 1
  temperature = 32.0
  a = 2.0
  b = 3.0
  z = cmplx(a, b)
  is_valid = .false.
  name = 'Fortran'
 
  print *, temperature
  print *, is_valid
  print *, '|',trim(name),'|'

end program types
