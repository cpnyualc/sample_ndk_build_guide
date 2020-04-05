LOCAL_PATH := $(call my-dir)#设置当前目录,当前目录其实是jni

##加入第三方（自己的.a）
##定义一个模块，用来描述库文件
#include $(CLEAR_VARS)
#LOCAL_MODULE := module1#模块名字
##LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libproject1.a#如果架构不同选择
#LOCAL_SRC_FILES := ../pro_libs/libproject1.a
#include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)#清空除LOCAL_PATH之外的所有LOCAL_XX变量的值
LOCAL_MODULE := demo3#工程名字，编译出来的目标名字
LOCAL_PATH := $(LOCAL_PATH)/..#调整目录
#设置一些自己的变量
PORJECT_INC_PATH := $(LOCAL_PATH)
PORJECT_SRC_PATH := $(LOCAL_PATH)
PORJECT_WILDCARD_PATH := $(LOCAL_PATH)

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
LOCAL_C_INCLUDES := $(PORJECT_INC_PATH)/inc/
#加入第三方（自己的so）
LOCAL_C_INCLUDES += $(PORJECT_INC_PATH)/pro_libs/
LOCAL_LDFLAGS := $(LOCAL_PATH)/pro_libs/libproject2.so
#加入第三方（自己的.a）
#LOCAL_STATIC_LIBRARIES += module1

#加上一个文件
#LOCAL_SRC_FILES := ../project1/demo.c #包含一个编译文件。
#LOCAL_SRC_FILES := $(LOCAL_PATH)/../../project1/src1/fun1.c #包含一个编译文件。
#再加上一个文件
#LOCAL_SRC_FILES += $(LOCAL_PATH)/../../project1/src1/fun1.c #包含一个编译文件。
#加上一堆,注意wildcard目录是运行命令目录
LOCAL_SRC_FILES += $(wildcard $(PORJECT_WILDCARD_PATH)/src/*.c) \
                   $(wildcard $(PORJECT_WILDCARD_PATH)/src/*.cpp)
$(warning $(LOCAL_C_INCLUDES)) #打印信息
$(warning $(LOCAL_SRC_FILES)) #打印信息

#设置c和c++编译参数
#LOCAL_CFLAGS := -mfloat-abi=softfp -mfpu=neon
#LOCAL_CXXFLAGS := -std=c++11

#链接系统库
#LOCAL_LDLIBS := -llog -lm

include $(BUILD_EXECUTABLE) #编译成一个可执行文件
#include $(BUILD_SHARED_LIBRARY) #编译成.so文件
#include $(BUILD_STATIC_LIBRARY) #编译成.a文件