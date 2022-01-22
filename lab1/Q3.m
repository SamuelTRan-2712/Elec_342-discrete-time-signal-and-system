format long;

n = [0 : 31]; % a period has 8 data points goes from 0 -> 7 as shown in the example; hence, for 4 periods, they would be from 0 -> 31
N = 1024; 
x = cos((2*pi)/N *n);
stem (n, x);

result_1 = cos( (2*pi)/N * n) -cos( (2*pi)/N * (n+1024));
stem (n, result_1);

result_2 = cos( (2*3.14)/N * n) -cos( (2*3.14)/N * (n+1024));
stem (n, result_2);

x1 = cos(pi/4*n + pi/3);
x2 = cos(9*pi/4.*n + pi/3);

subplot (1,2,1);
stem (n, x1);
xlabel ('n');
ylabel ('x1 = cos(pi/4*n + pi/3)');

hold on;

subplot (1,2,2);
stem (n, x2);
xlabel ('n');
ylabel ('x2 = cos(pi/4*n + pi/3)');
