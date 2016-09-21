function out = Classify(img, filterbanks, biasvectors)

  layerCalls = {
    @(x)img_norm(x),
    @(x)Convolution(x, filterbanks{2}, biasvectors{2}),
    @(x)ReLU(x),
    @(x)Convolution(x, filterbanks{4}, biasvectors{4}),
    @(x)ReLU(x),
    @(x)Maxpool(x),
    @(x)Convolution(x, filterbanks{7}, biasvectors{7}),
    @(x)ReLU(x),
    @(x)Convolution(x, filterbanks{9}, biasvectors{9}),
    @(x)ReLU(x),
    @(x)Maxpool(x),
    @(x)Convolution(x, filterbanks{12}, biasvectors{12}),
    @(x)ReLU(x),
    @(x)Convolution(x, filterbanks{14}, biasvectors{14}),
    @(x)ReLU(x),
    @(x)Maxpool(x),
    @(x)FullyConnected(x, filterbanks{17}, biasvectors{17}),
    @(x)SoftMax(x)
  };

  cur = img;

  for i = 1:size(layerCalls)

    cur = layerCalls{i}(cur);

  end

  out = cur;

end
