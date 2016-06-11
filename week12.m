D = zeros(10, 10);
for i = 1:10
    for j = 1:10
        D(i, j) = sin(i + j);
    end
end

A = D + eye(10);
b = [-2; -6; -9; 1; 8; 10; 1; -9; -4; -3];
S = 3;

r = b;

x = zeros(10, 1);
for j = 1:10
    x(j) = A(j, :) * r;
end

x