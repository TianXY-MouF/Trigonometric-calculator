function [TaylorExpansion] = arctan_result(x)
%ARCTAN_RESULT arctan x = x - x^3/3 + x^5/5 - ... 
%   ����arctan�����Ľ��
 negation = 1;%ȡ��
 index = x;   %ָ��
 Denominator = 1;%�׳�
 TaylorExpansion = x;

    while(true)
        
        Denominator = Denominator +2;                 %���ĸ��ֵ
        index = index*x*x;                        %��num2�Ĵη�
        negation = -negation;                     %ÿ��ѭ��ȡ��
        sum = index / Denominator * negation;       %̩��չ��ʽ���
        TaylorExpansion = sum+TaylorExpansion;
        if abs(sum) <=1e-6
            break;
        end
            
            
    end
    


end

