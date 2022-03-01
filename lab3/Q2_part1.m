n = [-10:10];
x = zeros(1,21);
x(9:13) = 1;

stepsize = (2*pi)/21;
w = [0 : stepsize : 2*pi - stepsize];

output = zeros(1,length(w));

for index = 1:length(w)
    sum = 0;
    for n = 1:length(w)
        sum = sum +  x(n).* exp(-1*j.* w(index).* n);
    end;
    output(index) = sum;
end;

magnitude = abs(output);
subplot(2,1,1);
plot(w,magnitude);
title('X(W)')

x_FFT = fft(x);
magnitude_FFT = abs(x_FFT);
subplot(2,1,2);
plot(w,magnitude_FFT);
title('X(W) using fft function')

    
