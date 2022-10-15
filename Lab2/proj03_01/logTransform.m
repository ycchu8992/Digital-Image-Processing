function [outputImage] = logTransform(inputImage, c)
    [M,N,C] = size(inputImage);
    one = ones(M,N,C,'double');
    outputImage = c*log(inputImage+one);
end

