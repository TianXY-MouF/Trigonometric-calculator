function [x] = input_number()
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   ���Ǻ������������
double x;
x=input('������x:\n');
if(x>360)
    x=mod(x,360);
end

if(x<-360)
    x=mod(x,-360);
end

x=x*pi/180;
  


end

