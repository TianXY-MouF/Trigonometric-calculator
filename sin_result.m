function [TaylorExpansion] = sin_result(x)
%SIN 
%   ����sin�����Ľ��
 i = 1;
 negation = 1;%ȡ��
 index = x;   %ָ��
 Factorial = 1;%�׳�
 TaylorExpansion = x;

    while(true)
        Factorial = Factorial * (i + 1) * (i + 2);%��׳�
        index = index*x*x;                        %��num2�Ĵη�
        negation = -negation;                     %ÿ��ѭ��ȡ��
        sum = index / Factorial * negation;       %̩��չ��ʽ���
        TaylorExpansion = sum+TaylorExpansion;
        i =i + 2;
        if abs(sum) <=1e-15
            break;
        end
            
            
    end
    

end

