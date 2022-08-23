function freefalli
  %freefalli : interactive bungee velocity
  %freefalli interactive computation of the
  % free-fall velocity of an object with second-order drag.
  
  g = 9.81; %acceleration of gravity
  m = input ('Mass (kg) : ');
  cd = input ('Drag coefficient (kg/m) : ');
  t = input ( 'Time (s) : ');
  disp (' ')
  disp ('Velociry (m/s) : ')
  disp (sqrt(g*m/cd)*tanh(sqrt(g*cd/m)*t))
endfunction
