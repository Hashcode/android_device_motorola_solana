#
# This is the product configuration for a full solana
#

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects

# Device overlay
    DEVICE_PACKAGE_OVERLAYS += device/motorola/solana/overlay

# high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_PACKAGES := \
	charger \
	charger_res_images

# Hardware HALs
PRODUCT_COPY_FILES += \
    device/motorola/solana/prebuilt/imgtec/gralloc.omap4.so:system/lib/hw/gralloc.omap4.so \

# Audio sucks currently.  Moto customized alsa_sound and while I'm working it out, I'll use phone libs.  blech.
PRODUCT_COPY_FILES += \
    device/motorola/solana/prebuilt/audio/libaudio.so:/system/lib/libaudio.so \
    device/motorola/solana/prebuilt/audio/libaudio_ext.so:/system/lib/libaudio_ext.so \
    device/motorola/solana/prebuilt/audio/libasound.so:/system/lib/libasound.so \
#    device/motorola/solana/prebuilt/audio/alsa.omap4.so:/system/lib/hw/alsa.omap4.so \

# Lights
#PRODUCT_PACKAGES += \
#    lights.solana \

# Sensors
#PRODUCT_PACKAGES += \
#    sensors.solana \

#PRODUCT_PACKAGES += \
#    libaudiopolicy \
#    libbundlewrapper \
#    libreverbwrapper \
#    libvisualizer \

# Modem
PRODUCT_PACKAGES += \
    libaudiomodemgeneric \
    libreference-cdma-sms \

# Syslink and Tiler
PRODUCT_PACKAGES += \
    syslink_daemon.out \
    syslink_tilertest.out \
    syslink_trace_daemon.out \
    libipc \
    libipcutils \
    librcm \
    libsysmgr \
    libnotify \
    libd2cmap \
    libtimemmgr \
#    dmm_daemontest.out \
#    ducati_load.out \
#    event_listener.out \
#    gateMPApp.out \
#    heapBufMPApp.out \
#    heapMemMPApp.out \
#    interm3.out \
#    listMPApp.out \
#    memmgrserver.out \
#    messageQApp.out \
#    nameServerApp.out \
#    notifyping.out \
#    procMgrApp.out \
#    rcm_daemontest.out \
#    rcm_multiclienttest.out \
#    rcm_multitest.out \
#    rcm_multithreadtest.out \
#    rcm_singletest.out \
#    sharedRegionApp.out \
#    slpmresources.out \
#    slpmtest.out \
#    slpmtransport.out \
#    utilsApp.out \
#    libsyslink_ipc_listener \
#    libomap_mm_library_jni \

# Wifi
PRODUCT_PACKAGES += \
    libCustomWifi \
    wlan_loader \
    wlan_cu \
    dhcpcd.conf \
    wpa_supplicant.conf \

# HotSpot
PRODUCT_PACKAGES += \
    tiap_loader \
    tiap_cu \
    hostap \
    hostapd.conf \

# Bluetooth
#    uim-rfkill \
#    liba2dp \
PRODUCT_PACKAGES += \
    bt_sco_app \
    uim-sysfs \

# FM Radio
PRODUCT_PACKAGES += \
    com.ti.fm.fmradioif.xml \
    fmradioif \
    FmRxApp \
    FmTxApp \
    FmService \

# Release utilities
PRODUCT_PACKAGES += \
    solana_releaseutils-check_kernel \
    solana_releaseutils-finalize_release \
    solana_releaseutils-mke2fs \
    solana_releaseutils-tune2fs

# Tests -- Can remove later
PRODUCT_PACKAGES += \
    d2c_test \
    memmgr_test \
    utils_test \
    tiler_ptest \
    overlay_test \
    omx_tests \
#    camera_test \
#    VideoEncTest \

PRODUCT_PACKAGES += \
    Camera \
    Usb \

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory


# Rootfs files
PRODUCT_COPY_FILES += \
    out/target/product/solana/root/init:system/etc/rootfs/init \
    out/target/product/solana/root/sbin/adbd:system/etc/rootfs/sbin/adbd \
    device/motorola/solana/root/default.prop:system/etc/rootfs/default.prop \
    device/motorola/solana/root/init.rc:system/etc/rootfs/init.rc \
    device/motorola/solana/root/init.mapphone_cdma.rc:system/etc/rootfs/init.mapphone_cdma.rc \
    device/motorola/solana/root/init.mapphone_umts.rc:system/etc/rootfs/init.mapphone_umts.rc \
    device/motorola/solana/root/ueventd.rc:system/etc/rootfs/ueventd.rc \

# Hijack files
PRODUCT_COPY_FILES += \
    device/motorola/solana/root/init:root/init \
    device/motorola/solana/root/default.prop:root/default.prop \
    device/motorola/solana/root-hijack/init.rc:root/init.rc \
    device/motorola/solana/root-hijack/init.mapphone_cdma.rc:root/init.mapphone_cdma.rc \
    device/motorola/solana/root-hijack/init.mapphone_umts.rc:root/init.mapphone_umts.rc \
    device/motorola/solana/root/ueventd.rc:root/ueventd.rc \
    device/motorola/solana/root/sbin/adbd:root/sbin/adbd \

# Permissions files
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:/system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:/system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:/system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:/system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:/system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:/system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:/system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:/system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:/system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:/system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:/system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:/system/etc/permissions/handheld_core_hardware.xml \

# Prebuilts
PRODUCT_COPY_FILES += \
    device/motorola/solana/prebuilt/bin/battd:system/bin/battd \
    device/motorola/solana/prebuilt/bin/hijack:system/bin/hijack \
    device/motorola/solana/prebuilt/bin/hijack.log_dump:system/bin/hijack.log_dump \
    device/motorola/solana/prebuilt/bin/mount_ext3.sh:system/bin/mount_ext3.sh \
    device/motorola/solana/prebuilt/bin/strace:system/bin/strace \
    device/motorola/solana/prebuilt/etc/TICameraCameraProperties.xml:system/etc/TICameraCameraProperties.xml \
    device/motorola/solana/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml \
    device/motorola/solana/prebuilt/etc/gps.conf:system/etc/gps.conf \
    device/motorola/solana/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/motorola/solana/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/motorola/solana/prebuilt/etc/wifi/tiwlan_ap.ini:system/etc/wifi/tiwlan_ap.ini \
    device/motorola/solana/prebuilt/etc/wifi/tiwlan.ini:system/etc/wifi/tiwlan.ini \
    device/motorola/solana/prebuilt/usr/idc/qtouch-touchscreen.idc:system/usr/idc/qtouch-touchscreen.idc \
    device/motorola/solana/prebuilt/usr/keychars/omap-keypad.kcm:system/usr/keychars/omap-keypad.kcm \
    device/motorola/solana/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/motorola/solana/prebuilt/usr/keylayout/cpcap-key.kl:system/usr/keylayout/cpcap-key.kl \
    device/motorola/solana/prebuilt/usr/keylayout/omap-keypad.kl:system/usr/keylayout/omap-keypad.kl \
    device/motorola/solana/prebuilt/usr/keylayout/usb_keyboard_102_en_us.kl:system/usr/keylayout/usb_keyboard_102_en_us.kl \
    device/motorola/solana/prebuilt/usr/keylayout/qtouch-touchscreen.kl:system/usr/keylayout/qtouch-touchscreen.kl \

# Graphics
PRODUCT_COPY_FILES += \
    device/motorola/solana/prebuilt/imgtec/pvrsrvinit:system/bin/pvrsrvinit \
    device/motorola/solana/prebuilt/imgtec/libEGL_POWERVR_SGX540_120.so:system/lib/egl/libEGL_POWERVR_SGX540_120.so \
    device/motorola/solana/prebuilt/imgtec/libGLESv1_CM_POWERVR_SGX540_120.so:system/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \
    device/motorola/solana/prebuilt/imgtec/libGLESv2_POWERVR_SGX540_120.so:system/lib/egl/libGLESv2_POWERVR_SGX540_120.so \
    device/motorola/solana/prebuilt/imgtec/libglslcompiler.so:system/lib/libglslcompiler.so \
    device/motorola/solana/prebuilt/imgtec/libIMGegl.so:system/lib/libIMGegl.so \
    device/motorola/solana/prebuilt/imgtec/libpvr2d.so:system/lib/libpvr2d.so \
    device/motorola/solana/prebuilt/imgtec/libpvrANDROID_WSEGL.so:system/lib/libpvrANDROID_WSEGL.so \
    device/motorola/solana/prebuilt/imgtec/libPVRScopeServices.so:system/lib/libPVRScopeServices.so \
    device/motorola/solana/prebuilt/imgtec/libsrv_init.so:system/lib/libsrv_init.so \
    device/motorola/solana/prebuilt/imgtec/libsrv_um.so:system/lib/libsrv_um.so \
    device/motorola/solana/prebuilt/imgtec/libusc.so:system/lib/libusc.so \
    device/motorola/solana/prebuilt/imgtec/libdrm.so:system/lib/libdrm.so \

FRAMEWORKS_BASE_SUBDIRS += \
    $(addsuffix /java, omapmmlib)

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# still need to set english for audio init
PRODUCT_LOCALES += en_US


# copy all kernel modules under the "modules" directory to system/lib/modules
PRODUCT_COPY_FILES += $(shell \
    find device/motorola/solana/modules -name '*.ko' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
    | tr '\n' ' ')

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/motorola/solana/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, hardware/ti/omap4xxx/omap4.mk)
$(call inherit-product, hardware/ti/wpan/ti-wpan-products.mk)
#$(call inherit-product, hardware/ti/wpan/tools/FM/Android.mk)

$(call inherit-product-if-exists, vendor/motorola/solana/solana-vendor.mk)
$(call inherit-product-if-exists, vendor/cm/config/common_full_phone.mk)

# stuff common to all Motorola phones -- disabled for Sandbox
#$(call inherit-product, device/motorola/common/common_hijack.mk)

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_NAME := full_solana
PRODUCT_DEVICE := solana
