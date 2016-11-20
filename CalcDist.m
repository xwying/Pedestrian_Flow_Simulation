function Dist = CalcDist(x,y)
%该函数输入当前元胞的坐标X，Y，返回该元胞及周围共9个元胞与最近出口的距离值
global Areasize;
global area;
Dist=zeros(3,3);
[ExitX,ExitY] = ind2sub(Areasize,find(area==2));%计算所有出口点的坐标
%计算周围8个点及自身9个点到最近出口的距离，存在数组Dist中。
%编号及坐标轴示意，5为自身坐标(x,y)
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

