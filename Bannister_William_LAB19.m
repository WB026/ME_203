% William Bannister
% Lab 19 Integration
% ME 203.1101
% 11/08/21

%% Trapz

y= sin(x);
x= linspace(0,pi,100);

trapz(x,y)

%% Cumtrapz

y= sin(x);
x= linspace(0,pi,100);

z= cumtrapz(x,y);
plot(x,y,x,z)

%% Integration

y= @(x)sin(x);
xmin= 0;
xmax=pi;

integral(y,xmin,xmax)

%% Double Integration

ymin= 0; ymax= pi;
xmin= pi; xmax= 2*pi;

F= @(x,y)(y.*sin(x)+x.*cos(y));

integral2(F,xmin,xmax,ymin,ymax)

%% Triple Integration

xmin= pi; xmax= 2*pi;
ymin= 0; ymax= @(x,y)(x);
zmin= 0; zmax= @(x,y)(x+y);

F= @(x,y,z)(z.*(y.*sin(x)+x.*cos(y)));

R= integral3(F,xmin,xmax,ymin,ymax,zmin,zmax)



