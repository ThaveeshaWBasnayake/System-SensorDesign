%Problem 4.56

%Part a: Rectangular window
clc;
close all;
clear;

M=50;
wr=ones(1,M+1); %Rectangular window

%Interval pi/50:
Omega=(-pi:pi/50:pi-pi/50);
Wr=fftshift(fft(wr,100)); 
%fft is the number of points for the output we want
%fftshift shifted everything across the zero frequency, makes the zero
%frequency into the center so that it is symmertrical

figure(1);
subplot(3,1,1);
plot(Omega, 20*log10(abs(Wr)/max(abs(Wr)))), title('P4.56(a)');
xlabel('Omega'), ylabel('|W_r(Omega)| dB:pi/50'), axis([-pi pi -60 0])

%Interval pi/100:
Omega=(-pi:pi/100:pi-pi/100);
Wr=fftshift(fft(wr,200)); 
%fft is the number of points for the output we want
%fftshift shifted everything across the zero frequency, makes the zero
%frequency into the center so that it is symmertrical

figure(1);
subplot(3,1,2);
plot(Omega, 20*log10(abs(Wr)/max(abs(Wr))));
xlabel('Omega'), ylabel('|W_r(Omega)| dB:pi/100'), axis([-pi pi -60 0])

% Interval pi/200:
Omega=(-pi:pi/200:pi-pi/200);
Wr=fftshift(fft(wr,400)); 
%fft is the number of points for the output we want
%fftshift shifted everything across the zero frequency, makes the zero
%frequency into the center so that it is symmertrical

figure(1);
subplot(3,1,3);
plot(Omega, 20*log10(abs(Wr)/max(abs(Wr))));
xlabel('Omega'), ylabel('|W_r(Omega)| dB:pi/200'), axis([-pi pi -60 0]);

%Part b: Hanning window
%converted to decibels, converted to logarithmic scale

M=50;
wh=0.5-0.5*cos(2*pi*[0:M]/M);

%Interval pi/50:
Omega=(-pi:pi/50:pi-pi/50);
Wh=fftshift(fft(wh,100)); 

figure(2);
subplot(3,1,1);
plot(Omega, 20*log10(abs(Wh)/max(abs(Wh)))), title('P4.56(b)');
xlabel('Omega'), ylabel('|W_r(Omega)| dB:pi/50'), axis([-pi pi -130 0])

%Interval pi/100:
Omega=(-pi:pi/100:pi-pi/100);
Wh=fftshift(fft(wh,200)); 

figure(2);
subplot(3,1,2);
plot(Omega, 20*log10(abs(Wh)/max(abs(Wh))));
xlabel('Omega'), ylabel('|W_r(Omega)| dB:pi/100'), axis([-pi pi -130 0])

%Interval pi/200:
Omega=(-pi:pi/200:pi-pi/200);
Wh=fftshift(fft(wh,400)); 

figure(2);
subplot(3,1,3);
plot(Omega, 20*log10(abs(Wh)/max(abs(Wh))));
xlabel('Omega'), ylabel('|W_r(Omega)| dB:pi/200'), axis([-pi pi -130 0])

%Part c: pi/200 interval zoomed:
figure(3);
subplot(2,1,1)
plot(Omega, 20*log10(abs(Wr)/max(abs(Wr)))), title('P4.56 (c)');
xlabel('Omega'), ylabel('|W_r| zoomed'), axis([-0.4 0.4 -35 0])

subplot(2,1,2)
plot(Omega, 20*log10(abs(Wh)/max(abs(Wh))));
xlabel('Omega'), ylabel('|W_h| zoomed'), axis([-0.4 0.4 -60 0])

print P4_56_3.eps

%Part d:
x1=cos(26*pi*[0:M]/100)+cos(29*pi*[0:M]/100);
yr1=x1.*wr, yh1=x1.*wh;
Yr1=fftshift(fft(yr1, 400));
Yh1=fftshift(fft(yh1,400));

figure(4);
subplot(2,1,1);
plot(Omega, 20*log10(abs(Yr1)/max(abs(Yr1)))), title('P4.56 (d)');
xlabel('Omega'), ylabel('|Y_r_1 (Omega)| dB'), axis tight

subplot(2,1,2);
plot(Omega, 20*log10(abs(Yh1)/max(abs(Yh1))));
xlabel('Omega'), ylabel('|Y_h_1 (Omega)| dB'), axis tight

%Part e:
x2=cos(26*pi*[0:M]/100)+0.02*cos(29*pi*[0:M]/100);
yr2=x2.*wr, yh2=x2.*wh;
Yr2=fftshift(fft(yr2, 400));
Yh2=fftshift(fft(yh2,400));

figure(5);
subplot(2,1,1);
plot(Omega, 20*log10(abs(Yr2)/max(abs(Yr2)))), title('P4.56 (e)');
xlabel('Omega'), ylabel('|Y_r_2 (Omega)| dB'), axis tight

subplot(2,1,2);
plot(Omega, 20*log10(abs(Yh2)/max(abs(Yh2))));
xlabel('Omega'), ylabel('|Y_h_2 (Omega)| dB'), axis tight

print P4_56_5.eps