InputImage = imread('sample.jpg'); % ��ȡ����Ŀ¼�µ�sample.jpg�ļ���Ϊ���뼴�������
InputImage = im2double(InputImage); % ��ͼ��ת��Ϊ˫����ֵ����Matlab��֧���޷�����ͼ������

% ���ɸ�˹��ͨ�˲���
ksize = 10;  % �˲��������޸��˲�����С
sigma = 20;  % �˲��������޸ĸ�˹��ͨ�˲������еĸ�˹�뾶��С
Filter = fspecial('gaussian',ksize,sigma);  % ����fspecial���������˲���

FilteredImage = imfilter(InputImage,Filter,'replicate');  % ����imfilter������ͼ����˾����о�����������ɹ��˺��ͼ��

figure;  % ����ͼ��
subplot(121);imshow(InputImage);title('Input Image');  % ��ͼ�񴰿������ʾԭͼ
subplot(122);imshow(FilteredImage);title('Filtered Image');  % ��ͼ�񴰿��Ҳ���ʾ������ͼ��

imwrite(FilteredImage,'MatlabFilteredImage.jpg');  % ��jpg��ʽ����������ͼ���ļ�������Ŀ¼