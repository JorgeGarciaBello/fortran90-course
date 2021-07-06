subroutine cylinder(r,z)
    use types
    implicit none
    integer, parameter :: n=50
    real(dp) :: r,z    
    real(dp) :: z_i, z_f, z_s
    real(dp) :: t_i, t_f, t_s
    real(dp) :: x(n),y(n),zz(n)
    integer  :: u, i, j, k
    
    z_i=-z/real(2)
    z_f= z/real(2)

    t_i=0.0_dp
    t_f=3.1415_dp*2.0_dp
    t_s=(t_f-t_i)/real(n)
    
    z_s=(z_f-z_i)/real(n)

    do i=1,n
        x(i) = r*sin(t_s*i)
        y(i) = r*cos(t_s*i)
        zz(i)= z_i + z_s*i
    enddo
    open(newunit=u, file='data/cylinder.dat')
    do i=1,n
        !do j=1,n
            do k=1,n
                write(u,*) x(i),y(i),zz(k)
            enddo
        !enddo
    enddo
    close(u)
    return
end subroutine cylinder