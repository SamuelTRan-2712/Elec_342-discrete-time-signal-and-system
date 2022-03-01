n = [-10:1:10];
x = zeros(1,21);
x(9:13) = 1;

x_fft = fft(x);
magnitude_fft = abs(x_fft);
x_ifft = ifft(x_fft);

subplot(3,1,2);
plot(n, magnitude_fft);
title("Fourier transform of x[n]");

subplot(3,1,1);
stem(n, x);
title("original x[n]");

subplot(3,1,3);
stem(n, x_ifft);
title("x[n] using ifft function");
