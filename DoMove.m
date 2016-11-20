function DoMove( x,y,SelectCell)
global D;
global D_decrease;
global area;
%该函数用于将目标进行移动，同时对动态场及区域进行操作。
[targetX,targetY] = ind2sub([3,3],SelectCell); 
targetX=targetX-2;
targetY=targetY-2;%将索引号转换为相对当前元胞的坐标
%相对坐标示意
%     -1   0   1
%-1 | 1 | 4 | 7 |
% 0 | 2 | C | 8 |
% 1 | 3 | 6 | 9 |

%======对区域操作======
if((targetX~=0) || (targetY~=0)) %若目标不是原地不动
    area(x,y)=0;%原区域设为无人
    if (area(x+targetX,y+targetY)~=2) %若目标不是出口
        area(x+targetX,y+targetY)=1; %移动到目标元胞
    end
end
D = D - D_decrease;;%动态场随时间衰减衰减
D(x,y)=D(x,y)+1+D_decrease;%更新动态场
D(find(D<1))=1;%若小于1则置1
end
