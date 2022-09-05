%part a
sampling_frequency = 8192;
time = 3;

time_interval_1 = [0: (1/sampling_frequency): time-(1/sampling_frequency)];
time_interval_2 = [1: (1/sampling_frequency): time-(1/sampling_frequency)];
time_interval_3 = [2: (1/sampling_frequency): time-(1/sampling_frequency)];

Omega =(-time*sampling_frequency/2:(time*sampling_frequency)/2-1)/(time*sampling_frequency);

stepsize_frequency = ((2* pi)/ (time *sampling_frequency));

x1 = cos(2*pi*200*(time_interval_1));
x2 = cos(2*pi*330*(time_interval_2));
x3 = cos(2*pi*480*(time_interval_3));

the_real_input_signal = x1 + [zeros(1, sampling_frequency), x2]+[zeros(1, 2*sampling_frequency),x3];

%play the signal sound
%soundsc(the_real_input_signal, sampling_frequency)

input_signal_fft = fft(the_real_input_signal);
new_YFFT_after_shift = fftshift(input_signal_fft);

subplot(2,1,1);
plot(time_interval_1, the_real_input_signal);
xlabel('t');
ylabel('x(t)');
title('original input signal in time domain');

subplot(2,1,2);
plot(Omega,abs(new_YFFT_after_shift));
xlabel('Omega (W)');
ylabel('|X(W)|');
title('DFT of x(t)');

%part b

%designing butterworth stopband filters
Omega_sampling_for_stop_band = [525/sampling_frequency, 825/sampling_frequency];
[b,a] = butter(2, Omega_sampling_for_stop_band, 'stop'); % butterworth filter with order 2 and of tye stop band 
[H,f] = freqz(b, a);
y_n = filter(b, a, the_real_input_signal);
Y_FFT = fft(y_n);
new_YFFT_after_shift = fftshift(Y_FFT);

figure;

%magnitude and phase of the filter 
subplot (2, 1, 1);
plot(f/pi, abs(H));
xlabel('Omega (W) as a function of pi ');
ylabel('|H(W)| in dB');
title('|H(W)| of Butterworth stopband filter with order 2');

subplot (2, 1, 2);
plot(f/pi, angle(H));
xlabel('Omega (W) as a function of pi ');
ylabel('phase of H(W) in dB');
title('phase of H(w) of Butterworth stopband filter with order 2');

figure;

% magnitude of y(t), the output
subplot (2, 1, 1);
plot(time_interval_1, y_n);
xlabel('t');
ylabel('y(t)');
title('output signal corresponding to continuos time');

% magnitude of Y(W) in frequency domain
subplot (2,1,2);
plot(Omega,abs(new_YFFT_after_shift));
xlabel('Omega (W) as a function of pi ');
ylabel('|Y(W)| in dB');
title('DFT of the output y(t)');

soundsc(y_n);
