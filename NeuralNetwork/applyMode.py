import numpy as np                  # for the matrix, and arrays
import cv2 as cv                    # img reading and resizing
from tensorflow import keras        # Interface of the tensorflow NN libraries
import tensorflow as tf             # ML and AI library

# >> disabling the graphics card
import os
os.environ['CUDA_VISIBLE_DEVICES'] = '-1'

# checking which device is used to compute the neural net
if tf.test.gpu_device_name():
    print('GPU found')
else:
    print("No GPU found")

# >> the threshold value for the neural network
# The neural network can output values ranging from -3 to 3
# setting the threshold will tell the edge detector which
# value is the minimum acceptable one
THRESHOLD = 1


def scale_down(img, max_height=200):
    # max_height is also the new width For simplicity
    # the desired size is 200 rows (height)

    # the resize ratio, what % we will resize the image
    resize_ratio = max_height/img.shape[0]
    if (resize_ratio >= 1):  # if smaller then don't resize
        return img

    new_width = int(img.shape[1] * resize_ratio)

    # doing the resizing
    # in short interpolation is a method for estimating the unkown values between two points
    # ...it much more complex than that though
    # using bilinear interpolation, which is linear interpolation but for two variables (x,y)
    img = cv.resize(img, [new_width, max_height], interpolation=cv.INTER_AREA)
    return img


def scale_up(img, original_shape):
    # if scale down is not applied -> do nothing
    if(img.shape[0] == original_shape[0] and
            img.shape[1] == original_shape[1]):
        return img

    # else scale image back to original size
    img = cv.resize(img, original_shape, interpolation=cv.INTER_AREA)
    return img


# >> the function that does the edge detection on the whole image
def detect_edges(img, model):
    # creating an empty image
    returnImg = np.zeros((img.shape[0], img.shape[1], 3), np.uint8)
    pixMat = np.array([])

    # for each pixel
    # that is not at the image edge
    for i in range(1, img.shape[0]-1):
        print(i)    # works like a loading bar
        for j in range(1, img.shape[1]-1):
            # creating matrix
            temp = np.array([   # reading gray pixil values
                img[i-1, j-1], img[i-1, j],
                img[i-1, j+1], img[i, j-1], img[i, j+1],
                img[i+1, j-1], img[i+1, j], img[i+1, j+1]])

            temp = temp-img[i, j]     # getting the contrast
            prediction = model(temp)  # passing the data to the model
            if(prediction[0][0] > THRESHOLD):      # detecting if edge (deps on threshold)
                returnImg[i, j] = (255, 255, 255)   # draw a white dot
    print("done")
    return returnImg


# >> Displays an image and waits for user input
def show_and_wait(img, window="Testing"):
    cv.imshow(window, img)
    cv.waitKey(0)


# >> start of the porgram
# >> loading the neural network model
reloaded = tf.keras.models.load_model('dnn_model_32_con')


# >> reading the image and displaying it
img = cv.imread("images/pepper.bmp")
original_shape = img.shape[0:2]  # holding the orignal shape for later
show_and_wait(img)

# >> converting the image to grayscale, displaying, and compressing it.
img_gray = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
show_and_wait(img_gray)
#img_gray = scale_down(img_gray, 200)

# >> doing the edge detection
edge = detect_edges(img_gray, reloaded)
# won't effect the image if no downscaling is done
edge = scale_up(edge, original_shape)

# >> writing the image to a file
cv.imwrite("face2.jpg", edge)

# >> displaying the image
show_and_wait(edge)

cv.destroyAllWindows()
