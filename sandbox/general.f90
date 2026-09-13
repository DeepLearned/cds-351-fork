program program_name
  !use some_module
  implicit none

  ! This is a comment - the line is ignored by the compiler
  ! Comments can start in any column

  ! Declarations
  integer :: count
  real :: value
  
  ! Executable statements
  value = 3.0
  print *, value
 
  ! The statement continues seamlessly onto the next line
  large_result = variable_one + variable_two + variable_three &
             + variable_four + variable_five  

  ! Fortran allows lines up to 132 characters but...
  print *, "This is a very long error message that needs to be broken up &
         &so that it does not exceed the line length limit of the compiler."

end program program_name
