function [resizedImage] = resizeImage_bilinear(originalImage,scalingFactor)
    f = scalingFactor;
    [M,N,C] = size(originalImage);
    nM = floor(f*M);
    nN = floor(f*N);
    tempImage = zeros(nM,nN,C,'uint8');
    porX = (M-1)/(nM-1);
    porY = (N-1)/(nN-1);
    for x = 1:1:nM
        nx = round((x-1)*porX,3);
        x1 = floor(nx); % x1 是從零開始
        x2 = ceil(nx);
        dx = nx - x1;
        for y = 1:1:nN
            ny = round((y-1) * porY,3);
            y1 = floor(ny);
            y2 = ceil(ny);
            dy = ny - y1;
            if x1 == x2 && y1 ~= y2
                tempImage(x,y) = (1-dy) * originalImage(x1+1,y1+1) + dy * originalImage(x1+1,y2+1);
            elseif x1 ~= x2 && y1 == y2
                tempImage(x,y) = (1-dx) * originalImage(x1+1,y1+1) + dx * originalImage(x2+1,y1+1);
            elseif x1 == x2 && y1 == y2
                tempImage(x,y) = originalImage(x1+1,y1+1);
            else
                A = [x1 y1 x1*y1 1; x1 y2 x1*y2 1; x2 y1 x2*y1 1; x2 y2 x2*y2 1];
                %originakImage是i從1開始的matrix，但x1是從零開始的座標
                B = [originalImage(x1+1,y1+1) originalImage(x1+1,y2+1) originalImage(x2+1,y1+1) originalImage(x2+1,y2+1)];
                B = B';
                C = [nx ny nx*ny 1] * (A\B);
                tempImage(x,y) = ceil(C(1,1));
            end
        end
    end
    resizedImage = tempImage;
end

