$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

PRODUCT_COPY_FILES += \
    device/motorola/solana/init.mapphone_cdma.rc:root/init.mapphone_cdma.rc \
    device/motorola/solana/ueventd.mapphone_cdma.rc:root/ueventd.mapphone_cdma.rc

$(call inherit-product-if-exists, vendor/motorola/solana/solana-vendor.mk)

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
#PRODUCT_PROPERTY_OVERRIDES := \
#	ro.opengles.version = 131072

DEVICE_PACKAGE_OVERLAYS += device/motorola/solana/overlay

PRODUCT_PACKAGES += \

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/motorola/solana/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \

# these need to be here for the installer, just put them here for now
PRODUCT_COPY_FILES += \
    device/motorola/shadow/releaseutils/mke2fs:system/etc/releaseutils/mke2fs \
    device/motorola/shadow/releaseutils/tune2fs:system/etc/releaseutils/tune2fs \
    device/motorola/shadow/releaseutils/check_kernel:system/etc/releaseutils/check_kernel \
    device/motorola/shadow/releaseutils/finalize_release:system/etc/releaseutils/finalize_release

# stuff common to all Motorola phones
$(call inherit-product, device/motorola/common/common_hijack.mk)

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_NAME := full_solana
PRODUCT_DEVICE := solana
