function [TaylorExpansion] = sin_result(x)
%SIN  sin x = x-x3/3!+x5/5!-...(-1)k-1*x2k-1/(2k-1)!+... 
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
    TaylorExpansion=roundn(TaylorExpansion,-2);
    

end

