close all;
clear all;

im = im2double(imread('contrast.jpg'));

crop = im(360:419,1:505);

imhist(crop);

%calcoliamo la media dei valori della regione crop
media = mean(crop(:));
%deviazione standard
devstd = std(crop(:));
%creo la soglia, con la somma perché voglio i valori di là qualsiasi cosa
%voglia dire
%k = 3
T = media + 3 * devstd;

%due maschere
light = im > T;
dark = (im <= T);

pix_dark = im.*dark;
pix_light = im.*light;

%gamma 
gamma_dark = pix_dark.^0.5;
gamma_light = pix_light.^1.5;

out = gamma_dark + gamma_light;

figure,
subplot(1,2,1), imshow(im), title("Original");
subplot(1,2,2), imshow(out), title("Processed");
