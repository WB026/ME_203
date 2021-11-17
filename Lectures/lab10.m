% LAb 10/27

% FUNCTIONS

% Anon functions can be created in script!

anon5= @(x)(x+sin(x));
anon5(5);

% deal allows for multiple outputs
anon6= @(x)deal(x-3, 3*x+6*(x-3).^2);
[y,z]= anon6(5)

anon7= @(x)deal(x.^0,x.^1,x.^2,x.^3,x.^4,x.^5);
[a,b,c,d,e,f]= anon7(6)