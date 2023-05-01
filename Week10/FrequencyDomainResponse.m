clc;
close all;
clear;

f=-5:.01:5;
X=4*sinc(4*f);
figure, plot(f,X), title("Frouier Transform");
%Fourier transfrom is a purely real function, thus we can plot it as shown
% generally fourier transforms are complex functions and need to plot
% amplitude and phase spectrun separately
figure, plot(f,abs(X)), title("Magnitude");

figure, plot(f,angle(X)), title("Angle"); 