program main
    ! importing only required procedures
    use io_manager, only : load_config, process_data
    implicit none

    print *, "initializing simulation environment..."

    ! read runtime specifications from the namelist file
    call load_config("config.nml")

    ! stream and filter file information
    call process_data()

end program main
