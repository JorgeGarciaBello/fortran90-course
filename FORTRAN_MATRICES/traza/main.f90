program main
    use types
    implicit none
    integer, parameter :: n=3
    real(dp) :: traza, r
    real(dp) :: A(3,3)

    A=1.0_dp
    r = traza(n,A)
    print*, r

end program main