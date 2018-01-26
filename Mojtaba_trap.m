% Trapezoidal area
clear all
clc
fun=@(x)(sin(4*sqrt(x))+5.1565399);
a=0;
b=10;
low_limit=a;
up_limit=b;
no_splits=10e7;
h=(b-a)/no_splits;
x = linspace(a,b,no_splits);
tic
result = integral_trapezoid( fun, low_limit, up_limit, no_splits );
toc
fprintf( 'Trapezoidal area= %f',result)
%% Buid in code
% x=[0:1.0000e-07:10];
% tic
% y=(sin(4*sqrt(x))+5.1565399);
% z=trapz(x,y)
% toc
