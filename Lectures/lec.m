%% debugging & figuring out how to do stuff u do not know


% NOT function needs to be form of : ~(W>50) --- "W not greater than 50"
% Iterations need to start at 1, make sure to check the code you run -- 
        % ex.)
        x= 0:5;
              for i= 1:length(x); % this was i= 1:5 before debugging
                y(i)=x(i)^2;
                end
                y
                
%% 

w= 0:100;
r=w*10;
tf= ~(w>50)

%% 

t= 0:pi/100:2*pi; %time
p=sind(t);
l= .5;
e= 200; % steel 
b= 5/1000;
h= 6/1000;
i= b*h^3/12;
delta= p*l^3/(2*e*i); %deflection
plot(t,delta)

% Looking at this graph, we see that the units look wonky and it should not
% deflect thousands of meters and it should be oscillating, lets check
% units!

%% Here is our solution to the above issue
clear all; clc;
% First check units
t= 0:pi/100:2*pi; %time
p=sin(t); %sind(Which means sin in degrees) should be sin(whic is sin in radians)
l= .5;
e= 200*10^9; % This was in GPa, should be in Pa (1GPa= 1e9 Pa)
b= 5/100; % This should be in meters was in cm(5/1000= 5/100)
h= 6/100; % Same as above
i= b*h^3/12;
delta= p*l^3/(2*e*i); %deflection
plot(t,delta)





%% we have collected deflection data we want to do some calculations knowinf that one of our tools fails and causes
%  holes in the data, we dont want too many holes, so if there are more
%  than 5 holes, we do not want to waste time to calculate the
%  data

% Givens

x= 100;
y= [100 85 46 0 47 9 5 0 7 56 18 75 0 477 9 85 0 4 8 0];

% Solution 
for i= 1:length(y);
    R(i)= x/y(i);
    







