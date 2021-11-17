% William Bannister
% Lecture Notes
% 10/04/21

clear all; clc; format compact;

%% Relational operators 

% help . 

A= 1:1:9;
tf1=A<=5
% this shows where it is true and false for the given array- 1=true 0=False

%% Operational operators

A= 1:9;
B= 7:-1:-1;
tf2=A>B;
tf3= (A==B);
tf4= (A~=B);
% Subtraction where A>2, the rest stays the same as the value in B
tf5= B-(A>2);
% AND = & OR= | NOT= ~
tf6= ~(A>4);
tf7= (A>2)&(A<6);

% order of ops- 
% 1- parenthese
% 2- arithmetic and NOT (left to right)
% 3- Relational ops
% 4- logical AND 
% 5- Logical OR


%% Example-
% Test scores out of 100 for students are given as [90 72 57 48 20 75]
% Must get at least 50 to pass. Show who passed using 1 and 0

A= [90 72 57 48 20 75];
pass= 50;
pf= A>=pass;
pf

%% IF statements

% we want y=log(x) only if A> 0

A=-2;
y=NaN; % This is to ensure that it wont print the math anyway, otherwise y wont have a value 
if A>0
    y= log(A);
end;
y

%% ex

z= -2; % uncomment either z value to see the difference
%z= 2;
if z<=0;
    z=10;
end;
z=z+1;
z

%% if/else when x>0 calculate y=log(x) otherwise print "x must be positive"


x= -2;
if x>0;
    y= log(x);
else y = NaN;
    disp('log needa be positive homie');
end
y

%% Nested if statements

t= 64;

if t>100;
    disp("Too HOT");
elseif t>=90;
    disp("That shiii be chillin");
elseif t>50;
    disp("Below range");
else disp("shiiii way too cold homie");
end

%% For loops

for loop_var= 1:10
    fprintf('iteration number:%d\n', loop_var)
    if loop_var== 5
       break
    end
end

%% EX

for K= 5:10:35;
    x=K^2
end

%% 
k= 5:10:35;
l=length(k);
for i= 1:l;
    x(i)= k(i)^2;
end 
x

%% 
    



