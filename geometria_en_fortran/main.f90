program main
    use types
    implicit none
    real(dp) ::r,th,z
    
    r = 10.0_dp
    th= 10.0_dp
    z = 100.0_dp

    call plane(100.0d0,0.0,500.0d0)
    call cylinder(r,z)
    return
end program main