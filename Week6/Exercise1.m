%Read through ABC corporation sales figure for divions A and B and plot it
% A = [1.2 1.4 1.8 1.3];
% B =[2.2 2.5 1.7 2.9];
% stem(A);
% hold on;
% stem(B);
% grid on;
% title('ABC Corporation Figures')
% xlabel('A'); ylabel('B');

%Open and read the file
load salesfigs.dat;

%Specify the size of each array
asales = salesfigs(1, :);
bsales = salesfigs(2, :);

%plot
plot(asales, 'ko');
hold on;
plot(bsales, "k*");
xlabel('Quarter');
ylabel('Sales(billions)');
title('ABC Corportation');
legend('Divsion A', 'Division B');
