function [out] = histEqualization(input_image)

    [M,N] = size(input_image);

    S = zeros(256,"single");
    
    [hist_temp] = imageHist(input_image);

    hist_temp = (hist_temp/single(M*N));
    
    for i = 1:256
        if i == 1
            S(i) = hist_temp(i); 
        else
            S(i) = S(i-1) + hist_temp(i);
        end
    end

    out = S * 255;

end

