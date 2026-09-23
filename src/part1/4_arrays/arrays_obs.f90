program foo
    implicit none
    integer, parameter :: n = 6
    real, parameter :: missing_value = -999.0
    real :: observations(n)
    logical :: any_missing(n) ! note this is a logical array
    integer:: i, valid_count
    real :: sum_value
    
    ! array initialization
    observations = [ 1.3, 4.1, missing_value, 0.6, 2.4, 3.2 ]

    print *, size(observations)
    print *, shape(observations)

    ! bounds checking
    ! this is a problem and is caught if one uses -fcheck-all compiler flag
    ! print *, observations(0)

    ! from slides
    valid_count = 0
    sum_value   = 0.0
    do i = 1, size(observations)
        ! Note the following comparison may not work. Why?
        if (observations(i) == missing_value) cycle
        ! better:
        ! if (abs(observations(i) - missing_value) < 1e-5) cycle
        valid_count = valid_count + 1
        sum_value   = sum_value + observations(i)
    end do
    
    print *, valid_count
    print *, sum_value
    
    ! using masking returns an array
    any_missing = (observations == missing_value)
    print *, any_missing
    
    ! using any() returns a single logical result
    print *, any(observations == missing_value)
    
    ! modern approach: using masking, no loops!!!
    valid_count = count(observations /= missing_value)
    sum_value = sum(observations, mask = observations /= missing_value)

    print *, valid_count
    print *, sum_value

end program foo
