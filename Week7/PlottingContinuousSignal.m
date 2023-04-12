x1 = 0:.2:4; %limits the first piecewise function 2sin(pi/4)t
x2 = -2:.5:0; %limits of the second piece function -t
x3 = -4:-2; %limits the third function 2
y1=(2*(sin((pi/4)*x1))); %curve
y2 = -x2; %slope
y3 =[2 2 2]; %horizontal

%Plot
figure(1); subplot(2,2,1); %creates a subplot with 2 rows and 2 columns
plot(x1,y1,x2,y2,x3,y3,'LineWidth',3) %plots the signal
xlabel('time'); %name X-axis
ylabel('f(t)'); %name y-axis
title('Original Continuous-Time Signal'); %set title
grid on; %turn grid lines
hold on; %holds the current graph for additional data
axis1=[0 0]; %values for the y-axis
axis2=[-1 2.5]; %values for y-axis
axis3=[-5 5]; %values for x-axis
axis4 =[0 0]; %values for x-axis
plot(axis1,axis2,axis3,axis4,'LineWidth',1); %plots the cross in cartesian plane
hold off; %takes the hold off

%Shifting of the continuous signal
t = -3; %insert the shift
ts1=[0 0]; %values for the y-axis
ts2=[-1 2.5]; %values for the y-axis
ts3=[(-5-(t)) (5-(-t))]; %values for the x-axis
ts4=[0 0]; %values for the x-axis
if t<0 %if statement condition if 't' is less than zero (negative)
    subplot(2,2,2); %creates a subplot with 2 rows and 2 columns

    plot((x1-(t)),y1,(x2-(t)), y2, (x3-(t)),y3,'LineWidth',4);
    grid on; %turns the grid on
    xlabel('time'); %x-label
    ylabel('f(t)'); %y-label
    title('Time-Shifted Continuous Time Signal'); %gives title

    hold on;
    plot(ts1,ts2,ts3,ts4,'LineWidth',1); %plots the cross in cartesian plane
    hold off;
else
    subplot(2,2,2); %creates a subplot with 2 rows and 2 columns

    plot((x1-t),y1,(x2-t), y2, (x3-t),y3,'LineWidth',4); %plots the data which has been time-shifted according to the desired value
    grid on; %turns grid on
    xlabel('time'); %names x-axis
    ylabel('f(t)'); %names y-axis
    title('Time-Shifted Continuous Time Signal'); %sets title

    hold on;
    plot(ts1,ts2,ts3,ts4,'LineWidth',1); %plots the cross in cartesian plane
    hold off;
end

%Scaling of the continuous signal
n=1; d=4; %set the integers
t2=n/d; %equates t2 with the input number
%set the values for the y and x axis respectively
tc1 = [0 0];
tc2 = [-1 2.5];
tc3 = [-5 5];
tc4 = [0 0];
if t2==n/d %if condition statement
    subplot(2,2,3) %row 2 column 1
    plot(((x1-(t))*(d/n)),y1,((x2-(t))*(d/n)),y2,((x3-(t))*(d/n)),y3,'LineWidth',4); %plots the signal

    grid on; %turn grid on
    grid minor; %turns on the smaller grid
    %label the axis and give the title
    xlabel('time'); %x-label
    ylabel('f(t)'); %y-label
    title('Scaled Continuous Time Signal');

    hold on;
    plot(tc1,tc2,(tc3*(d/n)),tc4,'LineWidth',1) %plots the data to be added
    hold off;

else
    subplot(2,2,3); %subplot row 2, column 1
    plot(((x1-(t))*(n/d)),y1,((x2-(t))*(n/d)),y2,((x3-(t))*(n/d)),y3,'LineWidth',4); %plots the signal

    grid on; %turn grid on
    grid minor; %turns on the smaller grid
    %label the axis and give the title
    xlabel('time'); %x-label
    ylabel('f(t)'); %y-label
    title('Scaled Continuous Time Signal');
    hold on;
    plot(tc1,tc2,(tc3*(d/n)),tc4,'LineWidth',1) %plots the data to be added
    hold off;
end

%Reversing the Continuous Signal
t3=-4;
if t3<0 && t2==n/d
    subplot(2,2,4);
    plot(-((x1-(t))*(d/n)),y1,-((x2-(t))*(d/n)),y2,-((x3-(t))*(d/n)),y3,'LineWidth',4); %plots the signal
    grid on;
    grid minor;
    xlabel('time'); %x-label
    ylabel('f(t)'); %y-label
    title('Reversed Continuous Time Signal');
    hold on;
    plot(-(tc1),tc2,-(tc3*(d/n)),tc4,'LineWidth',1);
    hold off;
elseif t3>0 && t2==n/d
    subplot(2,2,4);
    plot(-((x1-t)*(d/n)),y1,-((x2-t)*(d/n)),y2,-((x3-t)*(d/n)),y3,'LineWidth',4); %plots the signal
    grid on;
    grid minor;
    %add labels and title
    xlabel('time'); %x-label
    ylabel('f(t)'); %y-label
    title('Reversed Continuous Time Signal');
    h=msgbox('no reversing done');
    hold on;
    plot(-(tc1),tc2,-(tc3*(d/n)),tc4,'LineWidth',1);
    hold off;
    h=msgbox('no reversing done');
elseif t3<0 && t2==d/n
    subplot(2,2,4);
    plot(-((x1-t)*(d/n)),y1,-((x2-t)*(d/n)),y2,-((x3-t)*(d/n)),y3,'LineWidth',4); %plots the signal
    %add labels and title
    xlabel('time'); %x-label
    ylabel('f(t)'); %y-label
    title('Scaled Continuous Time Signal');
    hold on;
    plot(tc1, tc2,(tc3*(n/d)),tc4,'LineWidth',1');
    hold off;
else
    subplot(2,2,4);
    plot(-((x1-t)*(d/n)),y1,-((x2-t)*(d/n)),y2,-((x3-t)*(d/n)),y3,'LineWidth',4); %plots the signal
    grid on;
    grid minor;
    %add labels and title
    xlabel('time'); %x-label
    ylabel('f(t)'); %y-label
    title('Scaled Continuous Time Signal');
    h = msgbox('no reversing done');
    hold on;
    plot(tc1,tc2,(tc3*(n/d)),tc4,'LineWidth',1);
    hold off;
end
