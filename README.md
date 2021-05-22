异常数据处理
是否有异常数据？
有异常数据
无异常数据
保持原样
空值
超过数据正常范围
空值数量
极少
大量空值
将其改成当前列的平均值
舍弃一整列变量

st=>start: 开始变量分析
e1=>end: 将缺失值赋值为当前列平均值
e2=>end: 舍弃整一列
baochi=>operation: 保持原样
kongzhi=>condition: 空值数量|approved
yichang=>condition: 是否有异常数据?
leixing=>condition: 异常数据类型

st->yichang
yichang(yes@有异常数据,left)->leixing
yichang(no@无异常数据,right)->baochi
leixing(yes@超过正常数据范围,left)->e1
leixing(no@空值,right)->kongzhi
kongzhi(yes@极少, left)->e1
kongzhi(no@大量空值,right)->e2

st=>start: 开始变量分析
e1=>end: 将缺失值赋值为当前列平均值
e2=>end: 舍弃整一列
baochi=>operation: 保持原样
kongzhi=>condition: 空值数量|approved
yichang=>condition: 是否有异常数据?
leixing=>condition: 异常数据类型

st->yichang
yichang(yes@有异常数据)->leixing
yichang(no@无异常数据)->baochi
leixing(yes@超过正常数据范围)->e1
leixing(no@空值)->kongzhi
kongzhi(yes@极少)->e1
kongzhi(no@大量空值)->e2