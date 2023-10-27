close all;
clear all;

cat0 = im2double(imread("cat.jpg"));

%immagini filtrate
F3 = fspecial("gaussian",3,0.5);
cat3 = imfilter(cat0,F3);

F5 = fspecial("gaussian",5,0.5);
cat5 = imfilter(cat0,F5);

F7 = fspecial("gaussian",7,0.5);
cat7 = imfilter(cat0,F7);

F9 = fspecial("gaussian",9,0.5);
cat9 = imfilter(cat0,F9);

%immagini differenze
d3 = abs(cat0-cat3);
d5 = abs(cat0-cat5);
d7 = abs(cat0-cat7);
d9 = abs(cat0-cat9);

figure,
subplot(2,4,1),imshow(cat0), title("Originale");
subplot(2,4,5),imagesc(d3), axis image, title("d3");
subplot(2,4,6),imagesc(d5), axis image, title("d5");
subplot(2,4,7),imagesc(d7), axis image, title("d7");
subplot(2,4,8),imagesc(d9), axis image, title("d9");

