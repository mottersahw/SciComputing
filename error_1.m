function [ error ] = error_1( N,k,x )
%Calculating the different errors. 
% Findeds the error give 
% N =  number of spaces bewteen 0 and 1 
% k = is the multiplyer on f.m 
% x = the value between 0 =< x =< 1 function X 
h=1/N;
error=zeros(6,N);
% This will step thought the 6 different type of dervative funcitons 
% Here we sum up all of the differenct from as in the formula 
    
%  Stepping thought the different divverence functions
   
    for n=1:1:6
        % The summations for each of the different ways to calculate the error
        if n<=5 % Refere back to the DIF fuction 1-5 are 1st derative 
            for j=0:1:N
                error(n,:)=error(n,:)+abs( (k*cos(k*x)) - (DIF(x,h,k,n ) ) );
            end  
                 error(n,:)=(1/(1+N))*error(n,:);
        elseif n==6 % the last one is the second deravitive. 
            for j=0:1:N
                error(n,:)=error(n,:)+abs( (k*cos(k*x)) - (DIF(x,h,k,n ) ) );
            end
                 error(n,:)=(1/(1+N))*error(n,:);
          
        end
    end 
    
   
end 
