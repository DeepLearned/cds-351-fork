! Fortran logical data type
program logical_type

   implicit none  
   
   logical :: t_val, f_val

   t_val = .true.
   f_val = .false.

   print *, 'A true value: ', t_val
   print *, 'A false value: ', f_val

   print *, 'T OR F is ', t_val .or. f_val
   print *, 'T AND F is ', t_val .and. f_val
   print *, 'NOT F is ', .not. f_val
   print *, 'T eqv T is ', t_val .eqv. t_val
   print *, 'T neqv T is ', t_val .neqv. t_val

end program logical_type 
