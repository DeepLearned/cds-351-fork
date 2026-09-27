program foo
    ! Test the functions below
    implicit none
    integer :: n = 5
    real, allocatable :: values(:)

    allocate(values(n))
    values = [1, 2, 3, 4, 5]
    
    print *, mean_value_explicit(n, values)
    print *, mean_value_assumed(values)
    
contains

pure function mean_value_explicit(n, values) result(mean)
    implicit none
    integer, intent(in) :: n
    real, intent(in) :: values(n) ! explicit-shape array
    real :: mean
    
    mean = sum(values) / real(n) ! n is not really needed here,
                                 ! but it is passed in
end function mean_value_explicit

pure function mean_value_assumed(values) result(mean)
    implicit none
    real, intent(in) :: values(:) ! assumed-shape array
    real :: mean
    
    mean = sum(values) / real(size(values))
    
end function mean_value_assumed

end program foo
