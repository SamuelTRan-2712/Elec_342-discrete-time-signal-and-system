larger_set = [1:8];

x1 = larger_set;
y1 = x1.^2;

x2 = 2*x1;
y2 = x2.^2;

x3 = x1 + x2;
y3 = x3.^2;

y4 = y1 + y2;

if(y3 == y4)
    disp("outputs consistent with a linear system");
else
    disp("not linear");
end;

disp(y3);
disp(y4);


m = [1:10];

x_m_1 = larger_set;
y_m_1 = x_m_1 .^ 2;

shifted_y_m_1(1) = y_m_1(1);
shifted_y_m_1(2) = y_m_1(1);
for index = 1:8
    shifted_y_m_1(index+2) = y_m_1(index);
end;

shifted_x_m_2(1) = x_m_1(1);
shifted_x_m_2(2) = x_m_1(1);
for index = 1:8
    shifted_x_m_2(index+2) = x_m_1(index);
end;
shifted_y_m_2 = shifted_x_m_2 .^2;
disp(shifted_y_m_1);
disp(shifted_y_m_2);

if(shifted_y_m_1 == shifted_y_m_2)
    disp("time invariant");
else
    disp("time variant")
end;