% classifier 
% imageName = string
function image_resized = resizeImage(image)

    image_resized = imresize(image, [32 32]);
%     
%     imwrite(image_resized, imageName)

end