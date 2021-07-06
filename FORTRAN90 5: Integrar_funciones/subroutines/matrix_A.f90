subroutine matrix_A(A,t1,t2)
    use types
    implicit none
    integer, parameter  :: n=2
    real(dp) :: A(n,n),t1,t2
    integer  :: i    
    A(1,1)=cos(t1);  A(1,2)=sin(t2)
    A(2,1)=-sin(t2); A(2,2)=cos(t1)
    return
end subroutine
