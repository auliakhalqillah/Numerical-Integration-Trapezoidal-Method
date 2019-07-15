! HOW TO COMPILE THROUGH COMMAND LINE (CMD OR TERMINAL)
! gfortran -c trapezoidal.f95
! gfortran -o trapezoidal trapezoidal.o
!
! The program is open source and can use to numeric study purpose.
! The program was build by Aulia Khalqillah,S.Si
!
! email: auliakhalqillah.mail@gmail.com
! ==============================================================================
program trapz
  implicit none
  real :: xi,xf,xn,h,lt,li,f
  real,dimension (1000) :: x,fa,fori,result,estimate_i,er
  integer :: i,j,n
  character(len=100) :: save_file

  write(*,*)""
  write(*,*)"--------------------------------"
  write(*,*)"TRAPEZOIDAL METHOD - INTEGRATION"
  write(*,*)"--------------------------------"
  write(*,*) ""
  write(*,"(a)",advance="no") "Insert Initial Boundary (XI):"
  read*, xi
  write(*,"(a)",advance="no") "Insert Final Boundary (XF):"
  read*, xf
  write(*,"(a)",advance="no") "Insert Data Length (ex: N=100):"
  read*, n

  write(*,*)""
  ! Calculate step data point
  h = (xf-xi)/n
  ! Generate the data with h step data point and subtitute in original function
  x(1) = xi
  do i = 1,n
    x(i+1) = x(i) + h
    fori(i) = f(x(i))
  end do

  ! Sum the second part of the trapezoidal equation
  fa(1) = f(xi)
  do j = 1,n-1
    fa(j+1) = fa(j) + f(x(j+1))
  end do

  ! Calculate the trapezoidal integration
  do i = 1,n
    result(i) = (h/2)*(f(xi) + (2*fa(i)) + f(xf))
  end do

  ! Calculate error between final result(n) with each iteration
  do i = 1,n
    er(i) = abs((result(n)-result(i))/result(n))*100
  end do

  write(*,*) "Trapezoidal Integration Result: ", result(n)
  write(*,*) "error: ",er(n), " %"
  write(*,*) ""

  ! Save integration result to file
  save_file = 'trapz.txt'
  open (10,file=save_file,status='replace')
  do i = 1,n
    write(10,*) i,x(i),fori(i),result(i),er(i)
  end do
  write(*,*)"Result has been saved in > ",save_file
  write(*,*) ""
  close(10)
end program

real function f(x)
  implicit none
  real :: x
  f = 0.2 + (25*x) - (200*(x**2)) + (675*(x**3)) - (900*(x**4)) + (400*(x**5))
  ! f = 2*x
end function
