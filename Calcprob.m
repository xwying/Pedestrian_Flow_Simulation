function Prob = Calcprob(x,y)
%该函数用于计算元胞（x,y）及周围共9个点的移动概率

global area; 
global D;%动态场
global para_s;
global para_a;

Rn = CalcDist(x,y);%计算视野范围内每一点距离出口点的距离
B1 = area(x-1:x+1,y-1:y+1);%提取子矩阵
B1(B1==3) = 1; %障碍物视为有人占据的格子
B1(B1==2) = 0; %出口视为无人占据的格子
B1(5) = 0; %自己的位置视为无人占据，即可以留在原地
Bn = ones(3,3) - B1;%将矩阵取非，有人占据则该概率为0，无人则为1
Dn=D(x-1:x+1,y-1:y+1);%提取视野范围内的动态场
Rmax=max(max(Rn));%视野范围内元胞离出口的最大值

Pn = Bn .* Dn .*((Rmax - Rn).*10 + para_s).^para_a;%计算概率
Prob = Pn / sum(sum(Pn)); %将概率归一化

end