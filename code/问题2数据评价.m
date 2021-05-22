%读取已经处理完毕的数据
fujian1 = xlsread('附件1', 'sheet1', 'B2:K5001');
fangcha = var(fujian1(:, 1:10), 1);
zuidazhi = max(fujian1(:, 1:10));

for i = 1:10

    if zuidazhi(i) > 445;
        zuidazhi(i) = 1000;
    end

end

x = [fangcha' zuidazhi'];

A = max(x) - x;

[n, m] = size (A);
B = A ./ repmat (sum(A .* A).^0.5, n, 1);
disp ('Normalization matrix B = ')
disp (B);
D_P = sum ([(B - repmat (max(B), n, 1)).^2], 2).^0.5;
D_N = sum ([(B - repmat (min(B), n, 1)).^2], 2).^0.5;
w = D_N ./ (D_P + D_N);
disp (' 最综得分: ') %显示最后各管道得分
stand_w = w / sum(w); %标准化数据
[sorted_w, index] = sort (stand_w, 'descend') %从高到低将数据进行排列
