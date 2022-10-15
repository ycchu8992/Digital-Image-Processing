clear;

close all;

InputImage = double(imread("Fig0220(a).tif"));

ctrl = input('Zoom or Shrink? (1) Zoom (2) Shrink = ?\n>> ');

factor = input('Scaling factor = ?\n>> ');

if ctrl == 1
    f=factor;
    filename = "resizeImage_zoom_" + int2str(factor) + ".jpg";
else
    f = 1 / factor;
    filename = "resizeImage_shrink_" + int2str(factor) + ".jpg";
end

[resizedImage] = resizeImage_replication(InputImage, f);

imwrite(uint8(resizedImage),filename);

ctrl2 = input('Continue for part b and c? (1) yes (2) no?\n>> ');

if ctrl2 == 1
    filename = "resizeImage_shrink_to_10.jpg";
    
    [resizedImage] = resizeImage_replication(InputImage, 1/10);
    
    subplot(1,2,1);imshow(uint8(InputImage));title("Original");
    
    imwrite(uint8(resizedImage),filename);
    
    filename = "resize_to_origi.jpg";
    
    [resizedImage] = resizeImage_replication(double(resizedImage), 10);
    
    subplot(1,2,2);imshow(uint8(resizedImage));title("Resize Back");
    
    imwrite(uint8(resizedImage),filename);
end


