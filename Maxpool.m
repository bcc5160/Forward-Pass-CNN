function [output] = Maxpool (input)

[n, m, d] = size (input);

for i = 1:n
  for j = 1:m
    for d = 1:d
      output(i,j,d) = max(input(2*i-1:2*i,2*j+1:2*j,1));
    endfor
  endfor
endfor

endfunction
