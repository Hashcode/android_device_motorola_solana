#
# Copyright (C) 2011 Texas Instruments
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := false
#BOARD_USE_YUV422I_DEFAULT_COLORFORMAT := true


# inherit from the proprietary version
-include vendor/motorola/solana/BoardConfigVendor.mk

#OMAP_ENHANCEMENT := true
NEEDS_ARM_ERRATA_754319_754320 := true

TARGET_BOARD_PLATFORM := omap4
TARGET_BOOTLOADER_BOARD_NAME := solana

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
#TARGET_GLOBAL_CFLAGS += -march=cortex-a9 -mfpu=neon
#TARGET_GLOBAL_CPPFLAGS += -march=cortex-a9 -mfpu=neon

BOARD_GLOBAL_CFLAGS += -Dsolana_HARDWARE
solana_HARDWARE := true

TARGET_NO_BOOTLOADER := false
TARGET_BOOTLOADER_BOARD_NAME := solana

BOARD_USES_GENERIC_AUDIO := false

BOARD_KERNEL_CMDLINE := console=ttyS2,115200n8 rw mem=512M@0x80000000 vram=4M omapgpu.vram=0:4M init=/init ip=off brdrev=P2A omap3_die_id androidboot.bootloader=0x0000 mmcparts=mmcblk1:p7(pds),p15(boot),p16(recovery),p17(cdrom),p18(misc),p19(cid),p20(kpanic),p21(system),p22(cache),p23(preinstall),p24(userdata),p25(emstorage) androidboot.mode=reboot androidboot.bootloader=D011 androidboot.serialno=0A3A94CF0602D02
BOARD_KERNEL_BASE := 0x10000000
BOARD_PAGE_SIZE := 0x4096

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true
BOARD_USES_TI_CAMERA_HAL := true
#HARDWARE_OMX := true

#ifdef HARDWARE_OMX
#OMX_VENDOR := ti
#OMX_VENDOR_INCLUDES := \
#   hardware/ti/omx/system/src/openmax_il/omx_core/inc \
#   hardware/ti/omx/image/src/openmax_il/jpeg_enc/inc
#OMX_VENDOR_WRAPPER := TI_OMX_Wrapper
#BOARD_OPENCORE_LIBRARIES := libOMX_Core
#BOARD_OPENCORE_FLAGS := -DHARDWARE_OMX=1
#endif

#ifdef OMAP_ENHANCEMENT
#COMMON_GLOBAL_CFLAGS += -DOMAP_ENHANCEMENT -DTARGET_OMAP4
#endif


TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00900000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x1ac00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x9df80000
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_CUSTOM_GRAPHICS := ../../../device/motorola/solana/recovery/graphics.c
BOARD_HAS_SDCARD_INTERNAL := true

TARGET_PREBUILT_KERNEL := device/motorola/solana/kernel

TARGET_PREBUILT_RECOVERY_KERNEL := device/motorola/solana/recovery-kernel

TARGET_USERIMAGES_USE_EXT4 := true

# Below is a sample of how you can tweak the mount points using the board config.
BOARD_HAS_NO_MISC_PARTITION := false
BOARD_RECOVERY_IGNORE_BOOTABLES := true
#BOARD_DATA_DEVICE := /dev/block/mmcblk1p24
#BOARD_DATA_FILESYSTEM := ext4
#BOARD_DATA_FILESYSTEM_OPTIONS := nosuid,nodev,noatime,nodiratime,errors=continue,barrier=1,data=ordered
#BOARD_SYSTEM_DEVICE := /dev/block/mmcblk1p21
#BOARD_SYSTEM_FILESYSTEM_OPTIONS := noatime,nodiratime,barrier=1,data=ordered
#BOARD_SYSTEM_FILESYSTEM := ext4
#BOARD_CACHE_DEVICE := /dev/block/mmcblk1p22
#BOARD_CACHE_FILESYSTEM := ext4
#BOARD_CACHE_FILESYSTEM_OPTIONS := nosuid,nodev,noatime,nodiratime,errors=continue,barrier=1,data=ordered
BOARD_HAS_PREINSTALL := true
BOARD_PREINSTALL_DEVICE := /dev/block/mmcblk1p23
BOARD_PREINSTALL_FILESYSTEM := ext3
BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_NO_BOOT := false
TARGET_NO_RECOVERY := false
BOARD_HAS_WEBTOP := false

BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p25
BOARD_VOLD_MAX_PARTITIONS := 18

BOARD_SDEXT_DEVICE := /dev/block/mmcblk0p1
BOARD_UMS_LUNFILE := /sys/devices/platform/usb_mass_storage/lun0/file

BOARD_HIJACK_BOOT_PATH := /preinstall/
BOARD_HIJACK_EXECUTABLES := logwrapper
BOARD_HIJACK_LOG_ENABLE := false
BOARD_USES_MMCUTILS := true

BOARD_USES_HW_MEDIARECORDER := true
BOARD_USES_HW_MEDIASCANNER := false
BOARD_USES_HW_MEDIAPLUGINS := true

TARGET_OVERLAY_ALWAYS_DETERMINES_FORMAT := true
TARGET_USES_GL_VENDOR_EXTENSIONS := true

#EGL
BOARD_EGL_CFG := device/motorola/solana/egl.cfg

# Connectivity - Wi-Fi
USES_TI_WL1281 := true
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
ifdef USES_TI_WL1281
BOARD_WLAN_DEVICE           := tiwlan0
BOARD_SOFTAP_DEVICE         := wl1281
endif
WPA_SUPPLICANT_VERSION      := VER_0_6_X
HOSTAPD_VERSION             := VER_0_6_X
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/tiwlan_drv.ko"
#BOARD_WLAN_TI_STA_DK_ROOT   := system/wlan/ti/wilink_6_1
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_DRIVER_MODULE_NAME     := "tiwlan_drv"
WIFI_FIRMWARE_LOADER        := "wlan_loader"
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/wifi/fw_wlan1281.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/wifi/fw_wlan1281_AP.bin"

ifndef solana_DEV_PHONE
#TARGET_PROVIDES_RELEASETOOLS := true
#TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/motorola/solana/releasetools/solana_ota_from_target_files
#TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := device/motorola/solana/releasetools/solana_img_from_target_files

#BOARD_HIJACK_ENABLE := true
#BOARD_HIJACK_UPDATE_BINARY := /preinstall/update-binary
#BOARD_HIJACK_BOOT_UPDATE_ZIP := /preinstall/update-boot.zip
#BOARD_HIJACK_RECOVERY_UPDATE_ZIP := /preinstall/update-recovery.zip
#BOARD_HIJACK_RECOVERY_MODE_FILE := /data/.recovery_mode

#BOARD_HIJACK_UPDATE_BINARY := /preinstall/recovery/update-binary
#BOARD_HIJACK_BOOT_UPDATE_ZIP := /system/etc/solana-boot.zip
#BOARD_HIJACK_RECOVERY_UPDATE_ZIP := /preinstall/recovery/recovery.zip
#BOARD_HIJACK_RECOVERY_PATH := /preinstall/

#BOARD_HIJACK_LOG_ENABLE := true

#TARGET_NEEDS_MOTOROLA_HIJACK := true

#TARGET_RECOVERY_PRE_COMMAND := "echo 1 > /data/.recovery_mode; sync;"
#TARGET_RECOVERY_PRE_COMMAND_CLEAR_REASON := true
endif

BOARD_ALWAYS_INSECURE := true
BOARD_HAS_LARGE_FILESYSTEM := true
