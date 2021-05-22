data = xlsread('附件2', 'sheet1', 'B3:EX5002');
%变量1的异常值处理

[m, n] = size(data);

for i = 1:n
    sigma_ = std(data, 0, 1); %每列的标准差
    mean_ = mean(data, 1); %每列的平均值
    sup_ = mean_(i) + 3 * sigma_(i); %确定上限区间
    inf_ = mean_(i) - 3 * sigma_(i); %确定下限区间

    for j = 1:m

        if data(j, i) < inf_ || data(j, i) > sup_
            data(j, i) = mean_(i);
        end

    end

end

xlswrite('附件2新.xls', data, 'sheet1', 'a1')
