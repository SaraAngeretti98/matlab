clear all;
close all;

balloons = imread('balloons_noisy.png');

%spacchetto nei tre canali
R = balloons(:,:,1);
G = balloons(:,:,2);
B = balloons(:,:,3);

%bidimensionale
RR = medfilt2(R,[5,5]);
GG = medfilt2(G,[5,5]);
BB = medfilt2(B,[5,5]);

out = cat(3,RR,GG,BB);

%tridimensionale
out2 = medfilt3(balloons, [5,5,1]);
figure,
subplot(2,2,1), imshow(balloons), title('Originale')
subplot(2,2,3), imshow(out), title('Filtro mediano 2D')
subplot(2,2,4), imshow(out2), title('Filtro mediano 3D')


