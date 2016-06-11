I = imread('lena.gif');
Iscaled = im2double(I);

lowpass = [1/9, 1/9, 1/9];
lowpass = [lowpass; lowpass; lowpass];

filtered = imfilter(Iscaled, lowpass, 'replicate');

psnr(filtered, Iscaled)

lowpass2 = [1/25, 1/25, 1/25, 1/25, 1/25];
lowpass2 = [lowpass2; lowpass2; lowpass2; lowpass2; lowpass2];

filtered2 = imfilter(Iscaled, lowpass2, 'replicate');

psnr(filtered2, Iscaled)