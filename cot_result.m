function [out] = cot_result(x)
%SIN  cotx=cosx/sinx 
%   ����tan�����Ľ��
if(x>360)
    x=mod(x,360);
end

if(x<-360)
    x=mod(x,-360);
end
x=x*pi/180;
if(x==0||x==pi||x==-pi||x==2*pi||x==-2*pi)
    fprintf('���ڶ������ڣ����������룡\n');
    out='error';
else
    out=cos_result(x)/sin_result(x);

end
end