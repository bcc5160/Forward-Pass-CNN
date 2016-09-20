function out = FullyConnected(in, filterbank, biasvectors)

  outSize = [1, 1, 1];
  outSize(3) = size(filterbank, 4);
  
  out = zeros(outSize);
 
  for l = 1:size(filterbank, 4)
    for i = 1:size(in, 1)
      for j = 1:size(in, 2)
        for k = 1:size(in, 3)
        
          out(1, 1, l) = out(1, 1, l) + in(i, j, k) * filterbank(i, j, k, l);
        
        end
      end
    end
    
    out(1, 1, l) = out(1, 1, l) + biasvectors(l);
    
  end

end