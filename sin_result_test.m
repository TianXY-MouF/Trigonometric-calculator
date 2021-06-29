close all;
clear;
clc;
%   ���������sin��������������ȷ��
sita = 1:1:360;
dy = zeros(1,length(sita));
y1 = zeros(1,length(sita));
y2 = zeros(1,length(sita));
for i=1:360
    x = i*(pi/180);
    [TaylorExpansion] = sin_result(x);
    y1(i) = TaylorExpansion;
    y2(i) = sin(x);
    dy = abs(y1-y2);
end

figure(1)
subplot(3,1,1)
plot(sita,y1);
title('0-360�㲻����sin��������ֵ');xlabel('�Ƕ�/��');ylabel('����ֵ');
subplot(3,1,2)
plot(sita,y2);
title('0-360�����sin��������ֵ');xlabel('�Ƕ�/��');ylabel('����ֵ');
subplot(3,1,3)
plot(sita,dy);
title('0-360�㲻����sin���������sin�������߼������ֵ');xlabel('�Ƕ�/��');ylabel('�������ֵ');