function InitialCell = InitialPeople(Stage,n)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here

Stagesize = size(Stage); %���������С
Emptycell=find(Stage==0); %�ҳ���Ԫ��
RandIndex=Emptycell(randperm(numel(Emptycell),n)); %���ȡ��n��λ�����ڴ����Ա
Stage(RandIndex) = 1;
InitialCell = Stage;
end

