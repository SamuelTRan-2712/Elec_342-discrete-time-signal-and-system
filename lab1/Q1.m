radius = [1:10];
volume = (4/3) * pi .* (radius) .^ 2;
area = 4 * pi .* (radius) .^ 2;
subplot (1,2,1);
plot (radius, volume, 'r'); 
xlabel ('Radius');
ylabel ('Volume/ Surface area');
hold on;
plot (radius, area, 'b'); 

square_length = [1:10];
square_volume = square_length .^ 3;
square_area = 6 .* (square_length) .^ 2;
subplot (1,2,2);
plot (square_length, square_volume, 'r');
xlabel ('length of side');
ylabel ('Volume/ Surface area');
hold on;
plot (square_length, square_area, 'b');

