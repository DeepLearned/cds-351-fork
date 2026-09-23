program hurr_cat
   implicit none
   integer :: sustained_wind_MPH
   integer :: category

   ! basic IO
   print *, 'Enter wind (MPH): '
   ! Read from the command line
   read *, sustained_wind_MPH

   HurricaneCat: select case (sustained_wind_MPH)

    case ( 75:95 )
       category = 1
    case ( 96:110 )
       category = 2
    case ( 111:129 )
       category = 3
    case ( 130:156 )
       category = 4
    case ( 157: )
       category = 5
    case default
       category = 0

   end select HurricaneCat

   print *,'Category: ',category

end program
