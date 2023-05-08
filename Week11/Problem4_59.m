%Problem 4.59

%Part a:
W=[-3*pi.6*pi/500:3*pi-6*pi/500];
X=sqrt(2*pi^3)*(exp(-(W-3*pi/2).^2/2)+exp(-(W+3*pi/2).^2/2));

figure(1);
plot(W,abs(X)), title('P4.59(a)'), xlabel('\omega'), ylabel('X(j\omega)'), axis tight;
print P4_59_1.eps