n = [0:9]; 
x_n = zeros(1:10);
x_n(1:3) = 1;
y_n = zeros(1:10);

y_n(1) = 0;
for index = 2:10;
    y_n(index) = x(index) + 0.25*((y(index-1)).^5);
end;

stem(y);
xlabel("n");
ylabel("y[n]");
title ("signal y[n])");