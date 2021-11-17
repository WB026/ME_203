function [output]= order22(x,initial)
y=initial(1);
z=initial(2);
output= zeros(2,1);
output(1)=z;
output(2)= cos(y);
end

