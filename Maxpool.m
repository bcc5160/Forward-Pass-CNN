function [output] = Maxpool (input)

outSize = size (input);
outSize(1) = outSize(1) / 2;
outSize(2) = outSize(2) / 2;

output = zeros(outSize);

for i = 1:outSize(1)
  for j = 1:outSize(2)
    for d = 1:outSize(3)
      temp = input(2*i-1:2*i,2*j-1:2*j,d);
      output(i,j,d) = max(temp(:));
    endfor
  endfor
endfor

endfunction
