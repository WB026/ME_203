% William Bannister
% 11/10/21
% HW 4
% ME 203.1001

%% Problem 1
clear all; format compact;

A= [3 5 -4; -8 -1 33; -17 6 -9]; %Defines matrix

for x= 1:length(A); % array of size= length of rows of matrix
    for y= 1:size(A,1) % array of size= length of column 1 of matrix
        if A(x,y)<=-1; % checking for positive values in A
            B(x,y)= A(x,y)+20; % Does the reequired math for given positive values 
        elseif A(x,y)>0 
            B(x,y)= log(A(x,y)); % Does the math for given negative values 
        end
    end 
end
B % Prints out new matrix of the math we did within the matrix

%% Problem 1 part 2
clear all; format compact;

A= [3 5 -4; -8 -1 33; -17 6 -9]; %Defines matrix

%Going through each individual element of the matrix
if A(1,1)>0;
    B(1,1)=log(A(1,1));
elseif A(1,1)<=-1;
    B(1,1)=A(1,1)+20
end

if A(1,2)>0;
    B(1,2)=log(A(1,2));
elseif A(1,2)<=-1;
    B(1,2)=A(1,2)+20;
end

if A(1,3)>0;
    B(1,3)=log(A(1,3));
elseif A(1,3)<=-1;
    B(1,3)=A(1,3)+20;
end

if A(2,1)>0;
    B(2,1)=log(A(2,1));
elseif A(2,1)<=-1;
    B(2,1)=A(2,1)+20;
end

if A(2,2)>0;
    B(2,2)=log(A(2,2));
elseif A(2,2)<=-1;
    B(2,2)=A(2,2)+20;
end
if A(2,3)>0;
    B(2,3)=log(A(2,3));
elseif A(2,3)<=-1;
    B(2,3)=A(2,3)+20;
end
if A(3,1)>0;
    B(3,1)=log(A(3,1));
elseif A(3,1)<=-1;
    B(3,1)=A(3,1)+20;
end
if A(3,2)>0;
    B(3,2)=log(A(3,2));
elseif A(3,2)<=-1;
    B(3,2)=A(3,2)+20;
end
if A(3,3)>0;
    B(3,3)=log(A(3,3));
elseif A(3,3)<=-1;
    B(3,3)=A(3,3)+20;
end
B


%% Problem 2
clear all; format compact;

k = 1;
b = -2;
x = -1;
y = -2;

while k <= 3
k;
b;
x;
y;
y = x^2 - 3;
if y < b
b = y;
end
x = x + 1;
k = k + 1;
end

img = imread('ME203HW4Chart.png');
image(img);



%% Problem 3
clear all; format compact;
% variables to recieve user input needed to calculate function
typ= input('Please enter your selection\n 1. Wood on metal\n 2. Wood on wood\n 3. Metal on wood\n 4. Rubber on concrete\n ');
W= input('Now enter weight: ');

Mm= .2; % value of mu for metal on metal
Ww= .35; % value of mu for wood on wood
Mw= .4; % value of mu for metal on wood
Rc= .7; % value of mu for rubber on concrete

switch typ % Switch case that uses user input to choose which function to use
    case 1
        F= W*Mm;
    case 2 
        F= W*Ww;
    case 3
        F= W*Mw;
    case 4
        F= W*Rc;
end
fprintf('Force= %.2f\n', F) % prints result from user input of weight and type


%% Problem 4
clear all; format compact;

x1= input('input X1 value:\n');
y1= input('input Y1 value:\n');
x2= input('input X2 value\n');
y2= input('input Y2 value\n');
x3= input('input X3 value\n');
y3= input('input Y3 value\n');
x4= input('input X4 value\n');
y4= input('input Y4 value\n');


x= [x1 x2 x3 x4];
y= [y1 y2 y3 y4];

F= polyfit(x,y,3);

a= F(1);
b= F(2);
c= F(3);
d= F(4);

fprintf('Your polynomial is: (%.2f)x^3+(%.2f)x^2+(%.2f)x+(%.2f)\n',a,b,c,d)

%% Problem 5
clear all; format compact;

i=1;
for t=0:.001:4
    x(i)=5*t-10;
    y(i)= 25*t^2-120*t+144;
    i=i+1;
end
dist= sqrt(x.^2+y.^2);
MinDist=min(dist);
MinT= (find(dist==MinDist)-1)*.001;

fprintf('Minimum Distance: %.2f units distance\n', MinDist);
fprintf('Minimum Time: %.2f units time\n', MinT);

