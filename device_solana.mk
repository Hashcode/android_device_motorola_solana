#
# This is the product configuration for a full solana
#

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)


# Rootfs files
PRODUCT_COPY_FILES += \
    device/motorola/solana/root/init:system/etc/rootfs/init \
    device/motorola/solana/root/default.prop:system/etc/rootfs/default.prop \
    device/motorola/solana/root/init.rc:system/etc/rootfs/init.rc \
    device/motorola/solana/root/init.mapphone_cdma.rc:system/etc/rootfs/init.mapphone_cdma.rc \
    device/motorola/solana/root/init.mapphone_umts.rc:system/etc/rootfs/init.mapphone_umts.rc \
    device/motorola/solana/root/ueventd.rc:system/etc/rootfs/ueventd.rc \
    device/motorola/solana/root/ueventd.mapphone_cdma.rc:system/etc/rootfs/ueventd.mapphone_cdma.rc \
    device/motorola/solana/root/ueventd.mapphone_umts.rc:system/etc/rootfs/ueventd.mapphone_umts.rc

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects

# Device overlay
    DEVICE_PACKAGE_OVERLAYS += device/motorola/solana/overlay

# Permissions files
PRODUCT_COPY_FILES += \
    device/motorola/solana/prebuilt/etc/permissions/android.hardware.camera.front.xml:/system/etc/permissions/android.hardware.camera.front.xml \
    device/motorola/solana/prebuilt/etc/permissions/android.hardware.camera.flash-autofocus.xml:/system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    device/motorola/solana/prebuilt/etc/permissions/android.hardware.location.gps.xml:/system/etc/permissions/android.hardware.location.gps.xml \
    device/motorola/solana/prebuilt/etc/permissions/android.hardware.sensor.accelerometer.xml:/system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    device/motorola/solana/prebuilt/etc/permissions/android.hardware.sensor.light.xml:/system/etc/permissions/android.hardware.sensor.light.xml \
    device/motorola/solana/prebuilt/etc/permissions/android.hardware.sensor.proximity.xml:/system/etc/permissions/android.hardware.sensor.proximity.xml \
    device/motorola/solana/prebuilt/etc/permissions/android.hardware.telephony.cdma.xml:/system/etc/permissions/android.hardware.telephony.cdma.xml \
    device/motorola/solana/prebuilt/etc/permissions/android.hardware.telephony.gsm.xml:/system/etc/permissions/android.hardware.telephony.gsm.xml \
    device/motorola/solana/prebuilt/etc/permissions/android.hardware.touchscreen.multitouch.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    device/motorola/solana/prebuilt/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    device/motorola/solana/prebuilt/etc/permissions/android.hardware.wifi.xml:/system/etc/permissions/android.hardware.wifi.xml \
    device/motorola/solana/prebuilt/etc/permissions/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.android.location.provider.xml:/system/etc/permissions/com.android.location.provider.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.motorola.android.tcmd.xml:/system/etc/permissions/com.motorola.android.tcmd.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.motorola.atcmd_library.xml:/system/etc/permissions/com.motorola.atcmd_library.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.motorola.device.xml:/system/etc/permissions/com.motorola.device.xml \
    device/motorola/solana/prebuilt/etc/permissions/handheld_core_hardware.xml:/system/etc/permissions/handheld_core_hardware.xml \
    device/motorola/solana/prebuilt/etc/permissions/jcifs-krb5-1.3.12.xml:/system/etc/permissions/jcifs-krb5-1.3.12.xml \

# Prebuilts
PRODUCT_COPY_FILES += \
    device/motorola/solana/prebuilt/app/Usb.apk:system/app/Usb.apk \
    device/motorola/solana/prebuilt/bin/mount_ext3.sh:system/bin/mount_ext3.sh \
    device/motorola/solana/prebuilt/bin/strace:system/bin/strace \
    device/motorola/solana/prebuilt/etc/TICameraCameraProperties.xml:system/etc/TICameraCameraProperties.xml \
    device/motorola/solana/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml \
    device/motorola/solana/prebuilt/etc/gps.conf:system/etc/gps.conf \
    device/motorola/solana/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/motorola/solana/prebuilt/etc/powervr.ini:system/etc/powervr.ini \
    device/motorola/solana/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/motorola/solana/prebuilt/etc/wifi/tiwlan_ap.ini:system/etc/wifi/tiwlan_ap.ini \
    device/motorola/solana/prebuilt/etc/wifi/tiwlan.ini:system/etc/wifi/tiwlan.ini \
    device/motorola/solana/prebuilt/usr/keychars/omap-keypad.kcm.bin:system/usr/keychars/omap-keypad.kcm.bin \
    device/motorola/solana/prebuilt/usr/keylayout/omap-keypad.kl:system/usr/keylayout/omap-keypad.kl \

# Audio sucks currently for Motorola.  They've customized alsa-sound and while I'm working it out, I'll use phone libs.  blech.
#    device/motorola/solana/prebuilt/audio/libaudio.so:/system/lib/libaudio.so \
#    device/motorola/solana/prebuilt/audio/libaudiopolicy.so:/system/lib/libaudiopolicy.so \

PRODUCT_COPY_FILES += \
    device/motorola/solana/prebuilt/audio/acoustics.default.so:/system/lib/hw/acoustics.default.so \
    device/motorola/solana/prebuilt/audio/alsa.default.so:/system/lib/hw/alsa.default.so \
    device/motorola/solana/prebuilt/audio/alsa.omap4.so:/system/lib/hw/alsa.omap4.so \
    device/motorola/solana/prebuilt/audio/libaudio_ext.so:/system/lib/libaudio_ext.so \
    device/motorola/solana/prebuilt/audio/libaudiopolicy_ext.so:/system/lib/libaudiopolicy_ext.so \
    device/motorola/solana/prebuilt/audio/libasound.so:/system/lib/libasound.so \
    device/motorola/solana/prebuilt/audio/libmediaext.so:/system/lib/libmediaext.so \

# HW Libs
PRODUCT_PACKAGES += \
    gralloc.omap4 \
    gralloc.default \

# Audio HAL
#PRODUCT_PACKAGES += \
#    alsa.omap4 \
#    acoustics.default \
#    alsa.default \

# Thermal Manager
PRODUCT_PACKAGES += \
    libconfig \
    libthermal_manager \
    thermaldaemon \

# Sound / Media
#    libaudio \
#    libaudiopolicy \

PRODUCT_PACKAGES += \
    libbundlewrapper \
    libreverbwrapper \
    libvisualizer \

# Modem
PRODUCT_PACKAGES += \
    libaudiomodemgeneric \
    libreference-cdma-sms \

# OMX
PRODUCT_PACKAGES += \
    OMXCore \
    libOMX_CoreOsal \
    libOMX_Core \
    libomx_rpc \
    libomx_proxy_common \
    libOMX.TI.DUCATI1.VIDEO.H264D \
    libOMX.TI.DUCATI1.VIDEO.MPEG4D \
    libOMX.TI.DUCATI1.VIDEO.VP6D \
    libOMX.TI.DUCATI1.VIDEO.VP7D \
    libOMX.TI.DUCATI1.VIDEO.H264E \
    libOMX.TI.DUCATI1.VIDEO.MPEG4E \
    libOMX.TI.DUCATI1.IMAGE.JPEGD \
    libOMX.TI.DUCATI1.VIDEO.CAMERA \
    libOMX.TI.DUCATI1.MISC.SAMPLE \
    libOMX.TI.DUCATI1.VIDEO.DECODER \
    libOMX_ResourceManagerProxy \
    libVendor_ti_omx \
    libVendor_ti_omx_config_parser \
    libstagefrighthw \
    libLCML \
    libOMX.TI.Video.Decoder \
    libOMX.TI.Video.encoder \

# OMX Binaries
PRODUCT_PACKAGES += \
    OMXPolicyManager \
    OMXResourceManager \

# Syslink and Tiler
PRODUCT_PACKAGES += \
    libd2cmap \
    libipc \
    libipcutils \
    libnotify \
    libomap_mm_library_jni \
    librcm \
    libsyslink_ipc_listener \
    libsysmgr \
    libtimemmgr \
    dmm_daemontest.out \
    ducati_load.out \
    event_listener.out \
    gateMPApp.out \
    heapBufMPApp.out \
    heapMemMPApp.out \
    interm3.out \
    listMPApp.out \
    memmgrserver.out \
    messageQApp.out \
    nameServerApp.out \
    notifyping.out \
    procMgrApp.out \
    rcm_daemontest.out \
    rcm_multiclienttest.out \
    rcm_multitest.out \
    rcm_multithreadtest.out \
    rcm_singletest.out \
    sharedRegionApp.out \
    slpmresources.out \
    slpmtest.out \
    slpmtransport.out \
    syslink_daemon.out \
    syslink_tilertest.out \
    syslink_trace_daemon.out \
    utilsApp.out \

# Opencore
#PRODUCT_PACKAGES += \
#    libopencore_common \

# TI CameraHal
PRODUCT_PACKAGES += \
    libtiutils \
    libcamera \
    libfakecameraadapter \
    libomxcameraadapter \

#libskiahw-omap4
PRODUCT_PACKAGES += \
    libskiahwdec \
    SkLibTiJpeg_Test \

# Overlay
PRODUCT_PACKAGES += \
    overlay.omap4 \

# FM Radio
PRODUCT_PACKAGES += \
    libfmchr \
    libfm_stack \
    libmcphal \

# Framework
PRODUCT_PACKAGES += \

# Wifi
PRODUCT_PACKAGES += \
    libtiOsLib \
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

# Lights
#PRODUCT_PACKAGES += \
#    lights.solana \

# Sensors
#PRODUCT_PACKAGES += \
#    sensors.solana \

# Release utilities
PRODUCT_PACKAGES += \
    solana_releaseutils-check_kernel \
    solana_releaseutils-finalize_release \
    solana_releaseutils-mke2fs \
    solana_releaseutils-tune2fs

# Libs
PRODUCT_PACKAGES += \
    libRS \
    librs_jni \
    libSR_AudioIn \
    libicui18n \
    lubicuuc \
    libjni_latinime \
    libvorbisidec \

# Tests -- Can remove later
PRODUCT_PACKAGES += \
    d2c_test \
    memmgr_test \
    utils_test \
    tiler_ptest \
    overlay_test \
    camera_test \
    VideoEncTest \
    omx_tests \

# stuff for Safestrap Bootmenu
#PRODUCT_PACKAGES += \
#    safestrapmenu \
#    2nd-init \


FRAMEWORKS_BASE_SUBDIRS += \
    $(addsuffix /java, omapmmlib)

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# high-density artwork where available
PRODUCT_LOCALES += hdpi
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

$(call inherit-product-if-exists, vendor/motorola/solana/solana-vendor.mk)

# stuff common to all Motorola phones -- disabled for Sandbox
#$(call inherit-product, device/motorola/common/common_hijack.mk)


$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_NAME := full_solana
PRODUCT_DEVICE := solana


