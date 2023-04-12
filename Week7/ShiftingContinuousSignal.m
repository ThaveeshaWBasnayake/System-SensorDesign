t = -3; %insert the shift
ts1=[0 0]; %values for the y-axis
ts2=[-1 2 5]; %values for the y-axis
ts3=[(-5-(t)) (5-(-t))]; %values for the x-axis
ts4=[0 0]; %values for the x-axis
if t<0
    subplot(2,2,2); %creates a subplot with 2 rows and 2 columns

    plot((x1-(t)),y1,(x2-(t)), y2, (x3-(t)),y3,'LineWidth',4);
    grid on;
    xlabel('time');
    ylabel('f(t)');
    title('Time-Shifted Continuous Time Signal');

    hold on;
    plot(ts1,ts2,ts3,ts4,'LineWidth',1);
    hold off;
else
    subplot(2,2,2); %creates a subplot with 2 rows and 2 columns

    plot((x1-t),y1,(x2-t), y2, (x3-t),y3,'LineWidth',4);
    grid on;
    xlabel('time');
    ylabel('f(t)');
    title('Time-Shifted Continuous Time Signal');

    hold on;
    plot(ts1,ts2,ts3,ts4,'LineWidth',1);
    hold off;
end


