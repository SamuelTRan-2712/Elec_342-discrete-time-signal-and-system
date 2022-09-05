sampling_frequency = 6000;
time = 1;
time_interval = [0: (1/sampling_frequency): time-(1/sampling_frequency)];
Omega =(-time*sampling_frequency/2:(time*sampling_frequency)/2-1)/(time*sampling_frequency);

x = sin(100*time_interval) + sin(2000*time_interval) + sin(6000*time_interval);
x_FFT = fft(x,sampling_frequency);
new_xFFT_after_shift = fftshift(x_FFT);

subplot(2,1,1);
plot(time_interval, x);
xlabel('t');
ylabel('x(t)');
title('original input signal in time domain');

subplot(2,1,2);
plot(Omega, abs(new_xFFT_after_shift));
xlabel('Omega (W)');
ylabel('|X(W)|');
title('Fourier transform of x(t) using sampling frequency of 6000');

%create digital fourth IIR Butterworth filter
y = zeros(2, length(x)); %output y
Omega_y = [400/sampling_frequency, 700/sampling_frequency];

%designing IIR butterworth filter with order 4
[b,a] = butter(4, Omega_y, 'Bandpass');
[H,f] = freqz(b, a);
y_n = filter(b, a, x);
Y_FFT = fft(y_n,sampling_frequency);
new_YFFT_after_shift = fftshift(Y_FFT);

% demonstration of the filter's output with order 4
figure;

subplot(2,1,1);
plot(f/pi, abs(H));
xlabel('Omega (W) as a function of pi ');
ylabel('Y(W)');
title('Y(W) of Butterworth filter with order 4');

subplot(2,1,2);
plot(Omega,abs(new_YFFT_after_shift));
ylabel('|Y(W)|');
title('Fourier transform of y[n] using sampling frequency of 6000');

%designing IIR butterworth filter with order 8
Omega_y_order_8 = [400/sampling_frequency, 1000/sampling_frequency];
[b,a] = butter(8, Omega_y_order_8, 'Bandpass');
[H,f] = freqz(b, a);
y_n_order_8 = filter(b, a, x);
Y_FFT_order_8 = fft(y_n_order_8,sampling_frequency);
new_YFFT_after_shift_order_8 = fftshift(Y_FFT_order_8);

% demonstration of the filter's output with order 8
figure;

subplot(2,1,1);
plot(f/pi, abs(H));
xlabel('Omega (W) as a function of pi ');
ylabel('Y(W)');
title('Y(W) of Butterworth filter with order 8');

subplot(2,1,2);
plot(Omega,abs(new_YFFT_after_shift_order_8));
ylabel('|Y(W)|');
title('Fourier transform of y[n] using sampling frequency of 6000');

