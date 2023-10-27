clear all;
close all;

glamor = im2double(imread("glamor.jpg"));

G = fspecial('gaussian', 21, 4);

filtered = imfilter(glamor, G);

out = glamor + filtered;%*0.5;

figure, 
subplot(1,3,1), imshow(glamor), title("Original");
subplot(1,3,2), imshow(filtered), title("Filtered");
subplot(1,3,3), imshow(out), title("Somma");

