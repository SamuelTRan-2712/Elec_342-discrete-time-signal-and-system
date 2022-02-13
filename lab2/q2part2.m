n = [0:9]; 
x_n = zeros(1:10);
x_n(1:3) = 1;
y(1) = 0;

h_n = 0.25.^n;
y = conv(x_n(1:9), h_n(1:9));

stem(y);
title('y[n]');
xlabel('n');
ylabel('y[n]');

