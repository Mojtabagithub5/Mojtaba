% function for damped spring-mass system
% mx''+cx'+kx=Fsin(wt)
% converting 2nd ODE into two 1st ODE 
% let x'=v , x(0)=0;
%  mv'+cv+kx=Fsin(wt)
% v'=(Fsin(wt)-(kx)-(cv))/m ; v'(0)=0;
function dy=spring(F,m,k,omega,c,t,y,analysis,solver)
x=y(1); 
xdot=y(2);
dy=zeros(2,1);
dy(1)=xdot;
if analysis==3
dy(2)=(F*sin(omega*t)-k*x-c*xdot)/m;
elseif analysis==2
dy(2)=(-c/m)*y(2)-(k/m)*y(1);
elseif analysis==1
dy(2)=(-(k/m)*y(1));
end