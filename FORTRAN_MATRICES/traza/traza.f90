function traza(n,A)
    use types
    implicit none
    real(dp) :: traza
    integer  :: n
    real(dp) :: A(n,n)
    integer  :: i
    
    traza = 0.0_dp    
    do i = 1,n
        traza = traza + A(i,i) 
    enddo
end function traza