%Visualise 3 rectangluar pulse of v1, v2, v1-v2
% 1000 samples indicate interval of one second
% gap of 2 ms

%First Set the time
t = -1:1/500:1;

%Write the different pulse methods needed
v1=[zeros(1,250), ones(1,751)];
v2=[zeros(1,751), ones(1,250)];
V=v1-v2;

%Draw the figures using subplot so that all plots can be seen in one window
figure, subplot(3,1,1);
stem(v1);
subplot(3,1,2);
stem(v2);
subplot(3,1,3);
stem(V);
%Customise the graph window
axis tight;
title('Rectangular Pulses Plot');