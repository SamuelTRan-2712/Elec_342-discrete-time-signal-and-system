n = [0:10]; 
x_n = (exp(-2*(abs(n))).*(sin(2.*pi./36)*n));
x_minus_n = (exp(-2*(abs(-1*n))).*(sin(2.*pi./36)*(-1*n)));

subplot(2,2,1);
stem(x_n,'r');
xlabel('n');
ylabel('x[n]');
title("signal x[n]");

subplot(2,2,2);
stem(x_minus_n, 'b');
xlabel('n');
ylabel('x[-n]');
title("mirror image of x[n]");

x_n_even = (x_n + x_minus_n) * 0.5;
x_n_odd = (x_n - x_minus_n) * 0.5;

subplot(2,2,3);
stem(x_n_even,'g');
xlabel('n');
ylabel('x[n] even');
title("x[n] even component");

subplot(2,2,4);
stem(x_n_odd,'r');
xlabel('n');
ylabel('x[n] odd');
title("x[n] odd component");