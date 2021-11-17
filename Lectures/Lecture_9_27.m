% William Bannister
% Lecture 
% 9/27/21
clc; clear all; format compact;

% Playing with graphs

%% Polar plots

x= 0:pi/100:pi;
y= sin(x);
figure(1);
polar(x,y);
title('The sine function plotted in polar coordinates is a circle');

%% Logarithmic plots
% semilogy uses log_10 scale on y axis
% semilogx does same on x axis 
% loglog uses both axes at base 10
% plot(x,y) is linear

% we need "X.^2 due to the fact that we are squaring all the elements in
% each array
x= 0:0.5:50;
y= 5*x.^2;
figure(2);

% Linear
subplot(2,2,1);
plot(x,y);
title('Linear-Linear');
grid on;

% semilogx
subplot(2,2,2);
semilogx(x,y);
title('logx-Linear');
grid on;

%semilogy
subplot(2,2,3);
semilogy(x,y);
title('linear-logy');
grid on;

%loglog
subplot(2,2,4);
loglog(x,y);
title('logx-logy');
grid on;

%% another example

x= [1, 2, 5, 4, 8];
y= [x;1:5];

figure(3);
subplot(2,2,1);
bar(x);
title('vertical bar graph');

subplot(2,2,2);
barh(x);
title('horizontal bar graph');

subplot(2,2,3);
bar(y);
title('horizontal of y');
colormap autumn;

subplot(2,2,4);
pie3(x);
title('3D pie chart');
colormap summer;

figure(4);
bar3(y);
title('3D bar');
colormap pink;

%% Histograms

x=[100, 95, 74, 87, 22,78,34,35,93,88,86,42,55,48];
figure(5);
% 10 is the bin size
%histogram(x,1);
histogram(x,10);
%histogram(x,100);
title('histogram');

%% two sclae plotting y axis

x= 0:pi/20:2*pi;
y1= sin(x);
y2= exp(x);

figure(6);
subplot(2,1,1);
plot(x,y1,x,y2);

% this plot does not effectively translate the plot, so we have to scale
% yyaxis auto scales
subplot(2,1,2);
yyaxis left;
plot(x,y1);

yyaxis right;
plot(x,y2);

%axis([0,7,0,100]) is how you choose scalke











