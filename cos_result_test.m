close all;
clear;
clc;
%   ���������cos��������������ȷ��
sita = 1:1:360;
dy = zeros(1,length(sita));
y1 = zeros(1,length(sita));
y2 = zeros(1,length(sita));
for i=1:360
    x = i*(pi/180);
    [TaylorExpansion] = cos_result(x);
    y1(i) = TaylorExpansion;
    y2(i) = cos(x);
    dy = abs(y1-y2);
end

figure(1)
subplot(3,1,1)
plot(sita,y1);
title('0-360�㲻����cos��������ֵ');xlabel('�Ƕ�/��');ylabel('����ֵ');
subplot(3,1,2)
plot(sita,y2);
title('0-360�����cos��������ֵ');xlabel('�Ƕ�/��');ylabel('����ֵ');
subplot(3,1,3)
plot(sita,dy);
title('0-360�㲻����cos���������cos�������߼������ֵ');xlabel('�Ƕ�/��');ylabel('�������ֵ');