function ep = macheps
% determines the machine epsilon
e = 1;
while (1)
  if e+1<=1, break, end
  e = e/2;
end
ep = 2*e;
endfunction
