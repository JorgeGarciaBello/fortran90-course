subroutine create_data()
    use types
    implicit none
    integer :: i
    real(dp) :: r
    open(11,file='data.dat')
        do i=1,100
            call RANDOM_NUMBER(r)
            write(11,*) i,r
        enddo
    close(11)
    return
end subroutine create_data
