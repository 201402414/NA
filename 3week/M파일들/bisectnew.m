function [root,fx,Ea,n] = bisectnew(func,xl,xu,Ead,varargin)

if func(xl,varargin{:})*func(xu,varargin{:})>0 
sign change
disp('no bracket') 
return 
end
if nargin<4|isempty(Ead),Ead=0.000001;end 
xr = xl;
n = round(log2((xu - xl)/Ead) + 0.5);
for i = 1:n
xrold = xr;
xr = (xl + xu)/2;
if xr ~= 0, ea = abs((xr - xrold)/xr) * 100; end
Ea = abs(xr - xrold);
test = func(xl,varargin{:})*func(xr,varargin{:});
if test < 0
xu = xr;
elseif test > 0
xl = xr;
else
Ea = 0;
end
end
root = xr; fx = func(xr,varargin{:});