# Multiple Trapezoidal Integration Method
A trapezoidal integration method is one of the Newton-Cotes integration methods to solve integration problem from first derivative equation numerically. In this repository, the trapezoidal method has been implemented in Fortran 95 program.
# Usage
File trapezoidal.f95 is the main program to run the trapezoidal integration. In this example, the function of<br>
![eq](https://i.upmath.me/svg/f(x)%3D0.2%2B25x-200x%5E2%2B675x%5E3-900x%5E4%2B400x%5E5)
<br>is used to solve the integration problem. You have to set three parameters input, for example:
  - Initial Boundary = 0
  - Final Boundary = 0.8
  - Data Length = 100
 
For this example, the result of trapezoidal when `x=0.8` is 1.64187694. This program will generate file `trapz.txt` as output result. This file is used to plot by using plot_trapezoidal.m. Finally, the result is shown in Figure bellow.

<img width=600 height=500 src="https://github.com/auliakhalqillah/Trapezoidal-Integration-Method/blob/master/trapezoidal_plot.png">

 # Contact
📧: auliakhalqillah.mail@gmail.com
 # Reference
[Julan Hernadi,2012,Matematika Numerik dengan Implementasi Matlab](http://andipublisher.com/produk-1012004497-matematika-numerik-dengan-implementasi-m.html)
