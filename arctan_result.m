function [TaylorExpansion] = arctan_result(x)
%ARCTAN_RESULT arctan x = x - x^3/3 + x^5/5 - ... 
%   计算arctan函数的结果     
if(x>=-1&&x <=1)                                 %判断x是否在收敛域以内，若在收敛域以内，正常泰勒展开
 negation = 1;%取反
 index = x;   %指数
 Denominator = 1;%阶乘
 TaylorExpansion = x;
    while(true)
        
        Denominator = Denominator +2;               %求分母的值
        index = index*x*x;                          %求num2的次方
        negation = -negation;                       %每次循环取反
        sum = index / Denominator * negation;       %泰勒展开式求和
        TaylorExpansion = sum+TaylorExpansion;
        if abs(sum) <=1e-6
            break;
        end
            
            
    end
end
if(x<-1||x>1)                                       %判断x是否在收敛域以内，若不在收敛域以内，通过
 x=1/x;                                             %arctan(x)+arctan(1/x)=pi/2 求解
 negation = 1;%取反
 index = x;   %指数
 Denominator = 1;%阶乘
 TaylorExpansion = x;
    while(true)
        
        Denominator = Denominator +2;                 %求分母的值
        index = index*x*x;                            %求num2的次方
        negation = -negation;                         %每次循环取反
        sum = index / Denominator * negation;         %泰勒展开式求和
        TaylorExpansion = sum+TaylorExpansion;
        
        if abs(sum) <=1e-6
            break;
        end
            
            
    end
    if(x>0)
    TaylorExpansion=pi/2-TaylorExpansion;
    end
    if(x<0)
    TaylorExpansion=-pi/2-TaylorExpansion;
    end
        
end
    
    


end

