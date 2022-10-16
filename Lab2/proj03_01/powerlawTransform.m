function [outputImage] = powerlawTransform(inputImage,c,r)
   temp = c*(inputImage.^r);
   outputImage = temp;
end

