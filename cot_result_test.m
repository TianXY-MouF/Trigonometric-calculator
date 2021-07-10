close all;
clear;
clc;
%   本程序测试第二次作业cot函数计算结果的正确性
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
title('不调用cot函数计算值');xlabel('输入值');ylabel('计算值');
subplot(3,1,2)
plot(sita1,y2);
title('调用cot函数计算值');xlabel('输入值');ylabel('计算值');
subplot(3,1,3)
plot(sita1,dy);
title('不调用cot函数与实际cot函数两者计算误差值');xlabel('输入值');ylabel('计算误差值');

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
title('不调用cot函数计算值');xlabel('输入值');ylabel('计算值');
subplot(3,1,2)
plot(sita2,y2);
title('调用cot函数计算值');xlabel('输入值');ylabel('计算值');
subplot(3,1,3)
plot(sita2,dy);
title('不调用cot函数与实际cot函数两者计算误差值');xlabel('输入值');ylabel('计算误差值');