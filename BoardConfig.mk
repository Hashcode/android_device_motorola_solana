# Sandbox Setup: ON
# [HASH] I like how cvpcs grouped his settings, using that!


# Camera
USE_CAMERA_STUB := false
BOARD_USES_TI_CAMERA_HAL := true


# inherit from the proprietary version
-include vendor/motorola/solana/BoardConfigVendor.mk


# Processor
TARGET_NO_BOOTLOADER := false
TARGET_BOARD_PLATFORM := omap4
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_BOOTLOADER_BOARD_NAME := solana
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_TLS_REGISTER := true
NEEDS_ARM_ERRATA_754319_754320 := true
TARGET_GLOBAL_CFLAGS += -DNEEDS_ARM_ERRATA_754319_754320


# Kernel
TARGET_PREBUILT_KERNEL := device/motorola/solana/kernel
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_PAGE_SIZE := 0x4096


# Connectivity - Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := libCustomWifi
WPA_SUPPLICANT_VERSION      := VER_0_6_X
HOSTAPD_VERSION             := VER_0_6_X
BOARD_WLAN_DEVICE           := tiwlan0
BOARD_SOFTAP_DEVICE         := tiap0
BOARD_WLAN_TI_STA_DK_ROOT   := system/wlan/ti/wilink_6_1
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/tiwlan_drv.ko"
WIFI_DRIVER_MODULE_NAME     := "tiwlan_drv"
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_FIRMWARE_LOADER        := "wlan_loader"
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/wifi/fw_wlan1283.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/wifi/fw_wlan1283_AP.bin"


# Audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
BOARD_WITH_ALSA_UTILS := true


# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true


# Recovery
TARGET_PREBUILT_RECOVERY_KERNEL := device/motorola/solana/recovery-kernel
BOARD_CUSTOM_GRAPHICS := ../../../device/motorola/solana/recovery/graphics.c
BOARD_HAS_NO_SELECT_BUTTON := true
#TARGET_RECOVERY_PRE_COMMAND := "echo 1 > /data/.recovery_mode; sync;"
#TARGET_RECOVERY_PRE_COMMAND_CLEAR_REASON := true
BOARD_ALWAYS_INSECURE := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_MKE2FS := device/motorola/solana/releaseutils/mke2fs
#BOARD_HAS_WEBTOP := false
#BOARD_HAS_SDCARD_INTERNAL := true
#BOARD_HAS_LOCKED_BOOTLOADER := true
#SYSTEM_BOOT_STATUS_FILE := /systemorig/etc/recovery/flags/alt_system_mode


# Sandbox Filesystem Settings
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk1p23
BOARD_SYSTEM_FILESYSTEM_OPTIONS := noatime,nodiratime
BOARD_SYSTEM_FILESYSTEM := ext3


# Graphics
BOARD_EGL_CFG := device/motorola/solana/prebuilt/etc/egl.cfg


# OMX
HARDWARE_OMX := true
ifdef HARDWARE_OMX
OMX_VENDOR := ti
OMX_VENDOR_WRAPPER := TI_OMX_Wrapper
BOARD_OPENCORE_LIBRARIES := libOMX_Core
BOARD_OPENCORE_FLAGS := -DHARDWARE_OMX=1
endif


# OMAP
OMAP_ENHANCEMENT := true
ifdef OMAP_ENHANCEMENT
COMMON_GLOBAL_CFLAGS += -DOMAP_ENHANCEMENT -DTARGET_OMAP4
endif


# MOTOROLA
USE_MOTOROLA_CODE := true
ifdef USE_MOTOROLA_CODE
COMMON_GLOBAL_CFLAGS += -DUSE_MOTOROLA_CODE
endif


# Media / Radio
BUILD_FM_RADIO := true
BUILD_TI_FM_APPS := true
FM_CHR_DEV_ST := true
#PV_PLAYER := 
#BOARD_HW_PLAYER :=


# OTA Packaging
TARGET_PROVIDES_RELEASETOOLS := true
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/motorola/solana/releasetools/solana_ota_from_target_files
TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := device/motorola/solana/releasetools/solana_img_from_target_files


# Hijack
#TARGET_NEEDS_MOTOROLA_HIJACK := true
#BOARD_HIJACK_LOG_ENABLE := true


# Misc.
BOARD_USE_BATTERY_CHARGE_COUNTER := true
BOARD_FLASH_BLOCK_SIZE := 131072
HAVE_2_3_DSP := 1
BOARD_NEEDS_CUTILS_LOG := true

solana_HARDWARE := true
BOARD_GLOBAL_CFLAGS += -Dsolana_HARDWARE

