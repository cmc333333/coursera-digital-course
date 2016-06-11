I = imread('noisy.jpg');
I = im2double(I);
Filt1 = medfilt2(I);
Filt2 = medfilt2(Filt1);
imshow(Filt2);

O = imread('noisy_original.jpg');
O = im2double(O);

psnr(I, O)
psnr(Filt1, O)
psnr(Filt2, O)