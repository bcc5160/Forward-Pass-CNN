function out = Convolution(in, filterBank, bias)

  outSize = size(in);
  outSize(3) = size(filterBank, 4);

  out = zeros(outSize);

  for l = 1:size(out, 3)
    for k = 1:size(in, 3)

      out(:,:,l) = out(:,:,l) + imfilter(in(:,:,k), filterBank(:,:,k,l), 'conv');

    end

    out(:,:,l) = out(:,:,l) + bias(l);

  end

end
