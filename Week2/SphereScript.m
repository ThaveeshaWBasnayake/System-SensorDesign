%Gets input from user
A = input('Please eneter a value for A = ');
B = input('Please eneter a value for B = ');
C = input('Please eneter a value for C = ');

%Defined functions
Function1 = A*2;
Function2 = B^2;
Function3 = (B+C)^2;
Function4 = A*B*C;
Function5 = sqrt(C-A);

%Displays them to user
disp ("Answer for A*2 is "); disp(Function1);
disp ("Answer for B^2 is "); disp(Function2);
disp ("Answer for (B+C)^2 is "); disp(Function3);
disp ("Answer for A*B*C is "); disp(Function4);
disp ("Answer for sqrt(C-A) is "); disp(Function5);