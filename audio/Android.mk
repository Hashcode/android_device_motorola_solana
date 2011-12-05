ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),solana)

LOCAL_PATH:= $(call my-dir)

#include $(CLEAR_VARS)

#LOCAL_SRC_FILES:= AudioPolicyManager.cpp
#LOCAL_SHARED_LIBRARIES:= libc libcutils libutils libmedia
#LOCAL_STATIC_LIBRARIES := libmedia_helper
#LOCAL_WHOLE_STATIC_LIBRARIES:= libaudiopolicy_legacy
#LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
#LOCAL_MODULE:= audio_policy.jordan
#LOCAL_MODULE_TAGS := optional

#ifeq ($(BOARD_HAVE_BLUETOOTH),true)
#  LOCAL_CFLAGS += -DWITH_A2DP
#endif

#include $(BUILD_SHARED_LIBRARY)


ifeq ($(BOARD_USES_AUDIO_LEGACY),true)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := audio.primary.solana
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE_TAGS := optional
LOCAL_SHARED_LIBRARIES := \
    liblog \
    libcutils \
    libutils \
    libmedia \
    libaudio_ext \
    libril_rds \
    librds_util \
    liba2dp \
    
LOCAL_STATIC_LIBRARIES := \
    libmedia_helper
LOCAL_WHOLE_STATIC_LIBRARIES := \
    libaudiohw_legacy
include $(BUILD_SHARED_LIBRARY)

endif #BOARD_USES_AUDIO_LEGACY
endif #solana


