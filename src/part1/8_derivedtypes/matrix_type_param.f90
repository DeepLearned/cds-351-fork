module matrix_mod
    implicit none
    private
    public matrix_t

    ! Parameterized data type
    type :: matrix_t(rows, cols)
        integer, len :: rows, cols
        real, dimension(rows, cols) :: values
    end type matrix_t
    
end module matrix_mod

program test_matrix
    use matrix_mod
    implicit none
    
    ! Declaration
    type(matrix_t(rows=5, cols=5)) :: m

    print *, "Rows:", size(m%values, 1)
    print *, "Cols:", size(m%values, 2)

end program test_matrix
