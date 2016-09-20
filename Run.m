load Test/CNNparameters.mat;
load Test/cifar10testdata.mat;

for i = 1:size(imageset, 4)

  probabilities = Classify(imageset(:,:,:,i), filterbanks, biasvectors);
  [m, maxNdx] = max(probabilities);
  
  calculatedLabel = classlabels{maxNdx};
  trueLabel = classlabels{trueclass(imgNdx)};
  report = ['Calculated class: ', calculatedLabel, '; True class: ', trueLabel];
  disp(report);
  

end
