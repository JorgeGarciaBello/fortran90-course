subroutine read_data()
    use types
    implicit none
    real(dp) :: data(100,2)
    integer  :: i,j,u

    open(newunit=u, file='data/data_1.dat',status='old')    
        read(u,*) ((data(i,j), j=1,2), i=1,100)
    close(u)
    open(newunit=u, file='data/data_2.dat',status='old')    
        read(u,*) ((data(i,j), j=1,2), i=1,100)
    close(u)
    open(newunit=u, file='data/data_3.dat',status='old')    
        read(u,*) ((data(i,j), j=1,2), i=1,100)
    close(u)
    return
end subroutine