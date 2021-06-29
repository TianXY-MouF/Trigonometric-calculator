close all;
clear;
clc;
%   ���������arctan��������������ȷ��
inputx = -100:1:100;
dy = zeros(1,length(inputx));
y1 = zeros(1,length(inputx));
y2 = zeros(1,length(inputx));
for i=1:length(inputx)
    x = -100+(i-1);
    [TaylorExpansion] = arctan_result(x);
    y1(i) = TaylorExpansion;
    y2(i) = atan(x);
    dy = abs(y1-y2);
end

figure(1)
subplot(3,1,1)
plot(inputx,y1);
title('���롰-100-100��������arctan��������ֵ');xlabel('����ֵ');ylabel('����ֵ');
subplot(3,1,2)
plot(inputx,y2);
title('���롰-100-100������arctan��������ֵ');xlabel('����ֵ');ylabel('����ֵ');
subplot(3,1,3)
plot(inputx,dy);
title('���롰-100-100��������arctan������ʵ��arctan�������߼������ֵ');xlabel('����ֵ');ylabel('�������ֵ');