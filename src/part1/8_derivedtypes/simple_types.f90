program dtypes_demo
   implicit none

   type person_t
      character(len=64) :: name
      real :: age
      integer :: height  ! in cm
      character (len=1) :: sex
   end type person_t

   type company_t
      type (person_t) :: programmer
      real :: salary
      integer :: id
   end type company_t

   type(person_t) :: person1, person2, person3
   type(person_t), dimension(10) :: people
   type(company_t), dimension(100) :: staff

   ! component order is important
   person1 = person_t( 'Alice', 30.5, 65, 'F')
   ! using keywords ... order is not important
   person1 = person_t(name='Alice', age=30.5, height=65, sex='F')

   person2 = person_t( 'Robert', 29, 70, 'M')
   people(1) = person_t('Alice', 30.5, 65, 'F')


   print *, 'Name: ', person1%name   ! 'Alice'

   print *, 'Person1: ', person1      ! Alice  30.5  65, F

   person1%age = 35                  ! Update component
   print *, 'Updated Age: ', person1%age     ! 31

   person3 = person1    ! note we are copying alice's data to claire

   person3%name = 'Claire'  ! update name only
   print *, 'Person3: ', person3

   ! Array of persons
   staff(1)%salary = 80000
   staff(1)%id = 63718
   staff(1)%programmer%name = "Oscar"
   staff(1)%programmer%age = 35
   staff(1)%programmer%height = 72
   staff(1)%programmer%sex = "M"
    
   staff(2) = company_t( person_t('Emily', 49, 68, "F"), salary=100000, id=98234)

   print *,'Staff:'
   print *, staff(1)
   print *, staff(2)

 end program dtypes_demo
