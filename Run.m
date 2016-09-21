load Test/CNNparameters.mat;
load Test/cifar10testdata.mat;

imageCount = size(imageset, 4);
totalCorrect = 0;

confusionMatrix = zeros(10,10);

for i = 1:imageCount

  probabilities = Classify(imageset(:,:,:,i), filterbanks, biasvectors);
  [m, maxNdx] = max(probabilities);
  
  calculatedLabel = classlabels{maxNdx};
  trueLabel = classlabels{trueclass(i)};
  confusionMatrix(maxNdx,trueclass(i)) = confusionMatrix(maxNdx,trueclass(i)) +1;
  report = [' Calculated class: ', calculatedLabel, '; True class: ', trueLabel];
  fprintf('%f', double(i));
  disp(report);
  
  if maxNdx == trueclass(i)
  
    totalCorrect = totalCorrect + 1;
  
  end

end

disp(totalCorrect);
disp(confusionMatrix);
