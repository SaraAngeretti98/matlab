clear all;
close all;

alpha = 0.2;
out = moon*alpha + (1-alpha)*clouds_resized;
%figure,imshow(out);

T = 0.25;
mask_clouds = clouds_resized > T;
figure,imshow(mask_clouds);

moon_not_clouds = moon.*(1-mask_clouds);
figure,imshow(moon_not_clouds);

out = moon_not_clouds + clouds_resized;
figure,imshow(out);

