size = 10; %create the size of the vector
n = 5; %create an arbitrary number n

row_vector_1 = zeros(1,size);
row_vector_1(2:3) = 1;

row_vector_2 = ones(1,size);
row_vector_2(1:n) = 0;

x1 = [-5:4];
x2 = [0:9];

subplot (2, 2, 1);
stem (x1, row_vector_1);
subplot (2, 2, 2);
stem (x2, row_vector_1);

subplot (2, 2, 3);
stem (x1, row_vector_2);
subplot (2, 2, 4);
stem (x2, row_vector_2);
