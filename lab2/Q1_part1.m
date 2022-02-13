n = [0:9];
x = n;
y = x.^2;

%part a
Energy_x = x.^2;
 total_energy_x = 0;
 for index = Energy_x
    total_energy_x = total_energy_x + index;
 end
 
 Energy_y = y.^2;
 total_energy_y = 0;
 for index = Energy_y
    total_energy_y = total_energy_y + index;
 end 
 
 disp(x);
 disp(total_energy_x);
 disp(y);
 disp(total_energy_y);
 
%part b
x2 = sin((2*pi)/10.*n);
Energy_x2 = x2.^2;
 total_energy_x2 = 0;
 for index = Energy_x2
    total_energy_x2 = total_energy_x2 + index;
 end
 disp(total_energy_x2);
