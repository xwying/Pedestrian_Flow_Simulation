function selectcell = Select( sp )
%������и�����ʵľ��󣬱�����ͨ�����̶ĵķ�ʽѡ����һ��ǰ����Ԫ����
for i=2:9, %��������
    sp(i)=sp(i)+sp(i-1);
end
t=rand();%���������

for i=1:9,
    if (sp(i)>t) %ѡ��Ŀ��������
    break;
    end
end
selectcell = i;%����ѡ��Ԫ��������
end