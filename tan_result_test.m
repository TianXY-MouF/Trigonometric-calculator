close all;
clear;
clc;
%   本程序测试tan函数计算结果的正确性
sita = -89.9:0.1:89.9;
dy = zeros(1,length(sita));
y1 = zeros(1,length(sita));
y2 = zeros(1,length(sita));
for i=1:1799
    x = -89.9+(i-1)/10;
    [out] = tan_result(x);
    y1(i) = out;
    y2(i) = tand(x);
    dy = abs(y1-y2);
end

figure(1)
subplot(3,1,1)
plot(sita,y1);
title('-90°到90°不调用tan函数计算值');xlabel('角度/°');ylabel('计算值');
subplot(3,1,2)
plot(sita,y2);
title('-90°到90°调用tan函数计算值');xlabel('角度/°');ylabel('计算值');
subplot(3,1,3)
plot(sita,dy);
title('-90°到90°不调用sin函数与调用sin函数两者计算误差值');xlabel('角度/°');ylabel('计算误差值');