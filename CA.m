global Areasize; %ȫ�ֱ��������С
global area; %
global D;%��̬��
global D_decrease; %��̬��˥��ϵ��
global para_s;%������Ϥ�̶ȣ�10��ʾ�ǳ���Ϥ
global para_a; % ��������̶ȣ�5��ʾ����

%=======��������========
timestep=0;%��ʼ��ʱ��
D_decrease = 0.3;
para_s=10;
para_a=6;
select_method=0; %ѡ��·����ʽ��0=���̶ģ�Ĭ�ϣ���1=ֱ��ѡ��������·��
n=800; %����������
OriArea=Platform1;%ѡ������
EmptyFlag=0;%��ɢ��ϱ�־
fig=0;
%=====================

%=====��ʼ������======
%area=InitialPeople(OriArea,n);%��ʼ������������Ա����ֲ���������,������ڵķ����в���Ҫ
area=OriArea;%����ڵķ����в���Ҫ��ʼ����Ա�ֲ�
%==================

EntryPosition=find(area==4);%��ȡ��ڵ�����
area(EntryPosition)=0;%����ڱ�Ϊ�����ߵ�
Areasize=size(area);%���������С
D=ones(Areasize);%������������ͬ��С�Ķ�̬��

figure;
imh=drawfigure(area);%����������Ƴ�ʼ����ͼ��

%��ѭ��
while(EmptyFlag~=1),%�����ڻ�����ʱ
    %=========����ڵ�������������==========
    if (n>0), %���ڻ�����ʱ
        n_input=0;   
        for i = 1:numel(EntryPosition),
            if (area(EntryPosition(i)) == 0)%�����������ռ��ʱ
                area(EntryPosition(i)) = 1; %����һ����
                n_input = n_input + 1; 
            end
        end
    end
    n=n-n_input;%ʣ������
    %===============================
    IndexPeople=find(area==1);%��ȡ����Ϊ1��Ԫ�������ˣ���������
    ActOrder=IndexPeople(randperm(numel(IndexPeople)));%�����������������Ϊ����˳��
    for i = 1:numel(ActOrder),
        [x,y]=ind2sub(Areasize,ActOrder(i));%���㵱ǰ�������
        Probability=Calcprob(x,y);%�������п��ܽ���ĸ��ӵĸ���
        if (select_method==0)
            SelectCell=Select(Probability);%���̶�
        else if(select_method==1)
            SelectCell=SelectBest(Probability);%ֱ��ѡ����ѵĸ���
            end
        end
        DoMove(x,y,SelectCell);%�����ƶ�����
    end
    IndexPeople = 0;
    ActOrder=0;
    timestep=timestep+1;
    
    %���ƶ���
    cla(imh);
    imh=drawfigure(area);
    pause(0.001);
    
   % if  (mod(timestep,30)==0)
    %    figure;
    %    drawfigure(area);
    %end

    if (sum(area==1)==0)%����������ɢ���
        EmptyFlag = 1;%����ѭ��
    end
end