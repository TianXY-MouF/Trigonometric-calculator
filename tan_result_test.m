close all;
clear;
clc;
%   ���������tan��������������ȷ��
sita = -89:1:89;
dy = zeros(1,length(sita));
y1 = zeros(1,length(sita));
y2 = zeros(1,length(sita));
for i=1:179
    x = i-90;
    [out] = tan_result(x);
    y1(i) = out;
    y2(i) = tand(x);
    dy = abs(y1-y2);
end

figure(1)
subplot(3,1,1)
plot(sita,y1);
title('-90�㵽90�㲻����tan��������ֵ');xlabel('�Ƕ�/��');ylabel('����ֵ');
subplot(3,1,2)
plot(sita,y2);
title('-90�㵽90�����tan��������ֵ');xlabel('�Ƕ�/��');ylabel('����ֵ');
subplot(3,1,3)
plot(sita,dy);
title('-90�㵽90�㲻����sin���������sin�������߼������ֵ');xlabel('�Ƕ�/��');ylabel('�������ֵ');