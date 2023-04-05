%Write a script that will visualize ramp functions
%and merge them with a unit-amplitude step function
%is generated using ones (amplitude = 1)

%First we need to create a Ramp function which is completed in the function
%file, this way it can be called upon whenever we need it in the script
%space

%Second we will create a function to draw the unit step function, which is
%under the file name unitStep

%We now need to obtain values from the user for the slope, start and switch
%time for the ramp and unitStep function respectively. 
SlopeR = input('What is the slope of the ramp function = ');
StartR = input('What is the start of the ramp function = ');
Switch = input ('When does the unit step function begin = ');

%The time in which the functions will exist
t = linspace(-10,10,2^12);

%Create the ramp function
RampFunction = Ramp(t,SlopeR,StartR);

%Create the UnitStep function
UnitFunction=unitStep(t,Switch);

%Combine the functions
Merge = RampFunction+UnitFunction;

%Plot each graph on a subplot ending with the final graph
figure, subplot(3,1,1);
plot(t,RampFunction); %Plot the Ramp function vs time
title('Time vs Ramp Function')
xlabel('Time(sec)'); ylabel('Ramp');
grid on;

%Plot the Unit step function
subplot(3,1,2);
plot(t, UnitFunction);
title('Time vs Unit Function')
xlabel('Time(sec)'); ylabel('Unit Step');
grid on;

%Plots the merged graphs
subplot(3,1,3);
plot(t,Merge);
%Customise the graph window
axis tight;
title('Merged Graphs of Ramp and Unit Step Function');
xlabel('Time(sec)');
grid on;