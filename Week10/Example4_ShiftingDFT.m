%Can produce the spectrum plot that only shows these frequencies and shows
%the negative frequency components by applying the fftshift function
Xf_shift=fftshift(Xf);
figure, plot((-N/2:N/2-1)*deltaf,abs(Xf_shift)), title("Shifted DFT");