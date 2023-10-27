close all;
clear all;

im = im2double(imread("running.png"));

%filtro identità, non fa niente
F1 = zeros(5,5); F1(3,3) = 1;

F2 = zeros(5,5); F2(5,3) = 1;

F3 = zeros(5,5); F3(1,1) = 0.5; F3(5,5) = 0.5;

im1 = imfilter(im,F1);
im2 = imfilter(im,F2);
im3 = imfilter(im,F3);

figure,
subplot(1,3,1), imshow(im1), title('filtro1');
subplot(1,3,2), imshow(im2), title('filtro2');
subplot(1,3,3), imshow(im3), title('filtro3');