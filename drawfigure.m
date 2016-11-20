function draw = drawfigure(Stage)
% 测试数据矩阵大小
stagesize = size(Stage);
% 得到0的下标
[col0,row0] = ind2sub(stagesize,find(Stage==0));
% 得到1的下标
[col1,row1] = ind2sub(stagesize,find(Stage==1));
% 得到2的下标
[col2,row2] = ind2sub(stagesize,find(Stage==2));
% 得到3的下标
[col3,row3] = ind2sub(stagesize,find(Stage==3));
% 一次作散点图
% figure, plot(col1,row1,'rs',col2,row2,'bo');
% hold住后分4次做散点图
hold on;
draw=scatter(col0,row0,'b');
draw=scatter(col1,row1,'filled','b'); 
draw=scatter(col2,row2,'filled','g');
draw=scatter(col3,row3,'filled','k'); 
view(90,90);
end

