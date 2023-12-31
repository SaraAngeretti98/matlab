clear all;
close all;

face = imread('face-noisy.png');

%spacchetto nei tre canali
R = face(:,:,1);
G = face(:,:,2);
B = face(:,:,3);

GF = fspecial('gaussian',7,1.2);

R2 = imfilter(R,GF);
G2 = imfilter(G,GF);
B2 = imfilter(B,GF);

%ricostruisco l'immagine concatenando i tre canali
face2 = cat(3,R2,G2,B2);

face3 = imfilter(face,GF);

figure,
subplot(1,3,1), imshow(face), title('Originale')
subplot(1,3,2), imshow(face2), title('Per canali')
subplot(1,3,3), imshow(face3), title('Immagine intera')


