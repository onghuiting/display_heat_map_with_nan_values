

% This function displays matrix as heat map.
% NaN values are shown as black colour.
%
% Written by hui ting, 3 Aug 2023.


function display_heat_map_with_nan(img,max_dsply,quantization_level,title_str)

minv = -round(max_dsply/quantization_level);
maxv = max_dsply;

img(isnan(img)) = minv;

colormap_nan=[0 0 0;jet(quantization_level)];

figure;imshow(img,[minv maxv]);colormap(gca,colormap_nan);colorbar;
title(title_str);