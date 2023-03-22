%plot exponential and log graphs on a single plot
x = [0 0.5 1 1.5 2 2.5 3 3.5];
y1 = exp(x);
y2 = log(x);

%plot the graphs
plot(y1);
hold on;
plot(y2);
legend('exp', 'log');
xlabel('x'); ylabel('exp(x) or log(x)');
title('exp & log on same graph');
