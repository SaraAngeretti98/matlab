close all;

im1 = imread('Lab1\optical.jpg');

im2 = 255 - im1;

figure;
subplot(1,2,1);
imshow(im1), title('Immagine originale');

subplot(1,2,2);
imshow(im2), title('Immagine negativa');

im3 = im1 + im2;
figure;
imshow(im3);