clear all;
close all;

moon = im2double(imread("Lab1\moon.jpg"));
clouds = im2double(imread("Lab1\clouds.JPG"));

clouds_resized = imresize(clouds, size(moon));

ims = moon + clouds_resized;
imd = moon - clouds_resized;

%figure,imshow(ims),title("Somma");
%figure,imshow(imd),title("Differenza");
