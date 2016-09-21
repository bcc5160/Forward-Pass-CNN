
function changeAllImages(folder) 
    files = dir(folder/'*');
    for file = files'
        % Do some stuff
        resizeImage(file)
    end

end