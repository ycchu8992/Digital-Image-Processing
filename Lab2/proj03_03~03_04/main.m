clear;

close all;

inputImage = imread("Fig.tif");

A = [0,1,0;1,-4,1;0,1,0];
[output] = spatialFiltering(inputImage, A);
imwrite(output,"LaplacianImage.jpg");

[output, scaledLaplacian] = laplacianFiltering(inputImage, A, -1);
imwrite(uint8(output),"ImageSharpendKernalA.jpg");

B = [1,1,1;1,-8,1;1,1,1];
[output, scaledLaplacian] = laplacianFiltering(inputImage, B, -1);
imwrite(uint8(output),"ImageSharpendKernalB.jpg");

