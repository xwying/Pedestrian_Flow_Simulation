function SelectCell = SelectBest(prob)
%�ú���ֱ��ѡ��������ĸ��ӽ��룬�����̶������ַ�ʽ
SelectCell=find(prob==max(max(prob)));
end

