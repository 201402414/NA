function fout = factor(n)
  %factor(n) :
  % computes the product of all the intefers from 1 to n.
  x = 1;
  for i = 1:n
    x = x*i;
  end
  fout = x;
endfunction
