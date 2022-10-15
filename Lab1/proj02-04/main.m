clear;

close all;

InputImage = double(imread("Fig0220(a).tif"));

info = imfinfo("Fig0220(a).tif");

if isfield(info,'XResolution')
    ori = info.XResolution;
end

trgt = double(input('desire dpi = '));

factor = trgt/ori;

[resizedImage] = resizeImage_bilinear(InputImage, factor);

filename = "resizeImage_with_" + int2str(trgt) + "_dpi.jpg";

imwrite(uint8(resizedImage),filename);

ctrl = input('To be continued? (1) Y (2) N?\n>> ');
if ctrl == 1
    subplot(1,2,1);imshow(uint8(InputImage));title("Origianl");
    [resizedImage] = resizeImage_bilinear(double(resizedImage), ori/trgt);
    filename = "resize_to_origi.jpg";
    subplot(1,2,2);imshow(uint8(resizedImage));title("Resize Back");
    imwrite(uint8(resizedImage),filename);
end