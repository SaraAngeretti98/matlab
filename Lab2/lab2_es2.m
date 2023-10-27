close all;
clear all;

cat0 = im2double(imread("cat.jpg"));

%immagini filtrate
F5 = fspecial("average",5);
cat5 = imfilter(cat0,F5);

F11 = fspecial("average",11);
cat11 = imfilter(cat0,F11);

F21 = fspecial("average",21);
cat21 = imfilter(cat0,F21);

%immagini differenze
d5  = abs(cat0-cat5);
d11 = abs(cat0-cat11);
d21 = abs(cat0-cat21);

figure,
subplot(3,3,1),imshow(cat0), title("Originale");
subplot(3,3,4),imshow(cat5), title("Filtro 5x5");
subplot(3,3,5),imshow(cat11), title("Filtro 11x11");
subplot(3,3,6),imshow(cat21), title("Filtro 21x21");
subplot(3,3,7),imagesc(d5), axis image, title("Differenza 5x5");
subplot(3,3,8),imagesc(d11), axis image, title("Differenza 11x11");
subplot(3,3,9),imagesc(d21), colorbar, axis image, title("Differenza 21x21");

