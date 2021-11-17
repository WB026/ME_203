% Lecture 18 
% 11/03/21

clear all; clc; format compact;

%% interpolation

% interp1(x,y,x1) points need to be in ascending order

x= 0:5;
y=[0 20 60 68 77 110];

% find y at x= 2.6 and 4.9

x1= interp1(x,y,2.6)
x2= interp1(x,y,4.9)


%% Normal (Gaussian) dist

A= [1 2 3 3 3 6 4 6 8 4 7 7];
d = std(A)
v1= var(A)
v2=d.^2

%% RAND uniform distribution

rand % rand between 0 and 1
rand(2) % 2x2 matrix of rand between 0 and 1
rand(2,3) % 2x3 matrix of rand between 0 and 1
10*rand(1,3) % between 0 and 10
10*rand(2,3)+5 % between 5 and 15 

%% rand normal dist

randn % scalar whose value changes any time it is referenced
randn(2)
randn(2,3)

%% example 
% mens height is is normally distributed with a mean of 1.763 and standard
% deviation of 0.0762 using rnadn generate a row vector of random heights
% (in meters) for 6 males 


m= 1.763;
s= 0.0762;

r= randn(1,6)*s+m


%% heads or tails


% use randi ("random integer")

flip= randi([0,1],1,5)
xc= [0,1];
FLIP= randi(xc,1,5);
y=hist(flip,xc);
bar(xc,y)

%% noisy signal simulation noisy data example

% givens 

t= linspace(0,10,512) % this is an array from 0 to 10 with 512 steps
amp= 1;
freq= 2*pi/5;

sig= amp*sin(freq.*t)+randn(1,length(t))*.1;

plot(t,sig)


%% trapezoidal rule

% trapz and cumtrapz

x= linspace(0,pi,100);
y=sin(x);
z=cumtrapz(x,y)
plot(x,y,x,z)












































