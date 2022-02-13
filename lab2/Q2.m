%part a
n = [0:10];
x1 = sin((2*pi/10).* n);
x2 = cos((2*pi/10).* n);
x3 = x1 + x2;
y1 = 2.* x1;
y2 = 2.* x2;
y3 = 2.* x3;
y4 = y1 + y2;

subplot (1,4,1);
stem(y1,n,'r');
subplot (1,4,2);
stem(y2,n,'b');
subplot (1,4,3);
stem(y3,n,'g');
subplot (1,4,4);
stem(y4,n,'b');

if (y3 == y4)
    disp("outputs consistent with a linear system");
else
    disp("not linear");
end;

%part b i)
x1 = 0;
y1 = x1^2;
x2 = 1;
y2 = x2^2;
x3 = 2*x1 + 3*x2;
y3 = x3^2;

if (y3 == (2*y1 + 3*y2))
    disp("outputs consistent with a linear system");
else
    disp("not linear");
end;

m = [0:3];
x_m_1 = [0,1];
y_m_1 = x_m_1 .^ 2;

shifted_y_m_1(1) = y_m_1(1);
shifted_y_m_1(2) = y_m_1(1);
shifted_y_m_1(3) = y_m_1(1);
shifted_y_m_1(4) = y_m_1(2);

x_m_2(1) = x_m_1(1);
x_m_2(2) = x_m_1(1);
x_m_2(3) = x_m_1(1);
x_m_2(4) = x_m_1(2);
shifted_y_m_2 = x_m_2 .^ 2;

if(shifted_y_m_1 == shifted_y_m_2)
    disp("time invariant");
else
    disp("time variant")
end;

%part b ii)
x_1 = 0;
y_1 = x_1*2 +5*dirac(x_1);

x_2 = 1;
y_2 = x_2*2 +5*dirac(x_2);

x_3 = 2*x1 + 3*x2;
y_3 = x_3*2 +5*dirac(x_3);

if(y_3 == (2*y_1 + 3*y_2))
    disp("outputs consistent with a linear system");
else
    disp("not linear");
end;

X_m_1 = [0,1];
Y_m_1 = X_m_1 .^ 2;

Shifted_y_m_1(1) = Y_m_1(1);
Shifted_y_m_1(2) = Y_m_1(1);
Shifted_y_m_1(3) = Y_m_1(1);
Shifted_y_m_1(4) = Y_m_1(2);

X_m_2(1) = X_m_1(1);
X_m_2(2) = X_m_1(1);
X_m_2(3) = X_m_1(1);
X_m_2(4) = X_m_1(2);
Shifted_y_m_2 = X_m_2 .^ 2;

if(Shifted_y_m_1 == Shifted_y_m_2)
    disp("time invariant");
else
    disp("time variant")
end;



