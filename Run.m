load Test/CNNparameters.mat;
load Test/cifar10testdata.mat;

imageCount = size(imageset, 4);
totalCorrect = 0;

for i = 1:imageCount

  probabilities = Classify(imageset(:,:,:,i), filterbanks, biasvectors);
  [m, maxNdx] = max(probabilities);
  
  calculatedLabel = classlabels{maxNdx};
  trueLabel = classlabels{trueclass(i)};
  report = ['Calculated class: ', calculatedLabel, '; True class: ', trueLabel];
  disp(report);
  
  if maxNdx == trueclass(i)
  
    totalCorrect = totalCorrect + 1;
  
  end

end

disp(totalCorrect);
