subroutine read_data()
    use types
    implicit none
    real(dp) :: data(100,2)
    integer  :: i,j 


    open(11, file='data.dat',status='old')    
        read(11,*) ((data(i,j), j=1,2), i=1,100)
    close(11)

    return
end subroutine