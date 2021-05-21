S = xlsread('附件2', 'sheet1', 'B3:EX5002');
%变量1的异常值处理
bl1 = S;


[m, n] = size(bl1);
ave = mean(bl1); %均值
sigma = sqrt((bl1' - ave) * (bl1 - ave) / m); %标准差
fangcha = sigma^2; %方差
jicha = max(bl1) - min(bl1); %极差

sx = ave + 3 * sigma;
xx = ave - 3 * sigma;
ycz = [];
zcz = [];
s = 1;
s1 = 1;

for i = 1:m

    for j = 1:n

        if bl1(i, j) < xx || bl1(i, j) > sx
            ycz(i, j) = ave;
            ycz(s, 2) = i;
            s = s + 1;
        end

        if bl1(i, 1) < sx && bl1(i, 1) > xx
            zcz(s1, 1) = bl1(i, 1);
            zcz(s1, 2) = i;
            s1 = s1 + 1;
        end

    end

end

%xlswrite('fujian2 gai.xls', S, 'sheet1', 'a1')
