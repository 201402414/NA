function [x, D] = GaussPivotNew(A, b, tol)
[m,n]=size(A);
if m~=n, error('Matrix A must be square'); end
nb=n+1;
Aug=[A b];
npiv=0;
for k = 1:n-1
[big,i]=max(abs(Aug(k:n,k)));
ipr=i+k-1;
if ipr~=k
npiv=npiv+1;
Aug([k,ipr],:)=Aug([ipr,k],:);
end
absakk=abs(Aug(k,k));
if abs(Aug(k,k))<=tol
D=0;
error('Singular or near singular system')
end
for i = k+1:n
factor=Aug(i,k)/Aug(k,k);
Aug(i,k:nb)=Aug(i,k:nb)-factor*Aug(k,k:nb);
end
end
for i = 1:n
if abs(Aug(i,i))<=tol
D=0;
error('Singular or near singular system')
end
end
x=zeros(n,1);
x(n)=Aug(n,nb)/Aug(n,n);
for i = n-1:-1:1
x(i)=(Aug(i,nb)-Aug(i,i+1:n)*x(i+1:n))/Aug(i,i);
end
D=(-1)^npiv;
for i=1:n
D=D*Aug(i,i);
end