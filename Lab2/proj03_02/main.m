clear;

close all;

%lower camel case for function
%snake case for variable

input_image = imread("Fig.tif");

posX = zeros(256,"single");

for i = 1:256
    posX(i) = i-1;
end

[hist_vector] = imageHist(input_image);

[hist_equal] = histEqualization(input_image);


figure(1);

subplot(1,1,1);imshow(input_image);title("Original");

figure(2);
plot(hist_vector,LineWidth = 1,Color="red");
title("Historam of Original");

figure(3);
stairs(hist_equal,LineWidth = 1,Color="blue");
title("Histogram after equalization");