data = xlsread('����2', 'sheet1', 'B3:EX5002');
%����1���쳣ֵ����

[m, n] = size(data);

for i = 1:n
    sigma_ = std(data, 0, 1); %ÿ�еı�׼��
    mean_ = mean(data, 1); %ÿ�е�ƽ��ֵ
    sup_ = mean_(i) + 3 * sigma_(i); %ȷ����������
    inf_ = mean_(i) - 3 * sigma_(i); %ȷ����������

    for j = 1:m

        if data(j, i) < inf_ || data(j, i) > sup_
            data(j, i) = mean_(i);
        end

    end

end

xlswrite('����2��.xls', data, 'sheet1', 'a1')
