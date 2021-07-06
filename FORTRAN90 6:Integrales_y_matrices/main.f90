program main
    use types, only: dp
    implicit none
    integer, parameter :: n=2
    integer, parameter :: m=100    
    integer, parameter :: PI=3.14151692
    real(dp) :: r,results(m,m)    
    real(dp) :: t1_i,t1_f,h_1
    real(dp) :: t2_i,t2_f,h_2
    real(dp) :: t1,t2    
    integer  :: i,j,u
    
    t1_i=0.0_dp
    t1_f=PI
    t2_i=0.0_dp
    t2_f=PI

    h_1=(t1_f-t1_i)/m
    h_2=(t2_f-t2_i)/m

    open(newunit=u,file='data/resultados.dat')
    do i=1,m
        t1=t1_i + h_1*i
        do j=1,m
            t2=t2_i + h_2*j
            call int_my_function(t1,t2,0.0_dp,1.0_dp,1000,r)            
            write(u,*) t1,t2,r
        enddo
        write(u,*) ' '
    enddo
    close(u)
    !print*, r
end program main