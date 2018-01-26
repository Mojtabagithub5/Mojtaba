% 2D Trapezoidal Rule
clear all
clc
n = 5000;
xmin=0;
xmax=10;
ymin=0;
ymax=10;
h1=(xmax-xmin)/n;
h2=(ymax-ymin)/n;
x=xmin:h1:xmax;
y=ymin:h2:ymax;
[X,Y] = meshgrid(x,y); 
fun=(sin(4*sqrt(X+Y))+4.94832508);
tic
 result = Mojtaba_trap_integral(x, y, fun);
toc
fprintf( 'Area given by 2D Trapezoidal Rule = %f',result)
