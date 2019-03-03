import cv2  # 导入OpenCV库
import matplotlib.pyplot as plt  # 导入Matplotlib库，用于绘制图像


def gaussian_blur(input_image, ksize, sigma):  # 高斯低通滤波函数
    filtered_image = cv2.GaussianBlur(
        input_image,
        ksize,
        sigma
    )  # cv2.gaussian_blur函数，用于对图像进行高斯滤波
    return filtered_image


def show_image(order, input_image, title):  # 图像显示函数
    plt.subplot(1, 2, order)  # 生成一个单行两列的图像显示窗口，传入图片顺序Order
    plt.imshow(input_image)  # 图像内容
    plt.title(title)  # 图像标题


def main():
    input_image = cv2.imread('sample.jpg')  # 读取工程目录下的sample.jpg文件作为输入即降噪对象
    ksize = (5, 5)  # 此参数用于修改滤波器大小
    sigma = 1.5  # 此参数用于修改高斯低通滤波函数中的高斯半径大小

    filtered_image = gaussian_blur(input_image, ksize, sigma)

    show_image(1, input_image, 'Input Image')  # 在图像窗口左侧显示原图
    show_image(2, filtered_image, 'Filtered Image')  # 在图像窗口右侧显示降噪后的图像
    plt.show()  # 绘制图像

    cv2.imwrite('PythonFilteredImage.jpg', filtered_image)  # 以jpg格式导出降噪后的图像文件到工程目录


if __name__ == "__main__":
    main()
