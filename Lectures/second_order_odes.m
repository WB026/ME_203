function [output]= second_order_odes(tn,sn)

x1DOT= sn(1);
x2DOT= sn(2);

output= zeros(2,1);

output(1)= x2DOT;
output(2)= -9.*x1DOT;
end

