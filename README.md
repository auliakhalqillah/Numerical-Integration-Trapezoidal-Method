# Trapezoidal-Integration-Method
Trapezoidal integration method is one of the Newton-Cotes integration methods to solve integration problem numerically. The trapezoidal methos has been implemented in Fortran 95 program. So, make sure you have Fortran compiler in your computer already.
# The Package
There are two files in this package:
  1. trapezoidal.f95
  2. plot_trapezoidal.m (Matlab)
# How To Use?
File trapezoidal.f95 is the main program to run the trapezoidal integration. In this example, the function of f(x) = 0.2 + 25x − 200x^2 + 675x^3 − 900x^4 + 400x^5 is used to solve the integration problem. You have to set three parameters input, for example:
  - Initial Boundary = 0
  - Final Boundary = 0.8
  - Data Length = 100
 
 For this example, the result of trapezoidal integration is 1.64187694 (numerically). The result you can find in figure trapezoidal_plot.png
 # Contact
 For more information, email: auliakhalqillah.mail@gmail.com
 # Material Source
Steven C. Chapra and Raymond P. Canale, Numerical Methods for Engineers, Sixth Edition
