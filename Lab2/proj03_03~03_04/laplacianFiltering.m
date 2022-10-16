function [output, scaledLaplacian] = laplacianFiltering(input, laplacianMask, scale)
    [temp] = spatialFiltering(input, laplacianMask);
    scaledLaplacian  = single(scale) * single(temp);
    output = single(input) + scaledLaplacian;
end

