clear;
close all;
double result=0;
double x=0;
func=function_select();
while(func~=0)
    
    switch func
        case 1
            x=input_number();
            result=sin_result(x);
            fprintf ('Result=%3.2f\n',result);
        case 2
             x=input_number();
            result=cos_result(x);
            fprintf ('Result=%3.2f\n',result);
        case 3
             x=input_number();
             x=x*(180/pi);
            if((x)<=-1||(x) >= 1)
             fprintf ('不在定义域内，请重新输入！');
             else
             result=arcsin_result(x);
             fprintf ('Result=%3.2f\n',result);
             end
        case 4
             x=input_number();
             x=x*(180/pi);
            result=arctan_result(x);
            fprintf ('Result=%3.2f\n',result);
        case 5
            clc;
        case 6
            break;
        otherwise
            disp('错误的输入，请重新输入！');
    end
    
       if(func==0)
        break;
        
       end
       
        func=function_select();
       
end
disp('感谢使用！');
 