function [x] = input_number()
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   ���Ǻ������������
double x;
x=input('������x:\n');
if(x>2*pi)
    x=mod(x,2*pi);
end
if(x<-2*pi)
    x=mod(x,-2*pi);
end

  


end

