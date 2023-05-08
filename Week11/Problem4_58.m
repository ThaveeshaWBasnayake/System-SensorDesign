%Problem 4.58:

x=cos(pi*[-50:50]/2).*exp(-(0.1*[-50:50]).*2/2);
Omega=[-1:2/500:1-2/500]*pi;
X=fftshift(fft(x,500));

%Part a: rate 2 subsampling
x2=x(1:2:length(x));
X2=fftshift(fft(x2,500));

%Part b: rate 4 subsampling
x4=x(1:4:length(x));
X4=fftshift(fft(x4,500));

figure(1);
subplot(3,1,1);
plot(Omega, 20*log10(abs(X2)/max(abs(X2))));