%DFT formula
N=250;
ts=0.0002;
deltaf=1/(N*ts);
t=(0:N-1)*ts;
x=cos(2*pi*100*t)+cos(2*pi*500*t);
Xf=fft(x);
f=(0:N-1)*deltaf;
figure, plot(f, abs(Xf)), title("DFT");

%Shows four components, two are at the expected frequencies at 100 and 500
%Hz. The other two are at 4500 and 4900Hz, frequencies that do not appear
%in the signal. Due to periodic nature of the DFT. only frequencies up to
%0.5/Ts correspond to the actual frequencies in the Fourier transform.