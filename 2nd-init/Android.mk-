LOCAL_PATH := $(call my-dir)

# 2nd-init binary
include $(CLEAR_VARS)

LOCAL_SRC_FILES := 2nd-init.c
LOCAL_MODULE := 2nd-init
LOCAL_MODULE_TAGS := optional
LOCAL_STATIC_LIBRARIES := \
	libbusybox \
	libclearsilverregex \
	libm \
	libcutils \
	libc
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/safestrap

include $(BUILD_EXECUTABLE)



