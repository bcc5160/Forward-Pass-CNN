% classifier 
% imageName = string
function image_resized = resizeImage(imageName)

    image = imread(imageName);

    image_resized = imresize(image, [32 32]);
     
    imwrite(image_resized, imageName);

end