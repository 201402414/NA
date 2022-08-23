function v = freefall(t,m,cd)
  %freefall : bungee velocrit with second-order drag
  %v = freefall(t.m.cd) computers the free-fall velocity of an object with
  % second-order drag
  %input :
  % t = time(s)
  % m = mass (kg)
  % cd = second-order drag coefficient (kg/m)
  % output:
  % v = downward velocrit (m/s)
  g = 9.81; %acceleration of gravity
  v = sqrt(g*m/cd)*tanh(sqrt(g*cd/m)*t);
endfunction
