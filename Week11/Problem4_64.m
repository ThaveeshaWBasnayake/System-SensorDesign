%Problem 4.64:

clc
close all;
clear;

%Part a:
T=0.1; M=28; N=160;
wft=pi*[-1.5:.001:1.5]; 
Xft=2*sin(wft)./wft; %This is the signal
wdtfs=(2*pi/(N*T))*[-N/2:N/2-1];
x=ones(1,21); Xdtfs=fftshift(fft(x,N))*T;

figure(1), clf;
subplot(2,1,1);
plot(wft/(2*pi),abs(Xft)); %Shifting tp the centre first which is the FT
hold on;
stem(wdtfs/(2*pi),abs(Xdtfs)); %This is our DFT
title('P4.64(a)'), xlabel('Freq(Hz)'), ylabel('Part(a):|Y(j\omega)|');
axis([-1 1 0 2.5]);

%Part b:
T=0.9; M=4; N=56; n=[-(M-1):M-1];
wft=[-3:.001:3]; 
Xft=exp(-(wft).^2/2)/(sqrt(2*pi)); %This is the signal
wdtfs=(2*pi/(N*T))*[-N/2:N/2-1];
x=exp(-(n*T).^2/2)/(2*pi); Xdtfs=fftshift(fft(x,N))*T;

subplot(2,1,2);
plot(wft/(2*pi),abs(Xft)); %Shifting tp the centre first which is the FT
hold on;
stem(wdtfs/(2*pi),abs(Xdtfs)); %This is our DFT
title('P4.64(b)'), xlabel('Freq(Hz)'), ylabel('Part(b):|Y(j\omega)|');
axis([-0.6 0.6 0 0.45]);

print P4_64_1.eps

%Part c:
T=0.1; M=600; n=[0:M-1];
wft=pi*[-40:.01:40];
wdtfs=(2*pi/(M*T))*[-M/2:M/2-1];
wft1=wft+20*pi; wft2=wft-20*pi; wft3=wft+21*pi; wft4=wft-21*pi;
t1=exp(-j*wft1*T*(M-1)/2).*sin(M*wft1*T/2)./(2*sin(wft1*T/2));
t2=exp(-j*wft2*T*(M-1)/2).*sin(M*wft2*T/2)./(2*sin(wft2*T/2));
t3=exp(-j*wft3*T*(M-1)/2).*sin(M*wft3*T/2)./(2*sin(wft3*T/2));
t4=exp(-j*wft4*T*(M-1)/2).*sin(M*wft4*T/2)./(2*sin(wft4*T/2));
Xft=(t1+t2+t3+t4)/M;

x=cos(20*pi*n*T)+cos(21*pi*n*T); Xdfts=fftshift(fft(x,M))/M;

figure(2),clf;
subplot(2,1,1);
plot(wft/(2*pi),abs(Xft)); %Shifting tp the centre first which is the FT
hold on;
stem(wdtfs/(2*pi),abs(Xdfts)); %This is our DFT
title('P4.64(c)'), xlabel('Freq(Hz)'), ylabel('Part(c):|Y[k]|');
axis([8 13 0 0.6]);

%Part d:
T=0.1; M=2000; n=[0:M-1];
wft=pi*[-40:.01:40];
wdtfs=(2*pi/(M*T))*[-M/2:M/2-1];
wft1=wft+20*pi; wft2=wft-20*pi; wft3=wft+21*pi; wft4=wft-21*pi;
t1=exp(-j*wft1*T*(M-1)/2).*sin(M*wft1*T/2)./(2*sin(wft1*T/2));
t2=exp(-j*wft2*T*(M-1)/2).*sin(M*wft2*T/2)./(2*sin(wft2*T/2));
t3=exp(-j*wft3*T*(M-1)/2).*sin(M*wft3*T/2)./(2*sin(wft3*T/2));
t4=exp(-j*wft4*T*(M-1)/2).*sin(M*wft4*T/2)./(2*sin(wft4*T/2));
Xft=(t1+t2+t3+t4)/M;

x=cos(20*pi*n*T)+cos(21*pi*n*T); Xdfts=fftshift(fft(x,M))/M;

subplot(2,1,2);
plot(wft/(2*pi),abs(Xft)); %Shifting tp the centre first which is the FT
hold on;
stem(wdtfs/(2*pi),abs(Xdfts)); %This is our DFT
title('P4.64(d)'), xlabel('Freq(Hz)'), ylabel('Part(c):|Y(j\omega)|');
axis([9.5 11 0 0.6]);

print P4_64_2.eps