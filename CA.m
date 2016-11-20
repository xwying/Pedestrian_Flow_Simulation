global Areasize; %全局变量区域大小
global area; %
global D;%动态场
global D_decrease; %动态场衰减系数
global para_s;%区域熟悉程度，10表示非常熟悉
global para_a; % 心里紧急程度，5表示适中

%=======参数设置========
timestep=0;%初始化时间
D_decrease = 0.3;
para_s=10;
para_a=6;
select_method=0; %选择路径方式：0=轮盘赌（默认），1=直接选择概率最大路径
n=800; %车内总人数
OriArea=Platform1;%选择区域
EmptyFlag=0;%疏散完毕标志
fig=0;
%=====================

%=====初始化区域======
%area=InitialPeople(OriArea,n);%初始化，将所有人员随机分布到区域中,在有入口的仿真中不需要
area=OriArea;%有入口的仿真中不需要初始化人员分布
%==================

EntryPosition=find(area==4);%读取入口点坐标
area(EntryPosition)=0;%将入口变为可行走点
Areasize=size(area);%计算区域大小
D=ones(Areasize);%生成与区域相同大小的动态场

figure;
imh=drawfigure(area);%创建句柄绘制初始区域图像

%主循环
while(EmptyFlag~=1),%区域内还有人时
    %=========带入口的区域输入人流==========
    if (n>0), %车内还有人时
        n_input=0;   
        for i = 1:numel(EntryPosition),
            if (area(EntryPosition(i)) == 0)%当该入口无人占据时
                area(EntryPosition(i)) = 1; %输入一个人
                n_input = n_input + 1; 
            end
        end
    end
    n=n-n_input;%剩余人数
    %===============================
    IndexPeople=find(area==1);%获取所有为1的元胞（有人）的索引号
    ActOrder=IndexPeople(randperm(numel(IndexPeople)));%随机打乱索引数组作为动作顺序
    for i = 1:numel(ActOrder),
        [x,y]=ind2sub(Areasize,ActOrder(i));%计算当前点的坐标
        Probability=Calcprob(x,y);%计算所有可能进入的格子的概率
        if (select_method==0)
            SelectCell=Select(Probability);%轮盘赌
        else if(select_method==1)
            SelectCell=SelectBest(Probability);%直接选择最佳的格子
            end
        end
        DoMove(x,y,SelectCell);%进行移动操作
    end
    IndexPeople = 0;
    ActOrder=0;
    timestep=timestep+1;
    
    %绘制动画
    cla(imh);
    imh=drawfigure(area);
    pause(0.001);
    
   % if  (mod(timestep,30)==0)
    %    figure;
    %    drawfigure(area);
    %end

    if (sum(area==1)==0)%若区域已疏散完毕
        EmptyFlag = 1;%结束循环
    end
end