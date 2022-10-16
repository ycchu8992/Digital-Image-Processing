function [output] = spatialFiltering(input, mask)
    [M,N] = size(input);
    temp = zeros(M,N,"uint8");
    image = single(padarray(input,[1,1],0,'both'));
    X = [0,0,1;0,1,0;1,0,0];
    w = single(X*mask*X);
    for i = 2:(M+1)
        for j = 2:(N+1)
            Y = [image(i-1,j),image(i-1,j),image(i-1,j+1);image(i,j-1),image(i,j),image(i,j+1);image(i+1,j-1),image(i+1,j),image(i+1,j+1)];
            temp(i-1,j-1) = sum(sum(w .* Y));
        end
    end
    output = temp;
end

