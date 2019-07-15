% This file is used to plot results of trapezoidal
%
% Created by: Aulia Khalqillah,S.Si(2019)
%
% Loda Data
data = load('trapz.txt');

% Take elemen data
iter = data(:,1);
x_data = data(:,2);
f_ori = data(:,3);
f_trapz = data(:,4);
error = data(:,5);

% plot
subplot(211)
plot(x_data,f_ori,'b','linewidth',2.)
hold on
plot(x_data,f_trapz,'r','linewidth',2.)
xlabel('Data X')
ylabel('F(X)')
title('Trapezoidal Integration')
legend('Original Function','Integrated using trapezoidal','Location','NorthWest')

subplot(212)
plot(iter,error,'b','linewidth',2.)
xlabel('Iteration')
ylabel('Error (%)')
title('Error of integration trapezoidal between final result with each iteration')
