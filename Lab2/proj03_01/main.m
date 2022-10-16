clear;

close all;

%read the image and change its type so that all pixels' intensity are in double
inputImage = double(imread("Fig0308(a)(fractured_spine).tif"));

c = 255/log(256);

[output] = logTransform(inputImage, c);

outputImage = im2single(uint8(output));

figure(1);

subplot(1,2,1);imshow(im2single(uint8(inputImage)));title("Original");

subplot(1,2,2);imshow(outputImage);title("Log transformation");

filename = "LogTransformation.jpg";
imwrite(outputImage,filename);


figure(2);

subplot(2,3,1);imshow(uint8(inputImage));title("Original");

for i = 0:1:4
    r = 0.3+0.1*i;
    c = 255/255^r;
    gammaValue = sprintf("%.1f",r);
    [output] = powerlawTransform(inputImage,c,r);
    outputImage = im2single(uint8(output));
    subplot(2,3,i+2);imshow(outputImage);title("powerLaw:gamma = " + gammaValue);
    filename = "powerLawWithGamma_"+gammaValue+".jpg";
    imwrite(outputImage,filename);
end
