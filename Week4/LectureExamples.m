%Makes a row vector
x = [5 -3 7 -10];

%Makes Column vector
y = [1;3;-17];

%vector with equal spacing
t=0:0.1:2;
z =linspace(0,2,11);

%First multiple vector by 3, then each element by 3
q = [1 -2 3 9];
q^3;
q.^3;

%different methods to multiple arrays together
a = [1 2 3]; 
b =[4 5 6];
a*b;
a.*b;

%Doesnt work because of differnt array size
c=[4 5 6 7];
a.*c;
