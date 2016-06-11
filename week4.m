I = imread('frame1.jpg');
I1 = im2double(I);
I = imread('frame2.jpg');
I2 = im2double(I);

B = I2(65:96, 81:112);

lowest_err = -1;
lowest_i = 0;
lowest_j = 0;
for i=1:(288-32)
    i
    for j=1:(352-32)
        error = mae(I1(i:i+31, j:j+31) - B);
        if (lowest_err < 0) | (error < lowest_err)
            lowest_err = error;
            lowest_i = i;
            lowest_j = j;
        end
    end
end

lowest_err
lowest_i
lowest_j