clc; clear; close all;

A = xlsread("附件1.xlsx");

for i = 1:10 %画图
    x = A(:, 1);
    y = A(:, i + 1);
    figure(i);
    plot(x, y);
    xlabel(['样本序号',num2str(i)]);
    ylabel(['管道', num2str(i), '温度（℃）']);
end

mean = mean(A(:, 2:11), 1) %均值
var = var(A(:, 2:11), 1) %方差
std = sqrt(var) %标准差
max = max(A(:, 2:11))
min = min(A(:, 2:11))