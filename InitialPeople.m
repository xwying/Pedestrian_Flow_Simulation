function InitialCell = InitialPeople(Stage,n)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here

Stagesize = size(Stage); %计算区域大小
Emptycell=find(Stage==0); %找出空元胞
RandIndex=Emptycell(randperm(numel(Emptycell),n)); %随机取出n个位置用于存放人员
Stage(RandIndex) = 1;
InitialCell = Stage;
end

