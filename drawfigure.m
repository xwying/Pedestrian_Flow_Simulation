function draw = drawfigure(Stage)
% �������ݾ����С
stagesize = size(Stage);
% �õ�0���±�
[col0,row0] = ind2sub(stagesize,find(Stage==0));
% �õ�1���±�
[col1,row1] = ind2sub(stagesize,find(Stage==1));
% �õ�2���±�
[col2,row2] = ind2sub(stagesize,find(Stage==2));
% �õ�3���±�
[col3,row3] = ind2sub(stagesize,find(Stage==3));
% һ����ɢ��ͼ
% figure, plot(col1,row1,'rs',col2,row2,'bo');
% holdס���4����ɢ��ͼ
hold on;
draw=scatter(col0,row0,'b');
draw=scatter(col1,row1,'filled','b'); 
draw=scatter(col2,row2,'filled','g');
draw=scatter(col3,row3,'filled','k'); 
view(90,90);
end

