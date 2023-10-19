clear all;
close all;

myimagehorse = imread("..\Lab1\horse.jpg");
myhHorse = myhistogram(myimagehorse);
mychHorse = mycumulativehist(myimagehorse);

myimageclouds = imread("..\Lab1\clouds.JPG");
myhClouds= myhistogram(myimageclouds);
mychClouds= mycumulativehist(myimageclouds);

myimagefamily = imread("..\Lab1\family.jpg");
myhFamily= myhistogram(myimagefamily);
mychFamily= mycumulativehist(myimagefamily);

figure,
subplot(3,3,1), imshow(myimagehorse);
subplot(3,3,4), bar([0:1:255], myhHorse), title("My Normalized Histogram");
subplot(3,3,7), bar([0:1:255], mychHorse), title("My Cumulative Histogram");

subplot(3,3,2), imshow(myimageclouds);
subplot(3,3,5), bar([0:1:255], myhClouds), title("My Normalized Histogram");
subplot(3,3,8), bar([0:1:255], mychClouds), title("My Cumulative Histogram");

subplot(3,3,3), imshow(myimagefamily);
subplot(3,3,6), bar([0:1:255], myhFamily), title("My Normalized Histogram");
subplot(3,3,9), bar([0:1:255], mychFamily), title("My Cumulative Histogram");

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
