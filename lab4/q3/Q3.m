[original, Fs]=wavread('Original.wav');
[distorted, Fs]=wavread('Distorted.wav');

L = 2*Fs;
k = [0: 1: L-1];
subplot(2,1,1);
plot(k, distorted);
title('Original Signal');
subplot(2,1,2);
plot(k, original);
title('Distorted Signal');

MSE=0;
for i=1:L
    MSE = MSE+(distorted-original).^2;
end
MSE = MSE/L;

figure;
plot(k, MSE);
title('MSE of Original vs Distorted');

mu=0.01;
N=16;
w = zeros(N,1);
for index = 1: (L-N)
	X = x(index: (N-1+index));
	y = w' * X;
	error = y-d(index);
	w = w + mu *error';
	total_summation_y(index)=y;
	square_error(index)=error^2;
end

figure;
plot(0: length(square_error)-1, square_error);
title('MSE of Original vs Recovered');


wavwrite(total_summation_y,22050,16,'Recovered_signal.wav');
sound(total_summation_y,Fs,N);
