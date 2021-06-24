function [TaylorExpansion] = arctan_result(x)
%ARCTAN_RESULT arctan x = x - x^3/3 + x^5/5 - ... 
%   计算arctan函数的结果
 negation = 1;%取反
 index = x;   %指数
 Denominator = 1;%阶乘
 TaylorExpansion = x;

    while(true)
        
        Denominator = Denominator +2;                 %求分母的值
        index = index*x*x;                        %求num2的次方
        negation = -negation;                     %每次循环取反
        sum = index / Denominator * negation;       %泰勒展开式求和
        TaylorExpansion = sum+TaylorExpansion;
        if abs(sum) <=1e-6
            break;
        end
            
            
    end
    


end

