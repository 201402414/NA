function AT=matran(A)

[m,n]=size(A);
for i = 1:m
for j = 1:n
AT(j,i) = A(i,j);
end
end