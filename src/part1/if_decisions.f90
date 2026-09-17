program if_statement
    implicit none
    
    ! Variable declarations
    integer :: score
    real :: temperature
    
    ! 1. Simple One-Line IF Statement
    ! (Executes a single command if the condition is true)
    temperature = -5.5
    if (temperature < 0.0) print *, "Warning: Freezing temperatures!"
    
    ! 2. Standard IF-THEN Block
    ! (Executes multiple lines of code if true)
    score = 85
    if (score >= 50) then
        print *, "Result: Passed"
        print *, "Keep up the good work!"
    end if
    
    ! 3. Complete IF-THEN-ELSE IF-ELSE Construct
    ! (Checks multiple sequential conditions)
    score = 72
    
    if (score >= 90) then
        print *, "Grade: A"
    else if (score >= 80) then
        print *, "Grade: B"
    else if (score >= 70) then
        print *, "Grade: C"
    else
        print *, "Grade: F"
    end if

end program if_statement

