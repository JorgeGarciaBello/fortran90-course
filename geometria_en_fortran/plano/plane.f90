subroutine plane(r,theta,z)
    use types
    implicit none
    integer, parameter :: n=150
    real(dp) :: r,theta,z
    real(dp) :: r_s,z_s
    real(dp) :: r_i, r_f    
    real(dp) :: z_i, z_f
    real(dp) :: x(n),y(n),zz(n)
    integer  :: u, i, j, k
    r_i=-r/real(2)
    r_f= r/real(2)
    
    z_i=-z/real(2)
    z_f= z/real(2)

    r_s=(r_f-r_i)/real(n)
    z_s=(z_f-z_i)/real(n)

    do i=1,n
        x(i) = (r_i + r_s*i)*sin(theta)
        y(i) = (r_i + r_s*i)*cos(theta)
        zz(i)= z_i + z_s*i
    enddo
    open(newunit=u, file='data/plane.dat')
    do i=1,n        
        do k=1,n
            write(u,*) x(i),y(i),zz(k)
        enddo
    enddo
    close(u)
    return
end subroutine plane