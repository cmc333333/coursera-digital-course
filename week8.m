I = imread('Cameraman256.bmp');
I_vec = reshape(I, 1, []);
I_len = length(I_vec);
counts = zeros(256, 1);
for i = 1:I_len,
    idx = I_vec(i) + 1;
    counts(idx) = counts(idx) + 1;
end
entropy = 0;
for i = 1:256,
    prob = counts(i)/I_len;
    if prob > 0
        entropy = entropy - prob * log2(prob);
    end
end

entropy