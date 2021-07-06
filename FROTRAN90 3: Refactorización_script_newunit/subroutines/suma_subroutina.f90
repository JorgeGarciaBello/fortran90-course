subroutine suma_subroutina(a,b,c)
    use types, only: dp
    implicit none
    real(dp) :: a,b,c

    c=a+b
    a=10
    b=10
    return
end subroutine suma_subroutina