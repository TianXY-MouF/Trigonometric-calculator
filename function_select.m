function [select] = function_select()
%UNTITLED 
%   该函数实现三角函数计算器功能的选择，即sin(x),cos(x),arcsin(x),arctan(x)
%   以及清屏和退出的功能选择
char select;
disp('----欢迎使用该三角函数计算器----');
disp('1.sin(x)');
disp('2.cos(x)');
disp('3.arcsin(x)');
disp('4.arctan(x)');
disp('5.clear the screen');
disp('6.exit');
disp('-------------------------------');
select=input('请输入对应数字：');

end

