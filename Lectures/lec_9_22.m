%William Bannister 
%In class 9/22

clc; clear all; format compact;

%% double percent formats this way and you can run this section only by clicking "Run Section"
x=[0:2:18];
y=[0 .33 4.13 6.29 6.85 11.19 13.19...
    13.96 16.33 18.17];
% the ellipse allows you to put code on the next line
display(x);
display(y);
figure(1);
plot(x,y);
% labeling
figure(2);
plot(x,y);
title("Class example");
xlabel("skrt");
ylabel("yeet");
grid on;

%% Plotting functions
z=[0:.1:10];
a= sin(z);
figure(3);
plot(z,a);
xlabel("qt");
ylabel("yumCurve");
title("urk");

% now we want to find the 25th value!
sin_a_25=a(25);
display(sin_a_25);

%% Plotting a single array
r = [1 5 3 2];
figure(4);
plot(r);
% THIS PLOT SHOWS THAT THE X VAL WILL CORRESPOND TO ITS INDEX ON ARRAY

%% PLOTTING multiple lines
x= 0:pi/100:2*pi;
y1= cos(x*4);
figure(5);
plot(x,y1);
hold on;
y2=sin(x);
plot(x,y2);
hold off;
% IF WE DO NOT TURN HOLD OFF IT WILL CONTINUE TO STACK GRAPH LINES!!!

%% cool graf
y = 0:pi/100:2*pi;
y1=cos(x)*2;
y2=cos(x)*3;
y3=cos(x)*4;
y4=cos(x)*5;

Y= [y1; y2; y3; y4];
figure(6);
plot(x,Y);



