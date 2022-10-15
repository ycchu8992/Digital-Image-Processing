clear;

close all;

inputImage = double(imread("Fig221(a).tif"));

factor = input('DesireLevel(The power of 2 and the value between 2 to 256) = ?\n>> ');

[quantizedImage] = reduceIntensityLevel(inputImage,factor);

filename = append("reduceToDesireLevel.jpg");

subplot(1,1,1);imshow(uint8(quantizedImage));title("reduceToDesireLevel"+int2str(2^i));

imwrite(uint8(quantizedImage),filename);

ctrl = input('Continue for part b (1) yes (2) no?\n>> ');

if ctrl == 1
    for i=1:1:8
        [quantizedImage] = reduceIntensityLevel(inputImage,2^i);
        filename = append("IntensityReduceToLevel_",int2str(2^i),".jpg");
        subplot(2,4,i);imshow(uint8(quantizedImage));title(int2str(2^i));
        imwrite(uint8(quantizedImage),filename);
    end
end