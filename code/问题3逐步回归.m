clc; clear; close all;
Y = xlsread('附件1.xlsx', 'sheet1', 'B2:K5001');
X = xlsread('附件2改.xls');

%%管道1
y = Y(:, 1); %第i列
[beta, se, pval, in1, stats] = stepwisefit(X, y)
%做逐步回归分析，其中se是标准误差、pval是p值、in为{0,1|0为删去,1为保留}

XX1 = []; %留下数组

for j = 1:size(in1, 2) %in1的列数

    if in1(j) == 1
        XX1 = [XX1, X(:, j)];
    end

end

XX1_ = [ones(size(y)), XX1];
[b1, bint1, r1, rint1, stats1] = regress(y, XX1_)

%%管道2
y = Y(:, 2);
[beta, se, pval, in2, stats] = stepwisefit(X, y)

XX2 = [];

for j = 1:size(in2, 2)

    if in2(j) == 1
        XX2 = [XX2, X(:, j)];
    end

end

XX2_ = [ones(size(y)), XX2];
[b2, bint2, r2, rint2, stats2] = regress(y, XX2_)

%%管道3
y = Y(:, 3);
[beta, se, pval, in3, stats] = stepwisefit(X, y)

XX3 = [];

for j = 1:size(in3, 2)

    if in3(j) == 1
        XX3 = [XX3, X(:, j)];
    end

end

XX3_ = [ones(size(y)), XX3];
[b3, bint3, r3, rint3, stats3] = regress(y, XX3_)

%%管道4
y = Y(:, 4);
[beta, se, pval, in4, stats] = stepwisefit(X, y)

XX4 = [];

for j = 1:size(in4, 2)

    if in4(j) == 1
        XX4 = [XX4, X(:, j)];
    end

end

XX4_ = [ones(size(y)), XX4];
[b4, bint4, r4, rint4, stats4] = regress(y, XX4_)

%%管道5
y = Y(:, 5);
[beta, se, pval, in5, stats] = stepwisefit(X, y)

XX5 = [];

for j = 1:size(in5, 2)

    if in5(j) == 1
        XX5 = [XX5, X(:, j)];
    end

end

XX5_ = [ones(size(y)), XX5];
[b5, bint5, r5, rint5, stats5] = regress(y, XX5_)

%%管道6
y = Y(:, 6);
[beta, se, pval, in6, stats] = stepwisefit(X, y)

XX6 = [];

for j = 1:size(in6, 2)

    if in6(j) == 1
        XX6 = [XX6, X(:, j)];
    end

end

XX6_ = [ones(size(y)), XX6];
[b6, bint6, r6, rint6, stats6] = regress(y, XX6_)

%%管道7
y = Y(:, 7);
[beta, se, pval, in7, stats] = stepwisefit(X, y)

XX7 = [];

for j = 1:size(in7, 2)

    if in7(j) == 1
        XX7 = [XX7, X(:, j)];
    end

end

XX7_ = [ones(size(y)), XX7];
[b7, bint7, r7, rint7, stats7] = regress(y, XX7_)

%%管道8
y = Y(:, 8);
[beta, se, pval, in8, stats] = stepwisefit(X, y)

XX8 = [];

for j = 1:size(in8, 2)

    if in8(j) == 1
        XX8 = [XX8, X(:, j)];
    end

end

XX8_ = [ones(size(y)), XX8];
[b8, bint8, r8, rint8, stats8] = regress(y, XX8_)

%%管道9
y = Y(:, 9);
[beta, se, pval, in9, stats] = stepwisefit(X, y)

XX9 = [];

for j = 1:size(in9, 2)

    if in9(j) == 1
        XX9 = [XX9, X(:, j)];
    end

end

XX9_ = [ones(size(y)), XX9];
[b9, bint9, r9, rint9, stats9] = regress(y, XX9_)

%%管道10
y = Y(:, 9);
[beta, se, pval, in10, stats] = stepwisefit(X, y)

XX10 = [];

for j = 1:size(in10, 2)

    if in10(j) == 1
        XX10 = [XX10, X(:, j)];
    end

end

XX10_ = [ones(size(y)), XX10];
[b10, bint10, r10, rint10, stats10] = regress(y, XX10_)

%%构造B
B = zeros(10, 153)

n = 2;

for j = 1:153 %b1排序

    if in1(j) == 1
        B(1, j) = b1(n);
        n = n + 1;
    else
        B(1, j) == 0;
    end

end

n = 2;

for j = 1:153 %b2排序

    if in2(j) == 1
        B(2, j) = b2(n);
        n = n + 1;
    else
        B(2, j) == 0;
    end

end

n = 2;

for j = 1:153 %b3排序

    if in3(j) == 1
        B(3, j) = b3(n);
        n = n + 1;
    else
        B(3, j) == 0;
    end

end

n = 2;

for j = 1:153 %b4排序

    if in4(j) == 1
        B(4, j) = b4(n);
        n = n + 1;
    else
        B(4, j) == 0;
    end

end

n = 2;

for j = 1:153 %b5排序

    if in5(j) == 1
        B(5, j) = b5(n);
        n = n + 1;
    else
        B(5, j) == 0;
    end

end

n = 2;

for j = 1:153 %b6排序

    if in6(j) == 1
        B(6, j) = b6(n);
        n = n + 1;
    else
        B(6, j) == 0;
    end

end

n = 2;

for j = 1:153 %b7排序

    if in7(j) == 1
        B(7, j) = b7(n);
        n = n + 1;
    else
        B(7, j) == 0;
    end

end

n = 2;

for j = 1:153 %b8排序

    if in8(j) == 1
        B(8, j) = b8(n);
        n = n + 1;
    else
        B(8, j) == 0;
    end

end

n = 2;

for j = 1:153 %b9排序

    if in9(j) == 1
        B(9, j) = b9(n);
        n = n + 1;
    else
        B(9, j) == 0;
    end

end

n = 2;

for j = 1:153 %b10排序

    if in10(j) == 1
        B(10, j) = b10(n);
        n = n + 1;
    else
        B(10, j) == 0;
    end

end

%%画图
for i = 1:10
    x = 2:153;
    y = B(i, :);
    plot(x, y);
    hold on
end
