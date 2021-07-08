function [out] = cot_result(x)
%SIN  cotx=cosx/sinx 
%   计算tan函数的结果
if(x>360)
    x=mod(x,360);
end

if(x<-360)
    x=mod(x,-360);
end
x=x*pi/180;
if(x==0||x==pi||x==-pi||x==2*pi||x==-2*pi)
    fprintf('不在定义域内，请重新输入！\n');
    out='error';
else
    out=cos_result(x)/sin_result(x);

end
end