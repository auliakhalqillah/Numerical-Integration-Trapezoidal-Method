# Multiple Trapezoidal Integration Method
A trapezoidal integration method is one of the Newton-Cotes integration methods to solve integration problem numerically. The trapezoidal method has been implemented in Fortran 95 program. So, make sure you have Fortran compiler in your computer already.
# Usage
File trapezoidal.f95 is the main program to run the trapezoidal integration. In this example, the function of 
![eq](https://i.upmath.me/svg/f(x)%3D0.2%2B25x-200x%5E2%2B675x%5E3-900x%5E4%2B400x%5E5)
is used to solve the integration problem. You have to set three parameters input, for example:
  - Initial Boundary = 0
  - Final Boundary = 0.8
  - Data Length = 100
 
 For this example, the result of trapezoidal integration is 1.64187694 (numerically). After you run the program, the output file "trapz.txt" will be produced. This file is used to plot the result using plot_trapezoidal.m. Finally, you can find in figure trapezoidal_plot.png as the result.
 # Contact
Email: auliakhalqillah.mail@gmail.com
 # Material Source
[Julan Hernadi,2012,Matematika Numerik dengan Implementasi Matlab](http://andipublisher.com/produk-1012004497-matematika-numerik-dengan-implementasi-m.html)
