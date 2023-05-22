close all;
clc;
clear;
syms a L t f f1 L1 L1Inverse L2Inverse LInverse; %Declare variables

%The functions
f1=(-exp(3*t));
f2=t;

%Laplace transform
L1=laplace(f1);
L2=laplace(f2);
L=L1*L2;

%Inverse laplace
L1Inverse = ilaplace(L1);
L2Inverse = ilaplace(L2);
LInverse=L1Inverse*L2Inverse;