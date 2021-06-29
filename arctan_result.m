function [TaylorExpansion] = arctan_result(x)
%ARCTAN_RESULT arctan x = x - x^3/3 + x^5/5 - ... 
%   ����arctan�����Ľ��     
if(x>=-1&&x <=1)                                 %�ж�x�Ƿ������������ڣ��������������ڣ�����̩��չ��
 negation = 1;%ȡ��
 index = x;   %ָ��
 Denominator = 1;%�׳�
 TaylorExpansion = x;
    while(true)
        
        Denominator = Denominator +2;               %���ĸ��ֵ
        index = index*x*x;                          %��num2�Ĵη�
        negation = -negation;                       %ÿ��ѭ��ȡ��
        sum = index / Denominator * negation;       %̩��չ��ʽ���
        TaylorExpansion = sum+TaylorExpansion;
        if abs(sum) <=1e-6
            break;
        end
            
            
    end
end
if(x<-1||x>1)                                       %�ж�x�Ƿ������������ڣ����������������ڣ�ͨ��
 x=1/x;                                             %arctan(x)+arctan(1/x)=pi/2 ���
 negation = 1;%ȡ��
 index = x;   %ָ��
 Denominator = 1;%�׳�
 TaylorExpansion = x;
    while(true)
        
        Denominator = Denominator +2;                 %���ĸ��ֵ
        index = index*x*x;                            %��num2�Ĵη�
        negation = -negation;                         %ÿ��ѭ��ȡ��
        sum = index / Denominator * negation;         %̩��չ��ʽ���
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

