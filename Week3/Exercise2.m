t = 0:0.02:0.6; %Creates a time domain for the function to lie in
y = 3*sin(2*pi*10*t); %Defines the sinusoidal function
plot(t,y); %plots the graph t vs y

%Names the axis and gives title
xlabel('t');
ylabel('y(t)');
title('Sinusoidal Wave');
