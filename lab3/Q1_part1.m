n = [-10:1:10];
x = zeros(1,21);
x(9:13) = 1;

subplot(2,1,1)
stem(n,x);
title("x[n]");

w = -pi(): pi()/10: pi();
output = zeros(1,length(w));

for i = 1:length(w)
    sum = 0;
    for n = -10:10
        sum = sum +  x(n+11).* exp(-1*j.* w(i).* n) ;
    end;
    output(i) = sum;
end;

magnitude = abs(output);
disp(magnitude);
subplot (2,1,2);
plot(w, magnitude);
title('x(w)');

