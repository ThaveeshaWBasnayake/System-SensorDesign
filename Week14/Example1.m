clc
clear;
close all;

syms a n y x X Y %Introduce symbols

%x=(0.5)^n;
%y=ztrans(x);

%x=(a^n); %Unit step function
%y=ztrans(x);

%x=(1/3)^n;
%y=ztrans(x);

%x=(1/3)^n +(1/2)^n;
%y=ztrans(x);

%x=(5/2)*(0.5)^n;
%y=ztrans(x);

%Y=iztrans(y); %inverse z transformation

%x=cos(n)*n;
%y=ztrans(x);

x=n*(n+1);
y=ztrans(x);

