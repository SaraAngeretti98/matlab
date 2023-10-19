close all;
clear all;

nrg = imread("Lab1\nrg.jpg");

nrg_eq = histeq(nrg);

figure(1),
subplot(1,2,1), imshow(nrg);
subplot(1,2,2), imhist(nrg);

figure(2),
subplot(1,2,1), imshow(nrg_eq);
subplot(1,2,2), imhist(nrg_eq);