clear all; close all; clc
% Damped resonant
% Sigle dof spring mass damper system
% Choose analysis type, 1=free, 3=forced, 2=damped
% Choose MATLAB solver (45, 23, 15, 24)

solver=45;
analysis=3;
y0=[0;0];
t0=0;
tinc=0.002;
tend=4;
tspan=t0:tinc:tend;
k=2e3; 
m=10;
F=2;
c=5;
omega=sqrt(k/m);
% omega=5;
%omegad=omega*sqrt(1-zeta^2);
RelTol=1e-3;
AbsTol=1e-6; 
tic
options = odeset('AbsTol',AbsTol,'RelTol',RelTol);
% [T,Y]=ode45(@(t,y) spring(F,m,k,omega,c,t,y,analysis),tspan,y0,options);
if solver == 45
    display('Integrator: ode45 (Matlab), options:')
    [T,Y]=ode45(@(t,y) spring(F,m,k,omega,c,t,y,analysis,solver),tspan,y0,options);
elseif solver == 15
    display('Integrator: ode15s (Matlab), options:')
    [T,Y]=ode15s(@(t,y) spring(F,m,k,omega,c,t,y,analysis,solver),tspan,y0,options);
elseif solver == 23
    display('Integrator: ode23s (Matlab), options:')
    [T,Y]=ode23s(@(t,y) spring(F,m,k,omega,c,t,y,analysis,solver),tspan,y0,options);
elseif solver == 24
    display('Integrator: ode23t (Matlab), options:')
    [T,Y]=ode23t(@(t,y) spring(F,m,k,omega,c,t,y,analysis,solver),tspan,y0,options);
end
toc

plot(T,Y(:,1),'k*-', T, Y(:,2), 'r', 'MarkerSize', 2, 'LineWidth', 1);
title('Forced Single DOF Spring-Mass-Damper','FontSize',17);
xlabel('time (sec)','FontSize',17);
ylabel('Displacement and Velocity','FontSize',17); grid on;
axis tight;

hold on;
% Acceleration=-(c/m)*Y(:,2)-(k/m)*Y(:,1);
% plot(T,Acceleration,'co--', 'MarkerSize', 2, 'LineWidth', 0.5 );
% legend('Displacement', 'Velocity', 'Acceleration');
% hold off;
% plot(T,Y(:,1),'b');
% hold on;
% plot(t,u(:,1),'r*--', t, u(:,2), 'bd:', 'MarkerSize', 2, 'LineWidth', 0.5);
