function [resizedImage] = resizeImage_replication(originalImage, scalingFactor)
    f = scalingFactor;
    [M,N,C] = size(originalImage);
    tempImage = zeros(ceil(f*M),ceil(f*N),C,'uint8');
    for i = 1:1:f*M
        for j = 1:1:f*N
            tempImage(i,j) = originalImage(ceil(i/f),ceil(j/f));
        end
    end
    resizedImage = tempImage;
end
