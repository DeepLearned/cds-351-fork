program simple_io
  real :: temperature = 3.1415927
  print *, "Initial value", temperature
  print *, "Enter temperature:"
  read *, temperature
  print '(a, f4.2)', "You entered:", temperature
end program
