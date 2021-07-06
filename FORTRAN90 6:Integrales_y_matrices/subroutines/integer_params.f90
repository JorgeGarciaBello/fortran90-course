subroutine integer_params(g,p,a,b,n,r)
    use types
    implicit none
    real(dp), external :: g
    real(dp) :: a,b,r,h,p(*)
    integer  :: i,n
    real(dp) :: x   

    r=0.0_dp
    h=(b-a)/real(n)
    do i=1,n+1
        x=a + h*real(i-1)
        r = r + h*(g(x,p)+g(x+h,p))/real(2)
    enddo
    return
end subroutine integer_params




















