program foo
    implicit none
    integer, parameter :: n = 6
    real, parameter :: missing_value = -999.0
    real :: observations(n)

    ! array initialization
    observations = [ 1.3, 4.1, missing_value, 0.6, 2.4, 3.2 ]

    print *, size(observations)
    print *, shape(observations)

    ! bounds checking
    ! print *, observations(0)

    ! from before
    valid_count = 0
    sum_value   = 0.0
    do i = 1, size(observations)
        if (observations(i) == missing_value) cycle
        valid_count = valid_count + 1
        sum_value   = sum_value + observations(i)
    end do

    ! masking
    ! any_missing = any(values == missing_value)

    ! modern
    ! valid_count = count(observations /= missing_value)
    ! sum_value = sum(observations, mask = observations /= missing_value)
    
end program foo
