function [ val ] = DIF( x,h,k,choice )
% DIF the different type of differece functions with the limit 
%   x = an array
%   h = an distance
%   k = deffines the function f 
% choice  = the type of difference that you are going to use.  
% 

switch choice
    case 1
        % This is the forward difference
        val=(f(x+h,k)-f(x,k))/h;
    case 2 
        val=(f(x,k)-f(x-h,k))/h;
        %backward  difference 
    case 3
         %Centered_2nd_order
        val=(f(x+h,k)-f(x-h,k))/(2*h);
    case 4
        %one sided forward
        val=(4*f(x+h,k)-3*f(x,k)-f(x+2*h,k))/(2*h); 
    case 5 
        % Onesided backwards
        val=(3*f(x,k)-4*f(x-h,k)+f(x-2*h,k))/(2*h);
    case 6
       %2nd diff centered. 
        val=(f(x+h,k)-2*f(x,k)+f(x-h,k))/(h^2);
    case 7 
        fprintf('you have fail start over') 
        % The statement to show you that you have failed. 

end

