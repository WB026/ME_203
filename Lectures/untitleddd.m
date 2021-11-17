% Lecture 11/15

clc;clear all; format compact;

%% ODE example 3 SECOND ORDER

t0= 0;
tf= 5;
trange= [t0 tf];

x0= .05;
dx0_dt= 0;
initial= [x0 dx0_dt];

[t s]= ode45('second_order_odes', trange,initial) % "second_order_odes" is a finction in a different window


subplot(1,2,1)
plot(t,s(:,1))
xlabel('x')
ylabel('y')

subplot(1,2,2)
plot(t,s(:,2))
xlabel('x')
ylabel('y')


%% 

