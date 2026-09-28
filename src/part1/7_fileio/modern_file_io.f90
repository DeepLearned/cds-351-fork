module io_manager
    ! module: configuration and io manager
    implicit none
    save  ! preserves module variable states across calls

    ! configuration variables
    character(len=100) :: input_file  = ""
    character(len=100) :: output_file = ""
    integer            :: max_records  = 0
    real               :: threshold    = 0.0

    ! define the namelist group mapping directly to the module variables
    namelist /sim_specs/ input_file, output_file, max_records, threshold

contains

    ! subroutine: load configuration via namelist
    subroutine load_config(nml_path)
        character(len=*), intent(in) :: nml_path
        integer :: unit, ios
        character(len=256) :: message

        open(newunit=unit, file=nml_path, status="old", action="read", &
             iostat=ios, iomsg=message)
        
        if (ios /= 0) then
            error stop "failed to open config file (" // trim(nml_path) // "): " // trim(message)
        end if

        ! note how we read the namelist data into module variables
        read(unit, nml=sim_specs, iostat=ios, iomsg=message)
        close(unit)

        if (ios /= 0) then
            error stop "failed to read namelist configuration: " // trim(message)
        end if
    end subroutine load_config

    ! subroutine: process the data files
    subroutine process_data()
        integer :: in_unit, out_unit, ios, record_count
        real :: current_value
        character(len=256) :: message

        open(newunit=in_unit, file=trim(input_file), status="old", action="read", &
             iostat=ios, iomsg=message)
        if (ios /= 0) then
            error stop "failed to open input file (" // trim(input_file) // "): " // trim(message)
        end if

        ! open the summary output file
        open(newunit=out_unit, file=trim(output_file), status="replace", action="write", &
             iostat=ios, iomsg=message)
        if (ios /= 0) then
            close(in_unit)
            error stop "failed to create output file (" // trim(output_file) // "): " // trim(message)
        end if

        ! write a header to the output file
        write(out_unit, "(a)") "-------- simulation summary -------"
        write(out_unit, "(a, f6.2)") "threshold cutoff: ", threshold
        write(out_unit, "(a)") "-----------------------------------"

        ! data processing loop
        ! we don't know how many items in the file, so we use a while loop
        record_count = 0
        do
        ! Are we done, if so exit
            if (record_count >= max_records) exit

            read(in_unit, *, iostat=ios) current_value
            
            ! catch end-of-file safely (iostat<0) or execution errors (iostat>0)
            if (ios < 0) then
                exit ! end of file reached normally
            elseif (ios > 0) then
                error stop "runtime error reading data line."
            end if

            record_count = record_count + 1

            ! save records to out_unit
            if (current_value >= threshold) then
                write(out_unit, "(a, i3, a, f6.2)") "record #", record_count, ": ", current_value
            end if
        end do

        ! clean up handles
        close(in_unit)
        close(out_unit)

        print *, "processing complete. results exported to: ", trim(output_file)
    end subroutine process_data

end module io_manager

