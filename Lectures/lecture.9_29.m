% William Bannister
% Lecture 9/29
clc; clear all; format compact;

%% matrices

a = [1 2 3; 4 5 6; 7 8 9];
a
a21= a(2,1);
a21

%% other way

a= [1 2 3
    4 5 6
    7 8 9];
a

%% Sub Matrices
a= [1 2 3; 4 5 6; 7 8 9];
% To call out specific rows or columns or sub matrices
a(1:2,1:3);
a(1:3, 1:2)

%% size and length

a= [1 2 ; 3 4; 5 6];
s= size(a);
a
s
% To show rows and columns separately
[r,c]= size(a)
% To get largest dimension
n=length(a)

%% Transpose

a= [1:5];
y = [5:5:25];
b= [a',y']

%% Scalar Array math

a=[1 2 3 4; 2 3 4 1; 3 4 1 2; 4 1 2 3];
g= 2*a-1;
a
g

%% matrix matrix multiplication

a= [2 5 1; 0 3 -1];
b= [1 0 2; -1 -4 -2; 5 2 1];
c=a*b 

%% Special Matrices

a = ones(3)
b= ones(3,2)
c= zeros(3,4)
c(2,2)=12
% Diagonal will do best diagonal with given dimensions
d= eye(3)
e=eye(9,2)

%% Determinants

a= [1 2 3; 4 5 6; 7 8 9];
det(a)

%% Inverse of square matrix

a= [2 -4; 3 6];
inv(a)

%% SOLVING SYSTEMS OF EQS

% 2x1 + 9x2= 5
% 2x1 - 4x2= 7

a= [2 9 ; 3 -4 ];
b= [5;7];
%different ways to solve the set of eqs
x= inv(a)*b
x=a\b
c= [2 9 5; 3 -4 7];
rref(c) % reduced echelon form













