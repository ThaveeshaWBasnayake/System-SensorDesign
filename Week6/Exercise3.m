%Two plots for decaying and growing exponentials
x = 0:0.001:1;
k=2.0;
f=@(x,k)exp(-abs(k*x));
g=@(x,k)exp(abs(k*x));

%Plots the decaying exponential
figure(1);
plot(x,f(x,k));
hold on;
%Plots the growing exponential
plot(x,g(x,k));
grid;
title('Growing Exponential and Decyaing Exponential')
legend('Decaying', 'Growing');