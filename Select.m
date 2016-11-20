function selectcell = Select( sp )
%输入存有各点概率的矩阵，本函数通过轮盘赌的方式选中下一个前往的元胞。
for i=2:9, %生成轮盘
    sp(i)=sp(i)+sp(i-1);
end
t=rand();%产生随机数

for i=1:9,
    if (sp(i)>t) %选中目标则跳出
    break;
    end
end
selectcell = i;%返回选中元胞的索引
end