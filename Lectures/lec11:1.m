% Class 11/1/21

% sums and products

clc;clear all; format compact;

%% polyval

% f(x)= 2x^2-4x+10
% find at point x=2
a= [2 -4 10];
p=polyval(a,2);
% now at values x= 1,3,5
p2=polyval(a,[1,3,5]);
% now at 1:100
x=1:100;
p3=polyval(a,x);

% TALE OUT SEMI COLONS TO SEE RESULTS IN COMMAND WINDOW

%% Polynomial math

% add p1 to p2
%p1= 3x^6+15x^5-10x^3-3x^2+15x-40
%p2= 3x^3-2x-6

p1=[3 15 0 -10 -3 15 -40];
p2= [3 0 -2 -6];
p= p1+[0 0 0 p2]

% multiplying 
 
pm= conv(p1,p2)

%% division

p1= [1 -4 2 -3];
p2= [1 2];

[q,r]= deconv(p1,p2)
% this shows that it equal x^2-6x+14 with a remainder of -31


%% Linear regression
clc;
x= 0:5;
y= [0 20 60 68 77 110];
y_hat= 20*x % slope to first poijt in figure(1)

figure(1) % Scatter plot
plot(x,y,'o',x,y_hat)

% using RMS (root mean square)

Error= y_hat-y;
RMS1=sqrt(mean(Error.^2))
RMS2=rms(Error) 

%% Polyfit

x= 0:5;
y= [0 20 60 68 77 110];
c= polyfit(x,y,1) 

% this means line is y= 20.8x+3.7

%POLYVAL

c2= polyval(c,x)
plot(x,y,'o',x,c2)

%% polynomial integration

% you have to give it the constant(C) value, otherwise it assumes c=0)

p= [3 15 -40];
q= polyint(p)

% now if c is given as 10

q1= polyint(p,10)

% array output should increase since an integral adds to the degree of poly


%% poly differentiation
clc;

a= [1 -4 2 -3];
b= [1 2];

[q,d]=polyder(a,b)







