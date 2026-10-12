module matrix_mod
    implicit none
    private
    public :: matrix_t
    
    type :: matrix_t
        real, allocatable, dimension(:,:) :: values
    end type matrix_t
    
end module matrix_mod

program test_matrix
    use matrix_mod
    implicit none
    
    ! Declaration
    type(matrix_t) :: m
    
    ! Allocate the matrix dynamically at runtime
    allocate(m%values(5, 5))
    
    print *, "Rows:", size(m%values, 1)
    print *, "Cols:", size(m%values, 2)
     
end program test_matrix

