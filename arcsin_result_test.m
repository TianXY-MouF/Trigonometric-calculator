close all;
clear;
clc;
%   ���������arcsin��������������ȷ��
inputx = -1:0.001:1;
dy = zeros(1,length(inputx));
y1 = zeros(1,length(inputx));
y2 = zeros(1,length(inputx));
for i=1:2001
    x = -1+(i-1)/1000;
    [TaylorExpansion] = arcsin_result(x);
    y1(i) = TaylorExpansion;
    y2(i) = asin(x);
    dy = abs(y1-y2);
end

figure(1)
subplot(3,1,1)
plot(inputx,y1);
title('���롰-1-1��������arcsin��������ֵ');xlabel('����ֵ');ylabel('����ֵ');
subplot(3,1,2)
plot(inputx,y2);
title('���롰-1-1������arcsin��������ֵ');xlabel('����ֵ');ylabel('����ֵ');
subplot(3,1,3)
plot(inputx,dy);
title('���롰-1-1��������arcsin������ʵ��arcsin�������߼������ֵ');xlabel('����ֵ');ylabel('�������ֵ');