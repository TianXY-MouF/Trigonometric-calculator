close all;
clear;
clc;
%   本程序测试arcsin函数计算结果的正确性
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
title('输入“-1-1”不调用arcsin函数计算值');xlabel('输入值');ylabel('计算值');
subplot(3,1,2)
plot(inputx,y2);
title('输入“-1-1”调用arcsin函数计算值');xlabel('输入值');ylabel('计算值');
subplot(3,1,3)
plot(inputx,dy);
title('输入“-1-1”不调用arcsin函数与实际arcsin函数两者计算误差值');xlabel('输入值');ylabel('计算误差值');