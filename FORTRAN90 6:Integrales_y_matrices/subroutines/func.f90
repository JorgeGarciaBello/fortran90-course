function func(x,p)
    use types
    implicit none
    real(dp) :: func
    real(dp) :: x,p(*)

    func=(p(1)*x+p(2))/p(3)
    return
end function func