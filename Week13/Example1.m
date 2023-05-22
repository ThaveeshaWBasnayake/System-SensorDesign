clc;
close all;
clear;
syms a L t f; %%declaring the variables

f=exp(a*t);
L=laplace(f);
