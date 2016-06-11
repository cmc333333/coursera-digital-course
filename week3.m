I = imread('building.jpg');
Iscaled = im2double(I);

lowpass = [1/9, 1/9, 1/9];
lowpass = [lowpass; lowpass; lowpass];

filtered = imfilter(Iscaled, lowpass, 'replicate');

downsampled = filtered(1:2:end, 1:2:end);

recreated = zeros(359, 479);
for i=1:2:359,
    for j=1:2:479,
        recreated(i, j) = downsampled((i+1)/2, (j+1)/2);
    end
end

convolver = [0.25,0.5,0.25;0.5,1,0.5;0.25,0.5,0.25];
convolved = imfilter(recreated, convolver);

psnr(convolved, Iscaled)