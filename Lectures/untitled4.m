% lecture 10/10/21

%% differentiation
clc; clear all; format compact;

% backward forward or central

x= [0:10];
y= [5 4 2 3 4 7 9 7 6 5 4];

dx= diff(x)
dy= diff(y)
dydx= dy./dx
%xf= (2:end)%forward diff
%xb= (1:end-1) %backward diff
%xc= %central diff

%plot(x,y,'ok')
%hold on
%plot(xf,dydx)
%plot(xb,dydx)
%plot(xc,dydx)


%% example 1

clc; clear all; format compact;

x= linspace(0,pi,50);
y=sin(x);

n= length(x);
dy=y(3:n)-y(1:n-2);
dx=x(3:n)-x(1:n-2);

dydx= dy./dx

plot(x,y,x(2:n-1),dydx)

%% ODE's

clc; clear all; format compact;

% solve dy/dx + 10y =0
% dy/dx= -10y
% create a function ODE 
xrange= [0,0.5];
y0=2;
[x,y]= ode45(@ODE, xrange,y0);

plot(x,y)

%% ODE ex 3

clc; clear all; format compact;

xrange= [6,24];
y6=-3;
[x,y]= ode45(@ODE2, xrange,y6);

plot(y,x)
