function [outImage,T] = histEqualization(input_image)
    [M,N] = size(input_image);
    S = zeros(1,256,"single");
    image = zeros(M,N,"uint8");
    [hist_temp] = imageHist(input_image);
    hist_temp = hist_temp/single(M*N);
    for i = 1:256
        if i == 1
            S(i) = hist_temp(i); 
        else
            S(i) = S(i-1) + hist_temp(i);
        end
    end
    S = S * 255;
    for i = 1:M
        for j = 1:N
            index = uint8(input_image(i,j));
            image(i,j) = round(S(index+1),0);
        end
    end
    outImage = image;
    T = S;
end

