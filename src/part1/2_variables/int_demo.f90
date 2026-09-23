! Fortran integer data types
program integer_type
   implicit none  ! <<< every program unit should start with this
   ! This is a type declaration statement
   integer            :: defint            ! default integer
   
   ! Note use of KIND type parameter - refers to memory size reserved for variable
   integer(KIND =  2) :: shortint          ! two byte integer
   integer(KIND =  4) :: longint           ! four byte integer
   integer(KIND =  8) :: verylongint       ! eight byte integer
   integer(KIND = 16) :: veryverylongint   ! sixteen byte integer

   ! Use HUGE intrinsic function to print largest number in type
   print *, 'largest default integer: ', HUGE(defint)  ! default integer
   
   ! Use KIND intrinsic function to obtain value of kind type parameter 
   print *, 'memory size of default integer: ', KIND(defint)
   shortint = 10   ! initialize integer
   print *, HUGE(shortint), KIND(shortint)
   print *, HUGE(longint), KIND(longint)
   print *, HUGE(verylongint), KIND(verylongint)
   print *, HUGE(veryverylongint), KIND(veryverylongint)
   
end program integer_type
