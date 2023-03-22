%Plotting the figures

y1 = [2 11 6 9 2];
y2 = [4 5 8 6 2];
x = [1 2 3 4 5];

%Plots bar graph
bar(x,y1);

%Plots line graph and stem graph together
figure;
plot(x, y1);
%Holding onto the previous graph so that two graphs can be graphed on same
%plot
hold on;
stem(x,y2);
axis([0 6 1 12]);
%xlim([0 6]); ylim([0 12]);
