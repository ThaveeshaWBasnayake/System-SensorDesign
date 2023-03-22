% t=0:0.1:10;
% f1=sqrt(t+1); f2 = 3*t-10; f3= t.^2;
% subplot(1,3,1)
% plot(t,f1)
% subplot(1,3,2); plot(t,f2)
% subplot(1,3,3); plot(t,f3)

t=-4:0.001:4;
y1=t.^2;
plot(t,y1); xlabel('t')
close

y2 = (t-1).^2;
plot(t,y1,t,y2); legend('t^2','(t-1)^2');

subplot(2,1,1);plot(t,y1);title('t^2');
sublot(2,1,2);plot(t,y2);title('(t-1)^2');