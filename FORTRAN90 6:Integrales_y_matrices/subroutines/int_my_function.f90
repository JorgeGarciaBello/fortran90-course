subroutine int_my_function(t1,t2,a,b,n,r)
    use types
    implicit none
    real(dp) :: t1,t2,a,b,r,h
    integer  :: i,n
    real(dp) :: x
    real(dp) :: my_function

    r=0.0_dp
    h=(b-a)/real(n)
    do i=1,n+1
        x=a + h*real(i-1)
        r = r + h*(my_function(x,t1,t2)+my_function(x+h,t1,t2))/real(2)
    enddo
    return
end subroutine int_my_function