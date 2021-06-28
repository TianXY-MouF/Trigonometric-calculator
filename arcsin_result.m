function TaylorExpansion= arcsin_result(x)
%ARCSIN_RESULT arcsin x = x + 1/(2*3)x^3 + (1*3)/(2*4*5)x^5 +(1*3*5)/(2*4*6*7)x^7 + ...
%   ����arcsin�����Ľ��
 
 
if(x>=-1&&x <=1)
        index = x;   %ָ��
        TaylorExpansion = x;%̩��չ����һ��
        i = 1;%̩��չ��ϵ����Ҫ�ĵ�һ������
        n = 1;%̩��չ��ϵ����Ҫ�ĵڶ�������
        coefficient = 1;%̩��չ���Ĳ���ϵ��
while(true)
        index = index*x*x;  %��num2�Ĵη�       
        coefficient = coefficient*(2*i-1)/(2*i);
        Denominator = coefficient/(2*n+1);%̩��չ��ÿ�����ϵ��
        sum = index*Denominator ;       %̩��չ��ʽ���
        TaylorExpansion = sum+TaylorExpansion;
        i = i+1;
        n = n+1;
        
        if abs(sum) <=1e-10
            break;
        end
end
else
    fprintf('���ڶ������ڣ����������룡\n');
end

    
end




