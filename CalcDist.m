function Dist = CalcDist(x,y)
%�ú������뵱ǰԪ��������X��Y�����ظ�Ԫ������Χ��9��Ԫ����������ڵľ���ֵ
global Areasize;
global area;
Dist=zeros(3,3);
[ExitX,ExitY] = ind2sub(Areasize,find(area==2));%�������г��ڵ������
%������Χ8���㼰����9���㵽������ڵľ��룬��������Dist�С�
%��ż�������ʾ�⣬5Ϊ��������(x,y)
%----------->y
%| |1|4|7|
%| |2|5|8|
%| |3|6|9|
%|
%v
%x

Dist(1) = min(sqrt((x-1-ExitX).^2+(y-1-ExitY).^2));
Dist(2) = min(sqrt((x-ExitX).^2+(y-1-ExitY).^2));
Dist(3) = min(sqrt((x+1-ExitX).^2+(y-1-ExitY).^2));
Dist(4) = min(sqrt((x-1-ExitX).^2+(y-ExitY).^2));
Dist(5) = min(sqrt((x-ExitX).^2+(y-ExitY).^2));
Dist(6) = min(sqrt((x+1-ExitX).^2+(y-ExitY).^2));
Dist(7) = min(sqrt((x-1-ExitX).^2+(y+1-ExitY).^2));
Dist(8) = min(sqrt((x-ExitX).^2+(y+1-ExitY).^2));
Dist(9) = min(sqrt((x+1-ExitX).^2+(y+1-ExitY).^2));
end

