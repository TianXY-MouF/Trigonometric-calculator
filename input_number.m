function [x] = input_number()
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   ���Ǻ������������
double x;
x=input('������x:\n');
while(x>=360)
    x=x-360;
end
x=x*pi/180;

end

