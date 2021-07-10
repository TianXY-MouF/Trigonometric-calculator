close all;
clear;
clc;
%   本程序测试cot函数计算结果的正确性
sita = 1:1:179;
dy = zeros(1,length(sita));
y1 = zeros(1,length(sita));
y2 = zeros(1,length(sita));
for i=1:179
    x = i;
    [out] = cot_result(x);
    y1(i) = out;
    y2(i) = cotd(x);
    dy = abs(y1-y2);
end

figure(1)
subplot(3,1,1)
plot(sita,y1);
title('0°到180°不调用cot函数计算值');xlabel('角度/°');ylabel('计算值');
subplot(3,1,2)
plot(sita,y2);
title('0°到180°调用cot函数计算值');xlabel('角度/°');ylabel('计算值');
subplot(3,1,3)
plot(sita,dy);
title('0°到180°不调用cot函数与调用cot函数两者计算误差值');xlabel('角度/°');ylabel('计算误差值');