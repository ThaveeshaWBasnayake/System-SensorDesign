%drawing graphs (Continuous)
t = linspace(0,3*pi); % 0 to 2pi
x = square(t);
plot(t/pi,x,'.-',t/pi,sin(t))
xlabel('t/\pi')
grid on
%%%%%
t = linspace(-pi,2*pi,121);%0 to 2pi
x = 1.15*square(2*t); %drawing a square wave

plot(t/pi,x,'.-',t/pi,1.15*sin(2*t))
xlabel('t/\pi')
ylabel('Square and Sine Waves')
grid on

%drawing graphs (Discrete)
B=1;
omega=pi/4;
n=-10:10;
x=B*square(omega*n);
figure, stem(n,x);
title('Square signal - Discrete waveform')

%drawing graphs (exponential - continuous)
x = -2:0.5:10;
y=exp(x/2);
plot(x,y);
title('Growing exponential')

%drawing graphs (exponential - discrete)
B=1;
r=0.85;
n=-10:10;
x=B*r.^n; %decaying
figure, stem(n,x);
title('Exponential - Discrete waveform')

%drawing graphs (sinusoidal - continuous)
%cosine
x=-pi:0.01:pi;
figure, plot(x,cos(x));
grid on;
title('cosine wave');

%sine
x=-pi:0.01:pi;
figure, plot(x,sin(x));
grid on;
title('Sine wave');

%drawing graphs (exponentially growing)
A=60;
W0=20*pi;
phi=0;
a=6;
t=0:0.001:1;
expsine=A*sin(W0*t+phi).*exp(a*t);
figure, plot(t,expsine);
title('Exponentially Growing Sinusoidal Wave');

%drawing graphs (step function)
Unit_amplitude = [zeros(1,50), ones(1,50)];
figure, stem(Unit_amplitude);
title('Unit Amplitude Step Function')

%drawing graphs (Rectangular pulse)
t=-1:1/500:1;
u1=[zeros(1,250), ones(1,751)];
u2=[zeros(1,751),ones(1,250)];
U=u1-u2;
figure, subplot(3,1,1);
stem(u1);
subplot(3,1,2);
stem(u2);
subplot(3,1,3);
stem(U);
axis tight;
title('Rectangular Pulses');

