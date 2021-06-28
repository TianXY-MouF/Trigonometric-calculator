function TaylorExpansion= arcsin_result(x)
%ARCSIN_RESULT arcsin x = x + 1/(2*3)x^3 + (1*3)/(2*4*5)x^5 +(1*3*5)/(2*4*6*7)x^7 + ...
%   计算arcsin函数的结果
 
 
if(x>=-1&&x <=1)
        index = x;   %指数
        TaylorExpansion = x;%泰勒展开第一项
        i = 1;%泰勒展开系数需要的第一个参数
        n = 1;%泰勒展开系数需要的第二个参数
        coefficient = 1;%泰勒展开的部分系数
while(true)
        index = index*x*x;  %求num2的次方       
        coefficient = coefficient*(2*i-1)/(2*i);
        Denominator = coefficient/(2*n+1);%泰勒展开每项的总系数
        sum = index*Denominator ;       %泰勒展开式求和
        TaylorExpansion = sum+TaylorExpansion;
        i = i+1;
        n = n+1;
        
        if abs(sum) <=1e-10
            break;
        end
end
else
    fprintf('不在定义域内，请重新输入！\n');
end

    
end




