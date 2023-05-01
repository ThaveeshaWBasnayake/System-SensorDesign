%Finding integral in Matlab
f=0;
t=-2:.01:2; %This is the range
trapz(t,exp(-j*2*pi*f*t)); %Trapz is the method to find the integral

%For complete integral
t=-2:.01:2;
k=0;
for f=-5:.01:5
    k=k+1;
    X(k)=trapz(t,exp(-j*2*pi*f*t));
end

f=-5:.01:5;
plot(f,X);