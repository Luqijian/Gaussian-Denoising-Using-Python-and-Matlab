InputImage = imread('sample.jpg'); % 读取工程目录下的sample.jpg文件作为输入即降噪对象
InputImage = im2double(InputImage); % 将图像转换为双精度值，因Matlab不支持无符整型图像数据

% 生成高斯低通滤波器
ksize = 10;  % 此参数用于修改滤波器大小
sigma = 20;  % 此参数用于修改高斯低通滤波函数中的高斯半径大小
Filter = fspecial('gaussian',ksize,sigma);  % 调用fspecial函数生成滤波器

FilteredImage = imfilter(InputImage,Filter,'replicate');  % 调用imfilter函数对图像和滤镜进行卷积操作，生成过滤后的图像

figure;  % 绘制图像
subplot(121);imshow(InputImage);title('Input Image');  % 在图像窗口左侧显示原图
subplot(122);imshow(FilteredImage);title('Filtered Image');  % 在图像窗口右侧显示降噪后的图像

imwrite(FilteredImage,'MatlabFilteredImage.jpg');  % 以jpg格式导出降噪后的图像文件到工程目录