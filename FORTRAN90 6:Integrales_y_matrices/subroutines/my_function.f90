function my_function(x,t1,t2)
    use types
    implicit none
    real(dp) :: my_function
    real(dp) :: t1,t2,x
    real(dp) :: A(2,2)
    real(dp) :: alpha(2)
    real(dp) :: beta(2)

    alpha=(/0.5,0.5/)
    beta=(/0.5,0.5/)
    call matrix_A(A,t1,t2)

    my_function=  dot_product(matmul(alpha,A),beta)*x**2 &
                + dot_product(alpha,beta)*t1*t2*x        &
                + t1 + t2
    return
end function my_function