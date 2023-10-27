clear all;
close all; 

ron_corridoio= imread("ron_corridoio_buio.jpg");
ron_corridoio_gray = rgb2gray(ron_corridoio);
%ron_salotto = im2double(imread("ron_salotto.jpg"));

crop = ron_corridoio(1:100,1:100);

dev = std(ron_corridoio);
media = mean(crop(:));
%soglia 
T = media + 3*dev;

%maschere
light = ron_corridoio > T;
dark = ron_corridoio <= T;

ron_dark= ron_corridoio.*dark;
ron_light = ron_corridoio.*light;

figure,
subplot(1,2,1), imshow(ron_corridoio);
subplot(1,2,2), histeq(ron_corridoio);
