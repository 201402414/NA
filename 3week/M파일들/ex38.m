function favg = funcavg(a,b,n)
%  funcavg : average function height
%    favg = funcavg(a,b,n) : computes average value
%  of function over a range
% input :  
% a = lower cound of range
% b = upper bound of range
% n = number of intervals
% output :
%   favg = average value of function
x = linspace(a,b,n);
y = func(x);
favg = mean(y);
end
function f = func(t)
f = sqrt(9.81*69.1/0.25)*tanh(sqrt(9.81*0.25/68.1)*t);
end
