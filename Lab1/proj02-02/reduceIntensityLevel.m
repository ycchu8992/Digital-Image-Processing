function [quantizedImage] = reduceIntensityLevel(originalImage,intensityLevel)
    tempImage = originalImage;
    divi = 256/intensityLevel;
    factor = 255/(intensityLevel-1);
    tempImage = floor(tempImage/divi);
    tempImage = floor(tempImage * factor);
    quantizedImage = tempImage;
end

