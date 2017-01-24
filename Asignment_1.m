% This is the 1st asignment for computing
% Created by Grant Mottershaw

% we will be calculaing the error  
clear
clc

%% This is 1st question from Asignment 1
N=10
x=0:(1/(N-1)):1
k=1;
Q1=error_1(N,1,x);

figure(1)
    plot(Q1,'o')
    title('Error when N=10 and k=1')
    xlabel('1 thought 5 1st order diff, 6 is the 2nd order diff')
    ylabel('% error')
%% question 2 when k =5,10,20

% When k = 5 
    Q2_1=error_1(10,5,x);
    figure(2)
    plot(Q2_1,'o')
        title('Error when N=10 and k=5')
        xlabel('1 thought 5 1st order diff, 6 is the 2nd order diff')
        ylabel('% error')
 % When k = 10
    Q2_2=error_1(10,10,x);
    figure(3)
    plot(Q2_2,'o')
        title('Error when N=10 and k=10')
        xlabel('1 thought 5 1st order diff, 6 is the 2nd order diff')
        ylabel('% error')
 % When k = 20  
    Q2_3=error_1(10,20,x);
    figure(4)
    plot(Q2_3,'o')
        title('Error when N=10 and k=20')
        xlabel('1 thought 5 1st order diff, 6 is the 2nd order diff')
        ylabel('% error')

  % The error keep growing with at every fast ammount when you increase k but keep h constant.  
     
  %The 1st order error are much smaller then the 2nd order errors.
%% Question 3 

%when N=100
N=100;
x=X(N);
    Q3_1=error_1(N,20,x);
        figure(5)
        plot(Q3_1,'^')
            title('Error when N=100 and k=20')
            xlabel('1 thought 5 1st order diff, 6 is the 2nd order diff')
            ylabel('% error')
N=500;
x=X(N);
  Q3_2=error_1(N,20,x);
  
  
  figure(6)
  plot(Q3_2,'^')
  max(Q3_2)
% 
% %% %Question 4
% 
% Q4_N=[100,10^3,10^4,10^6,10^9]
% 
% % for i=1:1:length(Q4_N)
% %     Q4(i,:)=error1(Q4_N(i),1,X(Q4_N(i)));
% % end 
% 
% %% 
% 
