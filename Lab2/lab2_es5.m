clear all;
close all;

im1 = im2double(imread("lawrence1.png"));
im2 = im2double(imread("lawrence2.png"));

M = fspecial('average', 5);
G = fspecial('gaussian', 5, 0.8);

figure(1), 
subplot(2,2,1), imshow(im1), title("Original1");
subplot(2,2,3), imshow(imfilter(im1, M)), title("im1-M");
subplot(2,2,4), imshow(imfilter(im1, G)), title("im1-G");

figure(2),
subplot(2,2,1), imshow(im2), title("Original2");
subplot(2,2,3), imshow(imfilter(im2, M)), title("im2-M");
subplot(2,2,4), imshow(imfilter(im2, G)), title("im2-G");

