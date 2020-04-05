LOCAL_PATH := $(call my-dir) #设置当前目录,当前目录其实是jni
include $(CLEAR_VARS) #清空除LOCAL_PATH之外的所有LOCAL_XX变量的值
LOCAL_MODULE := project_1#工程名字，编译出来的目标名字
#设置一些自己的变量
LOCAL_PATH := $(LOCAL_PATH)/..
PORJECT_INC_PATH := $(LOCAL_PATH)/project1
PORJECT_SRC_PATH := $(LOCAL_PATH)/project1
PORJECT_WILDCARD_PATH := $(LOCAL_PATH)/project1
#打印方法
#$(info Info something. ) #info打印信息
#$(warning "warning! haha!") #打印信息
#$(warning $(PORJECT_PATH)) #打印一个变量
#$(error Fuck!) #打印一个变量

#判断架构
#ifeq ($(TARGET_ARCH), arm)
#$(info Info something. ) #info打印信息
#endif
LOCAL_ARM_MODE := arm #arm mode

#头文件目录
LOCAL_C_INCLUDES := $(PORJECT_INC_PATH)/inc1/ \
                    $(PORJECT_INC_PATH)/inc2/

#加上一个文件
LOCAL_SRC_FILES := project1/demo.c #包含一个编译文件。
#LOCAL_SRC_FILES := $(LOCAL_PATH)/project1/src1/fun1.c #包含一个编译文件。
#再加上一个文件
LOCAL_SRC_FILES += $(PORJECT_SRC_PATH)/src1/fun1.c #包含一个编译文件。
#LOCAL_SRC_FILES += $(LOCAL_PATH)/project1/src1/fun1.c #包含一个编译文件。
#加上一堆,注意wildcard目录是运行命令目录
LOCAL_SRC_FILES += $(wildcard $(PORJECT_WILDCARD_PATH)/src2/*.c) \
                   $(wildcard $(PORJECT_WILDCARD_PATH)/src2/*.cpp)
$(warning $(LOCAL_C_INCLUDES)) #打印信息
$(warning $(LOCAL_SRC_FILES)) #打印信息

#设置c和c++编译参数
#LOCAL_CFLAGS := -mfloat-abi=softfp -mfpu=neon
#LOCAL_CXXFLAGS := -std=c++11

#链接系统库
LOCAL_LDLIBS:= -llog -lm

include $(BUILD_EXECUTABLE) #编译成一个可执行文件



