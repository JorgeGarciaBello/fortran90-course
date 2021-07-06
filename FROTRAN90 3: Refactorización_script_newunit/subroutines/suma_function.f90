function suma_function(a,b)
    use types, only: dp
    implicit none
    real(dp) :: suma_function
    real(dp) :: a,b

    suma_function=a+b

    return
end function suma_function