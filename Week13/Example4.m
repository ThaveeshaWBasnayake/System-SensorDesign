clc;
close all;
clear;
syms L f t a;
f=exp(-5*t);
f2=exp(-a*t);
L=laplace(f);
L2=laplace(f2);