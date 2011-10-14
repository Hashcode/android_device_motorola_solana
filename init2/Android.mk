# Copyright 2005 The Android Open Source Project
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	builtins.c \
	init2.c \
	devices.c \
	property_service.c \
	util.c \
	parser.c \
	logo.c \
	keychords.c \
	signal_handler.c \
	init_parser.c \
	ueventd.c \
	ueventd_parser.c

ifeq ($(strip $(INIT_BOOTCHART)),true)
LOCAL_SRC_FILES += bootchart.c
LOCAL_CFLAGS    += -DBOOTCHART=1
endif

ifeq ($(TARGET_HAS_ANCIENT_MSMCAMERA), true)
    LOCAL_CFLAGS += -DNO_MSM_CAMDIR
endif

ifeq ($(BOARD_PROVIDES_BOOTMODE), true)
    LOCAL_CFLAGS += -DBOARD_PROVIDES_BOOTMODE
endif

ifneq ($(TARGET_RECOVERY_PRE_COMMAND),)
	LOCAL_CFLAGS += -DRECOVERY_PRE_COMMAND='$(TARGET_RECOVERY_PRE_COMMAND)'
endif

ifeq ($(BOARD_HAS_EXTRA_SYS_PROPS), true)
    LOCAL_CFLAGS += -DBOARD_HAS_EXTRA_SYS_PROPS
endif

LOCAL_MODULE:= init2
LOCAL_MODULE_TAGS := optional

LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
LOCAL_UNSTRIPPED_PATH := $(TARGET_ROOT_OUT_UNSTRIPPED)

LOCAL_STATIC_LIBRARIES := libcutils libc

include $(BUILD_EXECUTABLE)

