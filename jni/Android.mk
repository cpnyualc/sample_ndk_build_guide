LOCAL_PATH := $(call my-dir) #设置当前目录
include $(CLEAR_VARS) #请除前面的变量
LOCAL_ARM_MODE := arm #arm mode
LOCAL_MODULE    := project_name #工程名字，编译出来的目标名字
LOCAL_SRC_FILES := demo.c #包含的编译c/c++文件。
include $(BUILD_EXECUTABLE) #编译成一个可执行文件





