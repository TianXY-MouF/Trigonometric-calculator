close all;
clear;
clc;
%   ��������Եڶ�����ҵcot��������������ȷ��
sita1 = 1:1:180;
dy = zeros(1,length(sita1));
y1 = zeros(1,length(sita1));
y2 = zeros(1,length(sita1));
for i=1:180-1
    [out] = cot_result(i);
    y1(i) = out;
    y2(i) = cosd(i)/sind(i);
    dy = abs(y1-y2);
end

figure(1)
subplot(3,1,1)
plot(sita1,y1);
title('������cot��������ֵ');xlabel('����ֵ');ylabel('����ֵ');
subplot(3,1,2)
plot(sita1,y2);
title('����cot��������ֵ');xlabel('����ֵ');ylabel('����ֵ');
subplot(3,1,3)
plot(sita1,dy);
title('������cot������ʵ��cot�������߼������ֵ');xlabel('����ֵ');ylabel('�������ֵ');

sita2 = 181:1:360;
dy = zeros(1,length(sita2));
y1 = zeros(1,length(sita2));
y2 = zeros(1,length(sita2));
for i=1:180-1
    [out] = cot_result(i);
    y1(i) = out;
    y2(i) = cosd(i)/sind(i);
    dy = abs(y1-y2);
end

figure(2)
subplot(3,1,1)
plot(sita2,y1);
title('������cot��������ֵ');xlabel('����ֵ');ylabel('����ֵ');
subplot(3,1,2)
plot(sita2,y2);
title('����cot��������ֵ');xlabel('����ֵ');ylabel('����ֵ');
subplot(3,1,3)
plot(sita2,dy);
title('������cot������ʵ��cot�������߼������ֵ');xlabel('����ֵ');ylabel('�������ֵ');