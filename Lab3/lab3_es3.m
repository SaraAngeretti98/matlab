clear all;
close all;

building = imread("building.jpg");
R = building(:,:,1);
G = building(:,:,2);
B = building(:,:,3);

ycbcr = rgb2ycbcr(building);
Y = ycbcr(:,:,1);
CB = ycbcr(:,:,2);
CR = ycbcr(:,:,3);

hsv = rgb2hsv(building);
H = hsv(:,:,1);
S = hsv(:,:,2);
V = hsv(:,:,3);

figure,
subplot(4,3,1), imshow(building), title('Original')
subplot(4,3,2), imshow(ycbcr), title('YCbCr')
subplot(4,3,3), imshow(hsv), title('HSV')
subplot(4,3,4), imshow(R), title('R')
subplot(4,3,5), imshow(G), title('G')
subplot(4,3,6), imshow(B), title('B')
subplot(4,3,7), imshow(Y), title('Y')
subplot(4,3,8), imshow(CB), title('Cb')
subplot(4,3,9), imshow(CR), title('Cr')
subplot(4,3,10), imshow(H), title('H')
subplot(4,3,11), imshow(S), title('S')
subplot(4,3,12), imshow(V), title('V')

