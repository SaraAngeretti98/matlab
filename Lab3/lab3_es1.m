clear all;
close all;

im = imread("lawrence2.png");

imF3 = medfilt2(im, [3,3]);
imF5 = medfilt2(im, [5,5]);
imF7 = medfilt2(im, [7,7]);
imF27 = medfilt2(im, [27,27]);

figure,
subplot(2,2,1), imshow(im), title("Originale");
subplot(2,2,2), imshow(imF3), title("Filtro 3x3");
subplot(2,2,3), imshow(imF5), title("Filtro 5x5");
subplot(2,2,4), imshow(imF7), title("Filtro 7x7");

