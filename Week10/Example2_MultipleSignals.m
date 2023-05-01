N=250;
ts=0.0002;
t=(0:N-1)*ts;
x=cos(2*pi*100*t)+cos(2*pi*500*t);
figure, plot(t,x), title("Input Signal");

%Can find approxmiate the fourier transform integral for 0 <= f <= 800 Hz
%using:
k=0;
for f=0:1:800
    k=k+1;
    X(k)=trapz(t,x.*exp(-j*2*pi*f*t)); %Fourier transform formula
end

f=0:800;
figure, plot(f,abs(X)), title("Fourier Transform");