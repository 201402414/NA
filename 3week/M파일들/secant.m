function root = secant(func,xrold,xr,es,maxit)

if nargin<5, maxit=50; end 
if nargin<4, es=0.001; end 
iter = 0;
while (1)
xrn = xr - func(xr)*(xrold - xr)/(func(xrold) - func(xr));
iter = iter + 1;
if xrn ~= 0, ea = abs((xrn - xr)/xrn) * 100; end
if ea <= es | iter >= maxit, break, end
xrold = xr;
xr = xrn;
end
root = xrn;