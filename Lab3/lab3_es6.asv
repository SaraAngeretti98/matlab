clear all;
close all;

im = imread('lanterns.png');

im1 = rgb2ycbcr(im);
im0 = im1;
im2 = im1;

G = fspecial("gaussian",33,6);

%solo canale Y
im1(:,:,1) = imfilter(im1(:,:,1),G);

%solo canale Cr
im2(:,:,3) = imfilter(im2(:,:,3),G);

out1 = ycbcr2rgb(im1);
out2 = ycbcr2rgb(im2);

figure,
subplot(2,2,1), imshow(im), title('Originale');
subplot(2,2,3), imshow(out1), title('Y Filtered');
subplot(2,2,4), imshow(out2), title('Cr Filtered');
