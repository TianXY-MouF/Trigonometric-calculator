function [x] = input_number()
%UNTITLED 此处显示有关此函数的摘要
%   三角函数计算的输入
double x;
x=input('请输入x:\n');
if(x>2*pi)
    x=mod(x,2*pi);
end
if(x<-2*pi)
    x=mod(x,-2*pi);
end

  


end

