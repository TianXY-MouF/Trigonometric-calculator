function [out] = tan_result(x)
%SIN  tanx=sinx/cosx 
%   ����tan�����Ľ��
if(x>360)
    x=mod(x,360);
end

if(x<-360)
    x=mod(x,-360);
end

x=x*pi/180;
if(x==pi/2||x==-pi/2||x==3*pi/2||x==-3*pi/2)
    fprintf('���ڶ������ڣ����������룡\n');
    out='error';
else
    out=sin_result(x)/cos_result(x);
end
    
end