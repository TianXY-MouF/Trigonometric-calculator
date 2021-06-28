function [TaylorExpansion] = sin_result(x)
%SIN  sin x = x-x3/3!+x5/5!-...(-1)k-1*x2k-1/(2k-1)!+... 
%   计算sin函数的结果
 i = 1;
 negation = 1;%取反
 index = x;   %指数
 Factorial = 1;%阶乘
 TaylorExpansion = x;

    while(true)
        Factorial = Factorial * (i + 1) * (i + 2);%求阶乘
        index = index*x*x;                        %求num2的次方
        negation = -negation;                     %每次循环取反
        sum = index / Factorial * negation;       %泰勒展开式求和
        TaylorExpansion = sum+TaylorExpansion;
        i =i + 2;
        if abs(sum) <=1e-15
            break;
        end
            
            
    end
    TaylorExpansion=roundn(TaylorExpansion,-2);
    

end

