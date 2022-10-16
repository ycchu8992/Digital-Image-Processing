function [hist_vector] = imageHist(input_image)
    hist_vector_temp = zeros(1,256,"uint64");
    [M,N] = size(input_image);
    for i = 1:M
        for j = 1:N
            index = uint8(input_image(i,j));
            hist_vector_temp(index+1) = hist_vector_temp(index+1) + 1;
        end
    end
    hist_vector = single(hist_vector_temp);
end

