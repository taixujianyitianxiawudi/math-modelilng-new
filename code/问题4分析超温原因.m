%%变换量为后10i个数据的平均值-前10i个数据的平均值
xuhao = zeros(20, 111);
delta_Y_down = zeros(10, 111);

for i = 1:20
    a = 3172;
    X_before_10i = X(a - i * 10:a, 1:111);
    X_after_10i = X(a:a + i * 10, 1:111);
    X_before_10i_average = mean(X_before_10i);
    X_after_10i_average = mean(X_after_10i);
    delta_X = X_after_10i_average - X_before_10i_average;
    b10 = B(10, 1:111); %b10各系数
    delta_Y = abs(delta_X .* b10);
    [delta_Y_down(i, :), xuhao(i, :)] = sort(delta_Y, 2, 'descend'); %delta_Y降序排序
end
