clc; clear al; format compact;

% lecture 19

%% integral example without using cumtrapz
%given
x= linspace(0, pi, 100);
y=sin(x);

% solution

z= zeros(1,100)

for i=2:100;
    z(i)= trapz(x(1:i),y(1:i));
end

plot(x,y,x,z)
xlabel('x')
legend('sin(x)', 'intsin(x)')

%% Single integrals

% given
xmin=0;
xmax=pi;
F= @(x)sin(x)+cos(x);

q= integral(F,xmin,xmax) %symbolioc output

%% DOUBLE INTEGRALS 

xmin= 2;
xmax= 4;
ymin= 1;
ymax= 2;

F= @(x,y)(6*x.*y.^2);
q= integral2(F,xmin,xmax,ymin,ymax)

%% Double integral ex 2

xmin= 0;
xmax= 1;
ymin= 0;
ymax= @(x)(1-x);

F= @(x,y)(1./((sqrt(x+y)).*(1+x+y)));
q= integral2(F,xmin,xmax,ymin,ymax)

%% triple integrals

xmin= pi;
xmax= 2*pi;
ymin= 0;
ymax= pi;
zmin= 0;
zmax= @(x,y)(x+y);

F= @(x,y,z)(z.*(sin(x)+x.*cos(y)));
q= integral3(F,xmin,xmax,ymin,ymax, zmin,zmax)





