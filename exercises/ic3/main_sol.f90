program summarize_observations 
    implicit none
    integer, parameter :: n = 6
    real, parameter :: missing_value = -999.0
    integer :: i, valid_count
    real :: observation, sum_value, mean
    valid_count = 0
    sum_value   = 0.0

    do i = 1, n
        ! Assign observations the value of i;
        ! make observations 3 and 5 missing
        if (i == 3 .or. i == 5) then
            observation = missing_value
        else ! Assign observations the value of i
            observation = real(i)
            ! this will also work
            ! observation = i
        end if

        ! Include only valid observations
        ! compute sum_value and valid_count
        if (observation /= missing_value) then
            valid_count = valid_count + 1
            sum_value   = sum_value + observation
        end if

    end do
    ! Avoid division by zero if all observations are missing
    if (valid_count > 0) then
        ! Calculate mean here:
        mean = sum_value / real(valid_count)

        ! Results
        print *, "Valid observations:", valid_count
        print *, "Sum:", sum_value
        print *, "Mean:", mean
    else
        print *, "No valid observations"
    end if
    
end program summarize_observations
