clc; clear; close all;

A = xlsread("����1.xlsx");

for i = 1:10 %��ͼ
    x = A(:, 1);
    y = A(:, i + 1);
    figure(i);
    plot(x, y);
    xlabel(['�������',num2str(i)]);
    ylabel(['�ܵ�', num2str(i), '�¶ȣ��棩']);
end

mean = mean(A(:, 2:11), 1) %��ֵ
var = var(A(:, 2:11), 1) %����
std = sqrt(var) %��׼��
max = max(A(:, 2:11))
min = min(A(:, 2:11))