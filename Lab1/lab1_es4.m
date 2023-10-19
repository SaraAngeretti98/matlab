close all;
clear all;

horse = imread("Lab1\horse.jpg");
nrg = imread("Lab1\nrg.jpg");
family = imread("Lab1\family.jpg");

%horse_hist = imhist(horse);
%nrg_hist = imhist(nrg);
%family_hist = imhist(family);

figure(1),
subplot(1,2,1), imshow(horse);
%subplot(1,2,2), plot(horse_hist);
%subplot(1,2,2), bar(horse_hist);
subplot(1,2,2), imhist(horse);

figure(2),
subplot(1,2,1), imshow(nrg);
subplot(1,2,2), imhist(nrg);

figure(3),
subplot(1,2,1), imshow(family);
subplot(1,2,2), imhist(family);

