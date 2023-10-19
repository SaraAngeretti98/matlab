close all;
clear all;

im = imread("Lab1\unequalized.jpg");

uneq = im2double(im);

gamma = 0.5;

eq = histeq(im); %uneq.^gamma;

figure,
subplot(1,2,1), imshow(uneq);
subplot(1,2,2), imshow(eq);