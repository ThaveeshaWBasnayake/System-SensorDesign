%Incorrect component due to the aliasing effect and the fact the signal has
%been sampled at too low of a frequency. Sampling frequency (1/Ts) always
%needs to be at least two times the highest frequency component in the
%signal being transformed or in our exmaple at least 2*500Hz = 1000Hz or
%Ts<1/1000=0.001.

N=250;
ts=0.00125; %Not following the nyquist criteria
deltaf=1/(N*ts);
t=(0:N-1)*ts;
x=cos(2*pi*100*t)+cos(2*pi*500*t);
Xf=fft(x);
Xf_shift=fftshift(Xf);
figure, plot((-N/2:N/2-1)*deltaf,abs(Xf_shift)), title("Incorrect Component");