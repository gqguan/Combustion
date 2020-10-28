%% �κ���ҵ3-17
%
% by Dr. Guan, Guoqiang @ SCUT on 2019-10-23
%
%% ��ʼ��
clear;
% �������ȼ��Ũ�Ⱥ�ȼ��Ũ��
c1 = 0.62; clr = 0.2;
% ��������
a = 0.08;
% ԭ��������ߴ�
b0 = 0.4/2;
%% ��������ȼ�����泤�ȣ���ʽ(3-97)
% ���������ȼ�����泤��X = x*a/R0
X = 0.7*c1/clr*sqrt((1+c1)/(1+0.77*clr));
% ԭ������������
A0 = b0*b0;
% ������������
L = [b0; sqrt(A0/pi/2); sqrt(A0/2); 0.2/2];
str_nozzle = {'0.4x0.4 square', 'eq.Area 2 circular', ...
              'eq.Area 2w square', '0.2x0.4 square'};
% ����ȼ�����泤��x
x = X*L./a;
%% ���
prompt = 'Theoretical lengths of flame for varied nozzles with the same cross-section area are respectively listed as';
fprintf('%s \n', prompt);
output = table(L, x, 'RowNames', str_nozzle)
fprintf('It indicates that the larger influent size of nozzle has the longer flame. \n')