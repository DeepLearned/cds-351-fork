program ModernPrecision
    ! Import the specific constants safely from the intrinsic module
    use, intrinsic :: iso_fortran_env, only : real32, real64
    implicit none

    ! Declare variables using the standard kind types
    real(kind=real32) :: single_precision_val
    real(kind=real64) :: double_precision_val

    ! Append the kind parameters to the number constants directly
    single_precision_val = 1.0_real32 / 3.0_real32
    double_precision_val = 1.0_real64 / 3.0_real64

    print *, "32-bit Real (1/3):", single_precision_val
    print *, "64-bit Real (1/3):", double_precision_val

end program ModernPrecision

