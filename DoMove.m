function DoMove( x,y,SelectCell)
global D;
global D_decrease;
global area;
%�ú������ڽ�Ŀ������ƶ���ͬʱ�Զ�̬����������в�����
[targetX,targetY] = ind2sub([3,3],SelectCell); 
targetX=targetX-2;
targetY=targetY-2;%��������ת��Ϊ��Ե�ǰԪ��������
%�������ʾ��
%     -1   0   1
%-1 | 1 | 4 | 7 |
% 0 | 2 | C | 8 |
% 1 | 3 | 6 | 9 |

%======���������======
if((targetX~=0) || (targetY~=0)) %��Ŀ�겻��ԭ�ز���
    area(x,y)=0;%ԭ������Ϊ����
    if (area(x+targetX,y+targetY)~=2) %��Ŀ�겻�ǳ���
        area(x+targetX,y+targetY)=1; %�ƶ���Ŀ��Ԫ��
    end
end
D = D - D_decrease;;%��̬����ʱ��˥��˥��
D(x,y)=D(x,y)+1+D_decrease;%���¶�̬��
D(find(D<1))=1;%��С��1����1
end
