#
# This is the product configuration for a full solana
#

# The gps config appropriate for this device
#$(call inherit-product, device/common/gps/gps_us_supl.mk)

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
    device/motorola/solana/prebuilt/etc/permissions/com.cequint.platform.xml:/system/etc/permissions/com.cequint.platform.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.motorola.android.camera.xml:/system/etc/permissions/com.motorola.android.camera.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.motorola.android.customization.xml:/system/etc/permissions/com.motorola.android.customization.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.motorola.android.datamanager_library.xml:/system/etc/permissions/com.motorola.android.datamanager_library.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.motorola.android.dlna_library.xml:/system/etc/permissions/com.motorola.android.dlna_library.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.motorola.android.drm1config.xml:/system/etc/permissions/com.motorola.android.drm1config.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.motorola.android.drmcommonconfig.xml:/system/etc/permissions/com.motorola.android.drmcommonconfig.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.motorola.android.iextdispservice.xml:/system/etc/permissions/com.motorola.android.iextdispservice.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.motorola.android.imirrorservice.xml:/system/etc/permissions/com.motorola.android.imirrorservice.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.motorola.android.mediasyncconfig.xml:/system/etc/permissions/com.motorola.android.mediasyncconfig.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.motorola.android.mobad.xml:/system/etc/permissions/com.motorola.android.mobad.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.motorola.android.nativehdmiapis_v1.xml:/system/etc/permissions/com.motorola.android.nativehdmiapis_v1.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.motorola.android.storage_library.xml:/system/etc/permissions/com.motorola.android.storage_library.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.motorola.android.tcmd.xml:/system/etc/permissions/com.motorola.android.tcmd.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.motorola.android.widget.xml:/system/etc/permissions/com.motorola.android.widget.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.motorola.app.admin_library.xml:/system/etc/permissions/com.motorola.app.admin_library.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.motorola.atcmd_library.xml:/system/etc/permissions/com.motorola.atcmd_library.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.motorola.device.xml:/system/etc/permissions/com.motorola.device.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.nbi.android.xml:/system/etc/permissions/com.nbi.android.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.scalado.android.photoeditor.xml:/system/etc/permissions/com.scalado.android.photoeditor.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.scalado.caps.xml:/system/etc/permissions/com.scalado.caps.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.softwareimaging.mot.xml:/system/etc/permissions/com.softwareimaging.mot.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.vzw.android.hux.xml:/system/etc/permissions/com.vzw.android.hux.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.vzw.android.smart.xml:/system/etc/permissions/com.vzw.android.smart.xml \
    device/motorola/solana/prebuilt/etc/permissions/com.vzw.android.xml:/system/etc/permissions/com.vzw.android.xml \
    device/motorola/solana/prebuilt/etc/permissions/handheld_core_hardware.xml:/system/etc/permissions/handheld_core_hardware.xml \
    device/motorola/solana/prebuilt/etc/permissions/jcifs-krb5-1.3.12.xml:/system/etc/permissions/jcifs-krb5-1.3.12.xml \
    device/motorola/solana/prebuilt/etc/permissions/platform.xml:/system/etc/permissions/platform.xml \

# Prebuilts
PRODUCT_COPY_FILES += \
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


# HW Libs
PRODUCT_PACKAGES += \
    acoustics.default \
    overlay.omap4 \
#    alsa.omap4 \ 
#    alsa.default \ libaudio = 100k less in size than file from phone -- was generating errors.
#    lights.solana \
#    sensors.solana \

# Soundfx
PRODUCT_PACKAGES += \
    libbundlewrapper \
    libreverbwrapper \
    libvisualizer \

# OMX -- have to copy the following into out/target/product/solana/obj/lib for now
#   libhdr_interface.so \ requires vendor/arcsoft
PRODUCT_PACKAGES += \
    OMXCore \
    libOMX_CoreOsal \
    libOMX_Core \
    libomx_proxy_common \
    libomx_rpc \
    libOMX.TI.DUCATI1.IMAGE.JPEGD \
    libOMX.TI.DUCATI1.MISC.SAMPLE \
    libOMX.TI.DUCATI1.VIDEO.CAMERA \
    libOMX.TI.DUCATI1.VIDEO.DECODER \
    libOMX.TI.DUCATI1.VIDEO.H264D \
    libOMX.TI.DUCATI1.VIDEO.H264E \
    libOMX.TI.DUCATI1.VIDEO.MPEG4D \
    libOMX.TI.DUCATI1.VIDEO.MPEG4E \
    libOMX.TI.DUCATI1.VIDEO.VP6D \
    libOMX.TI.DUCATI1.VIDEO.VP7D \
    libVendor_ti_omx \
    libVendor_ti_omx_config_parser \
    libomx_proxy_common \
    libomx_rpc \
    libomxcameraadapter \
    libstagefrighthw \
    libopencore_common \

# FM Radio
PRODUCT_PACKAGES += \
    libfmchr.so \
    libfm_stack \
    libmcphal \

# Framework
PRODUCT_PACKAGES += \
    libicui18n \
    lubicuuc \
    libjni_latinime \
    libmedia \
    libRS \
    libvorbisidec \

# Syslink and Tiler
PRODUCT_PACKAGES += \
    libcamera \
    libd2cmap \
    libipc \
    libipcutils \
    libnotify \
    libomap_mm_library_jni \
    librcm \
    libsyslink_ipc_listener \
    libsysmgr \
    libtimemmgr \
    libtiutils \
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

# Wifi
PRODUCT_PACKAGES += \
    libtiOsLib \
    libCustomWifi \
    wlan_loader \
    tiap_loader \
    wlan_cu \
    wpa_supplicant.conf \
    dhcpcd.conf

# Release utilities
PRODUCT_PACKAGES += \
    solana_releaseutils-check_kernel \
    solana_releaseutils-finalize_release \
    solana_releaseutils-mke2fs \
    solana_releaseutils-tune2fs

# Misc
#   libreference-ril \
PRODUCT_PACKAGES += \
    libreference-cdma-sms \
    libSR_AudioIn \
    Usb \

# Add motobox symlinks
#MOTOBOX_TOOLS := getconfig masterclear ptf setconfig test
#SYMLINKS := $(addprefix /system/bin/,$(MOTOBOX_TOOLS))
#$(SYMLINKS): MOTOBOX_BINARY := motobox
#$(SYMLINKS): $(LOCAL_INSTALLED_MODULE) $(LOCAL_PATH)/Android.mk
#	@echo "Symlink: $@ -> $(MOTOBOX_BINARY)"
#	@mkdir -p $(dir $@)
#	@rm -rf $@
#	$(hide) ln -sf $(MOTOBOX_BINARY) $@
#ALL_DEFAULT_INSTALLED_MODULES += $(SYMLINKS)
#
# We need this so that the installed files could be picked up based on the
# local module name
#ALL_MODULES.$(LOCAL_MODULE).INSTALLED := \
#    $(ALL_MODULES.$(LOCAL_MODULE).INSTALLED) $(SYMLINKS)


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


