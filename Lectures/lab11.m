%% LAB 11
% William Bannister
% 10/04/21
% IF statements and FOR, WHILE, NESTED loops
% FOR loop today

clc; clear all; format compact;

for k=1:3;
    a(k,1)= 5^k;
end
a'
%% 
for k= 273:-2:1;
    k
end

%% Nested FOR

q= 0:6:18;
r= 4:4:12;

for i= 1:4;
    for j= 1:3;
        A(i,j)= q(i)+r(j);
    end
end
A

%%

g = -2;
if g>5;
    h= 10*g;
elseif g>=0;
    h=0;
else h= -20;
end
g,h



%% from flowchart

x=12;

if x>10;
    y=log(x);
    if y>=3;
        z=4*y;
    elseif y>2.5;
        z=2*y;
    else
        z=0;
    end
else
    y= 5*x;
    z=7*x;
end
x,y,z
      
 




