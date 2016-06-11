I = imread('Cameraman256.bmp');

imwrite(I, 'Cameraman256-week9.jpg', 'jpg', 'quality', 10);

Compressed = imread('Cameraman256-week9.jpg');

I = im2double(I);
Compressed = im2double(Compressed);

psnr(Compressed, I)
