clear;

close all;

input_image = imread("Fig.tif");

[hist_vector] = imageHist(input_image);

[outImage,T] = histEqualization(input_image);

[hist_vector2] = imageHist(outImage);

graph_fig = figure(1);
plot(hist_vector, LineWidth = 1,Color="red");
title("Histogram of Original");
img = frame2im(getframe(graph_fig));
imwrite(img,"Histogram of Original.jpg");

graph_fig = figure(2);
stairs(T,LineWidth = 1,Color="blue");
title("Histogram equalization transform function");
img = frame2im(getframe(graph_fig));
imwrite(img,"Histogram equalization transform function.jpg");

graph_fig = figure(3);
plot(hist_vector2,LineWidth = 1,Color="green");
title("Histogram after equalization");
img = frame2im(getframe(graph_fig));
imwrite(img,"Histogram after equalization.jpg");


figure(4);
subplot(1,2,1);
imshow(input_image);
title("Image of Original");
imwrite(input_image,"Image of Original.jpg");

subplot(1,2,2);
imshow(outImage);
title("Image after equalization");
imwrite(outImage,"Image after equalization.jpg");

