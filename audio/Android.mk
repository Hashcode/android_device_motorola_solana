ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),solana)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

# output for libaudio intermediates
LIBAUDIO_INTERMEDIATES_PREREQS := $(PRODUCT_OUT)/obj/lib

# prerequisites for building audio.primary.solana
file := $(LIBAUDIO_INTERMEDIATES_PREREQS)/libaudio.so
$(file) : device/motorola/solana/prebuilt/audio/libaudio.so
	@echo "Copy libaudio.so -> $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) cp -a device/motorola/solana/prebuilt/audio/libaudio.so $@

file := $(LIBAUDIO_INTERMEDIATES_PREREQS)/libaudio_ext.so
$(file) : device/motorola/solana/prebuilt/audio/libaudio_ext.so
	@echo "Copy libaudio_ext.so -> $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) cp -a device/motorola/solana/prebuilt/audio/libaudio_ext.so $@

file := $(LIBAUDIO_INTERMEDIATES_PREREQS)/libasound.so
$(file) : device/motorola/solana/prebuilt/audio/libasound.so
	@echo "Copy libasound.so -> $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) cp -a device/motorola/solana/prebuilt/audio/libasound.so $@

file := $(LIBAUDIO_INTERMEDIATES_PREREQS)/liba2dp.so
$(file) : device/motorola/solana/prebuilt/audio/liba2dp.so
	@echo "Copy liba2dp.so -> $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) cp -a device/motorola/solana/prebuilt/audio/liba2dp.so $@

LOCAL_SRC_FILES:= AudioPolicyManager.cpp
LOCAL_SHARED_LIBRARIES:= libc libcutils libutils libmedia
LOCAL_STATIC_LIBRARIES := libmedia_helper
LOCAL_WHOLE_STATIC_LIBRARIES:= libaudiopolicy_legacy
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE:= audio_policy.solana
LOCAL_MODULE_TAGS := optional

ifeq ($(BOARD_HAVE_BLUETOOTH),true)
  LOCAL_CFLAGS += -DWITH_A2DP
endif

include $(BUILD_SHARED_LIBRARY)


ifeq ($(BOARD_USES_AUDIO_LEGACY),true)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := audio.primary.solana
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE_TAGS := optional
LOCAL_SHARED_LIBRARIES := \
    libcutils \
    libutils \
    libmedia \
    libhardware \
    libhardware_legacy \
    libdl \
    libaudio \
    libaudio_ext \
    libasound \
    liblog \
    libm \
    liba2dp \

LOCAL_STATIC_LIBRARIES := \
    libmedia_helper
LOCAL_WHOLE_STATIC_LIBRARIES := \
    libaudiohw_legacy
include $(BUILD_SHARED_LIBRARY)

endif
endif #BOARD_USES_AUDIO_LEGACY

