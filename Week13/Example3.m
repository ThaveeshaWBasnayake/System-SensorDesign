clc
close all;
clear;
syms s a L t f % delcaring variables

%Inverse Laplace transform
f=(3*s+4)/((s+1)*(s+2)^2);
ilaplace(f);

%Laplace transform
% laplace(f);