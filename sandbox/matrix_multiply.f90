program matrix_multiply
    implicit none
    
    integer :: i, j, k
    integer, parameter :: M = 2, N = 3, P = 4
    
    real, dimension(M, N) :: a
    real, dimension(N, P) :: b
    real, dimension(M, P) :: c
    
    ! Initialize sample data
    a = 2.0
    b = 3.0
    c = 0.0  ! Crucial to clear the result matrix first
    
    ! Nested DO loops (not-optimized)
    do i = 1, M
        do j = 1, P
            do k = 1, N
                c(i, j) = c(i, j) + a(i, k) * b(k, j)
            end do
        end do
    end do
    
    print *, "Resulting Matrix c(1, 1):"
    print *, c(1, 1) ! Print one value
    
end program matrix_multiply

