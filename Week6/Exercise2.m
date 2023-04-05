%Script to visualise discrete waveforms of periodic signals
%Time frame of -10 to 10
x=-10:10;

%Use square function to create a periodic signal
y=square(x);

%Convert to discrete using a stem plot
stem(x,y);
title('Sqaure signal - Discrete Waveform')