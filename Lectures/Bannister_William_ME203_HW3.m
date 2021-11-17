% William Bannister
% 10/27/21
% ME.203.1001
% Homework 3

clc; clear all; format compact;

%% Problem 1

A= [0 -7 6; 5 -4 3; 10 -1 9; 15 1 0; 20 2 -1]; % given

plot(A(:,1),A(:,2:end)) %plots specific columns : ignores 
% had to take figure(1) out made it wonky
xlabel('time(s)')
ylabel('force(N)')
title('Force by Time')

%% Problem 2

A= [3 7 -4 12; -5 9 10 2; 6 13 8 11; 15 5 4 1]; % define matrix
B= A(:,2:4) % selects 2nd thru 4th column
C= A(2:4, :) % selects 2nd thru 4th row
D= A(1:2,2:4) % selects 1st 2 rows and last 3 colums

%% Problem 3

% defining matrices
A= [56 32; 24 -16];
B= [14 -4; 6 -2];

% a

a= A.*B

% b

b= A/B

%c

c= B.^3

%% Problem 4

% a

a= 6*pi*atan(12.5)+4

%b

b= 5*tan(3*asin(13/5))

%% Problem 5

% TRIED USING LINSOLVE AND DID NOT WORK
% NOW USING LINEAR ALGEBRA

%a

a1= [-2 1 ; -2 1]; 
b1= [-5;3];
f1= inv(a1)*b1

%b

a2= [-2 1 ; -2 1];
b2= [3;12];
f2= inv(a2)*b2

%c

a3= [-2 1 ; -2 1];
b3= [-5;-5.00001];
f3= inv(a3)*b3

%d

a4= [1 5 -1 6; 2 -1 1 -2; -1 4 -1 3; 3 -7 -2 1];
b4= [19;7;30;-75];
f4= inv(a4)*b4




%% Problem 6

t= 1:.1:3; %time (min)
T= 6*log(t)-7*exp(0.2*t); %temp

plot(t,T) % had to take figure(2) out made it wonky
title('Plotting Temperature(celsius) vs. Time(minutes)')
ylabel('Temperature(Degrees Celsius)')
xlabel('Time (Minutes)')

%% Problem 7

a= 1;
b=2;
c=3;

%1

(a==b)&((b==c)|(a==c))

%2

(a==b)|((b==c)&(a==c))

%% Problem 8
%% a
clc;
x= input('What percent grade have you received: \n');

if x>0
    L= 'F';
    if x>=60
        L= 'D';
        if x>=70
            L='C';
            if x>=80
                L= 'B';
                if x>=90 
                    L='A';
                end
            end
        end
    end
end

fprintf('Your letter grade: %s\n', L)

%% b 

clc;
x= input('What percent grade have you received: \n');
if x<60
    L= 'F';
elseif x>=60 && x<70
        L= 'D';
elseif x>=70 && x< 80
            L='C';
elseif x>=80 && x<90
                L= 'B';
else  
                    L='A';
end
fprintf('Your letter grade: %s\n', L)





