function B = permut(A,r1,r2)
[m,n] = size(A);
if m ~= n, error('matrix not square'), end
if r1 == r2 | r1>m | r2>m
error('row numbers are equal or exceed matrix dimensions')
end
P = zeros(n);
P(r1,r2)=1;P(r2,r1)=1;
for i = 1:m
if i~=r1 & i~=r2
P(i,i)=1;
end
end
B=P*A;