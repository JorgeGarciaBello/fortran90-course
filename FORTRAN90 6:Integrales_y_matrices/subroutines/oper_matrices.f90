subroutine oper_matrices(A,B,C,R,n,m,p,t1,t2)
    use types
    implicit none
    integer  :: n,m,p    
    real(dp) :: A(n),B(n,n),C(n,p),R(n),t1,t2
    integer  :: i
    B=0.0_dp
    do i=1,n
        B(i,i)=1.0_dp
    enddo
    A=(/sin(t1),cos(t2),t1,t2,t1+t2/)
    print*,'A', A
    R=matmul(A,B)
    return
end subroutine
