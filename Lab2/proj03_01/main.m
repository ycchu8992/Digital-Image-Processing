clear;

close all;

%read the image and change its type so that all pixels' intensity are in double
inputImage = double(imread("Fig.tif"));

c = input('c = ?\n>> ');

[output] = logTransform(inputImage, c);

outputImage = uint8(output);
subplot(1,1,1);imshow(uint8(outputImage));title("Original");