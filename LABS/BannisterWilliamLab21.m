% William Bannister
% Lab 21
% 11/10/21
% ME 203.1101

%% DE example

clc; clear all; format compact;
x= 0:.1:10;
y=cos(x);
n=length(x);
dy= y(3:n)-y(1:n-2);
dx= x(3:n)-x(1:n-2);
dydx= dy./dx;
plot(x,y,x(2:n-1),dydx)
legend('cos(x)','dy/dxcos(x)')

%% ode45
clc; clear all; format compact;

F= @(x,y)(-2*x.^3+x-y);
y0=1;

[x,y]= ode45(F,[0 3],y0)
plot(x,y)
title('ODE45')
xlabel('X')
ylabel('Y')