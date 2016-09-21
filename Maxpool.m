function [output] = Maxpool (input)

  outSize = size(input);
  outSize(1) = outSize(1) / 2;
  outSize(2) = outSize(2) / 2;
  
  output = zeros(outSize);

  tl = input(1:2:end, 1:2:end, :);
  tr = input(1:2:end, 2:2:end, :);
  bl = input(2:2:end, 1:2:end, :);
  br = input(2:2:end, 2:2:end, :);
  
  output = max(max(tl, tr), max(bl, br));

endfunction
