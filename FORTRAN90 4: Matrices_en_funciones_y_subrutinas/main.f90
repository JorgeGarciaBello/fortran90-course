program main
    use types, only: dp
    implicit none
    integer, parameter :: n=2
    integer, parameter :: m=3
    integer, parameter :: p=1
    real(dp) :: A(n,n),B(n,n),C(n,p),R(n),t1,t2
    real(dp) :: trazaC, result
    integer :: i
    
    t1=0.0_dp
    t2=0.0_dp
    result=trazaC(t1,t2)

    print*,'result: ', result   
    
end program main