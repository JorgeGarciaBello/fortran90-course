function trazaC(t1,t2)
    use types
    implicit none
    integer, parameter :: n=2
    real(dp) :: trazaC
    real(dp) :: t1,t2
    real(dp) :: A(n,n)

    call matrix_A(A,t1,t2)

    A=matmul(A,A)

    trazaC=A(1,1)+A(2,2)
    return
end function
