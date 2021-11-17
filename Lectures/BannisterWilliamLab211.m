%William Bannister
% ME 203.1101
% 11/15/21
% Lab 22

clc; clear all; format compact;
%% Second order ODE

xrange= [0 5];
initial= [0.05 0]; %y initial and y' initial

[x,s]= ode45('order2', xrange, initial);

subplot(1,2,1)
plot(x,s(:,1))
xlabel('x')
ylabel('y')

subplot(1,2,2)
plot(x,s(:,2))
xlabel('x')
ylabel('dydx')

%% 2nd order number 2

xrange= [0 2];
initial= [0 0]; %y initial and y' initial

[x,s]= ode45('order22', xrange, initial);

subplot(1,2,1)
plot(x,s(:,1))
xlabel('x')
ylabel('y')

subplot(1,2,2)
plot(x,s(:,2))
xlabel('x')
ylabel('dydx')

%% second order number 3


xrange= [0 5];
initial= [0 4]; %y initial and y' initial

[x,s]= ode45('order23', xrange, initial);

subplot(1,2,1)
plot(x,s(:,1))
xlabel('x')
ylabel('y')

subplot(1,2,2)
plot(x,s(:,2))
xlabel('x')
ylabel('dydx')
