! Fortran character data type
program char_type

    implicit none

    integer, parameter :: MAX_LENGTH_CHAR = 64
    character (len = MAX_LENGTH_CHAR) :: some_text
    
    ! named constant:
    character (len=13), parameter :: ERROR_MESSAGE = 'Unknown error!'

    character (12) :: a_string = "Fortran"
    character :: a_single_char = "C"

    character(8) abc, a, c

    some_text = '        Fortran programming        '
    
    print *, 'Length of some_text:', LEN(some_text)
    print *, '|',some_text,'|'
    print *, '|',TRIM(some_text),'|'  ! TRIM: remove _trailing_ spaces

    print *, '|',ERROR_MESSAGE,'|'       ! note '!' is missing in output, why?

    ! // is the concatenation operator for character data types
    print *, 'Adding strings'//' in '//TRIM(a_string) // '.'

    ! Characters are arrays
    print *
    print *, 'Programming in : |', a_string,'|'
    print *, 'Programming in : |', a_single_char,'|'

    ! Substrings
    abc = 'ABCDEFGHIJKL'(1:8)   ! Substring of a constant
    a = abc(3:5)            
    c = abc(6:)  
    print *
    print *, '|',abc,'|'
    print *, '|',a,'|'
    print *, '|',c,'|'
    
end program char_type
