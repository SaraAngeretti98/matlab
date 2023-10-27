clear all;
close all;

myimagehorse = imread("..\Lab1\horse.jpg");
myhHorse = myhistogram(myimagehorse);
mychHorse = mycumulativehist(myimagehorse);
myeqhHorse = equalize_image(myimagehorse);

myimageclouds = imread("..\Lab1\clouds.JPG");
myhClouds= myhistogram(myimageclouds);
mychClouds= mycumulativehist(myimageclouds);

myimagefamily = imread("..\Lab1\family.jpg");
myhFamily= myhistogram(myimagefamily);
mychFamily= mycumulativehist(myimagefamily);

figure(1),
subplot(4,3,1), imshow(myimagehorse), title("Original image");
subplot(4,3,4), histeq(myimagehorse), title("MatLab Eq Image");
subplot(4,3,7), bar([0:255], myhHorse), title("My Normalized Histogram");
subplot(4,3,10), bar([0:255], mychHorse), title("My Cumulative Histogram");

subplot(4,3,2), imshow(myimageclouds), title("Original image");
subplot(4,3,5), histeq(myimageclouds), title("MatLab Eq Image");
subplot(4,3,8), bar([0:255], myhClouds), title("My Normalized Histogram");
subplot(4,3,11), bar([0:255], mychClouds), title("My Cumulative Histogram");

subplot(4,3,3), imshow(myimagefamily), title("Original image");
subplot(4,3,6), histeq(myimagefamily), title("MatLab Eq Image");
subplot(4,3,9), bar([0:255], myhFamily), title("My Normalized Histogram");
subplot(4,3,12), bar([0:255], mychFamily), title("My Cumulative Histogram");


figure(2),
subplot(2,3,1), imshow(myimagehorse), title("Original image");
subplot(2,3,2), imshow(out_eqim), title("My Eq Image");
subplot(2,3,3), histeq(myimagehorse), title("MatLab Eq Image");
subplot(2,3,4), bar([0:255], myhHorse), title("My Normalized Histogram");
subplot(2,3,5), bar([0:255], mychHorse), title("My Cumulative Histogram");


function out_hist = myhistogram(image)
    out_hist = zeros(256,1);
    for k = 1:256
        out_hist(k) = sum(image(:) == (k-1));
    end
    out_hist = out_hist/(size(image,1)*size(image,2));
end

function out_cumhist = mycumulativehist(image)
    norm_hist = myhistogram(image);
    out_cumhist = zeros(256,1);
    out_cumhist(1) = norm_hist(1);
    for k = 2:256
        out_cumhist(k) = out_cumhist(k-1) + norm_hist(k);
    end
end

function out_eqim = equalize_image(image)
    eq_image = image;
    chist = mycumulativehist(image);
    for k = 1:256
        eq_image(k) = 255*chist(k)+chist(k-1);
    end
    out_eqim = eq_image;
end