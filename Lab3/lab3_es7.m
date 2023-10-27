clear all;
close all;

im = im2double(imread('mondrian.jpg'));

gray = rgb2gray(im);

ep = edge(gray, "prewitt");

es = edge(gray, "sobel");

es25 = edge(gray, "sobel", 0.025);

ec = edge(gray, "canny");

figure,
subplot(2,3,1), imshow(im), title('A colori')
subplot(2,3,2), imshow(gray), title('B&N')
subplot(2,3,3), imshow(ep), title('Prewitt')
subplot(2,3,4), imshow(es), title('Sobel automatico')
subplot(2,3,5), imshow(es25), title('Sobel 0.025')
subplot(2,3,6), imshow(ec), title('Canny')