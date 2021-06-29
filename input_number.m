function [x] = input_number()
%UNTITLED 此处显示有关此函数的摘要
%   三角函数计算的输入
double x;
x=input('请输入x:\n');
if(x>360)
    x=mod(x,360);
end

if(x<-360)
    x=mod(x,-360);
end

x=x*pi/180;
  


end

