#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

DEVICE=solana

mkdir -p ../../../vendor/motorola/$DEVICE/proprietary

# /system/app

# /system/bin
# [ Filter out: /frameworks/base/cmds ]
# [ Filter out: /dalvik ]
# [ Filter out: /external ]
# [ Filter out: *.out ]
# [ Filter out: busybox replacement ]
# [ Filter out: build/core/user_tags.mk ]
adb pull /system/bin/Hostapd ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/IttiamAacEncoder_Test ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/akmd2 ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/ap_gain.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/ap_gain_mmul.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/batch ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/battd ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/btcmd ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/bthelp ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/bttest_mot ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/bugtogo.sh ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/charge_only_mode ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/chat-ril ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/d2c_test ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/dbvc_atvc_property_set ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/dlnasrv ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/dmt ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/dumpe2fs ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/dund ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/ecckeyd ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/enable_mdm_usb_suspend.sh ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/enc_mgt_tool ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/encryption_test ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/fbread ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/ftmipcd ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/gkilogd ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/hdcp-mknod ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/ip ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/iptables ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/loadpreinstalls.sh ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/logcat ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/mdm_panicd ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/memtest_mode ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/modemlog ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/mot_boot_mode ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/motobox ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/napics.sh ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/omx_tests ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/pppd-ril ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/pvrsrvinit ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/secclkd ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/smc_pa_ctrl ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/start_enc_mgt_tool.sh ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/startup_smc.sh ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/tcmd ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/tcmdhelp ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/testpppd ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/tiap_loader ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/tstmetainfo ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/tty2ttyd ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/tund ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/uim-sysfs ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/usbd ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/vpnclientpm ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/whisperd ../../../vendor/motorola/$DEVICE/proprietary


# /system/etc
adb pull /system/etc/01_Vendor_ti_omx.cfg ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/backup_targets.csv ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/btpan.conf ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/dbus.conf ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/ecryptfs.exc ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/ecryptfs.tab ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/event-log-tags ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/excluded-input-devices.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/hdmiSolDefLg.gif ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/hdmiSolDefSm.gif ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/opl.dat.enc ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/priority_notifications_config.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/pvplayer.cfg ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/smc_android_cfg.ini ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/smc_pa.ift ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/smc_pa_pk_4_ipa.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/supportedlocales.conf ../../../vendor/motorola/$DEVICE/proprietary

# /system/etc/firmware
adb pull /system/etc/firmware/TIInit_10.5.20.bts ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/firmware/TIInit_10.6.15.bts ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/firmware/ap_bt_data.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/firmware/fm_rx_init_1283.2.bts ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/firmware/fmc_init_1283.2.bts ../../../vendor/motorola/$DEVICE/proprietary

# /system/nuance
adb pull /system/etc/nuance/vsuite_config.xml ../../../vendor/motorola/$DEVICE/proprietary

# /system/etc/omapcam
adb pull /system/etc/omapcam/R8_MVEN002_LD2_ND0_IR0_SH0_FL1_SVEN002_DCCID1039.cfg ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/SEN2.cfg ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_cid1039_capabilities.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_alg_3a_ae_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_alg_3a_ae_mms2_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_alg_3a_af_affw_dcc_tuning.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_alg_3a_af_caf_dcc_tuning.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_alg_3a_af_hllc_dcc_tuning.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_alg_3a_af_saf_dcc_tuning.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_alg_adjust_rgb2rgb_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_awb_alg_ti3_tuning.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_ducati_eff_tun.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_ducati_gamma.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_ducati_lsc_2d.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_ducati_nsf_ldc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_gbce_sw1_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_golden_module_calibration.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_h3a_aewb_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_3d_lut_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_car_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_cfai_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_cgs_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_dpc_lut_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_dpc_otf.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_ee_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_gbce_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_gic_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_lsc_poly_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_nf1_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_nf2_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_rgb2rgb_1_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_rgb2rgb_2_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_rgb2yuv_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_rsz_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_yuv444_to_yuv422_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_isif_clamp_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_isif_csc_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_iss_glbce3_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_iss_lbce_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_iss_scene_modes_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_iss_vstab_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_ldc_cac_cfg_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_ldc_cfg_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_lsc_interp.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module1.bak/cid1039_ov8820_vnf_cfg_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/module2/cid1040_ov7739_sensor_config_dcc.bin ../../../vendor/motorola/$DEVICE/proprietary

# /system/etc/permissions
adb pull /system/etc/permissions/android.hardware.location.gps.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/android.hardware.sensor.accelerometer.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/android.hardware.sensor.light.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/android.hardware.sensor.proximity.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/android.hardware.telephony.cdma.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/android.hardware.telephony.gsm.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/android.hardware.touchscreen.multitouch.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/android.hardware.wifi.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/android.software.live_wallpaper.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.android.location.provider.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.blockbuster.lib.moto.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.cequint.platform.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.google.android.maps.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.motorola.android.customization.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.motorola.android.datamanager_library.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.motorola.android.dlna_library.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.motorola.android.drm1config.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.motorola.android.drmcommonconfig.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.motorola.android.iextdispservice.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.motorola.android.imirrorservice.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.motorola.android.mediasyncconfig.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.motorola.android.mobad.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.motorola.android.nativehdmiapis_v1.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.motorola.android.storage_library.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.motorola.android.tcmd.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.motorola.android.widget.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.motorola.app.admin_library.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.motorola.atcmd_library.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.motorola.device.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.nbi.android.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.netflix.android.mediaclient.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.scalado.android.photoeditor.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.scalado.caps.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.softwareimaging.mot.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.vzw.android.hux.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.vzw.android.smart.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.vzw.android.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/handheld_core_hardware.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/jcifs-krb5-1.3.12.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/platform.xml ../../../vendor/motorola/$DEVICE/proprietary

# /system/etc/* (other dirs)
adb pull /system/etc/ppp/peers/pppd-ril.options ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/security/mancacerts.zip ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/security/oprcacerts.zip ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/security/suplcerts.bks ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/VideoEditorLite/mve.ini ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/wifi/fw_wlan1281.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/wifi/fw_wlan1281_AP.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/wifi/hostapd.conf.templet ../../../vendor/motorola/$DEVICE/proprietary

# /system/lib/* (dirs)
adb pull /system/lib/ducati/base_image_app_m3.xem3 ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/ducati/Notify_MPUSYS_Test_Core0.xem3 ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/ducati/Notify_MPUAPP_reroute_Test_Core1.xem3 ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/ducati/Notify_MPUSYS_reroute_Test_Core0.xem3 ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/egl/libEGL_POWERVR_SGX540_120.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv2_POWERVR_SGX540_120.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/egl/libeglinfo.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/egl/libgles1_texture_stream.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/egl/libgles2_texture_stream.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/hw/acoustics.default.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/hw/alsa.default.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/hw/alsa.omap4.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/hw/gps.solana.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/hw/gralloc.omap4.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/hw/lights.solana.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/hw/overlay.omap4.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/hw/sensors.solana.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/soundfx/libbundlewrapper.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/soundfx/libreverbwrapper.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/soundfx/libvisualizer.so ../../../vendor/motorola/$DEVICE/proprietary

# /system/lib
adb pull /system/lib/libFMRadio.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libIMGegl.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libOMX.ITTIAM.AAC.encode.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libOMX.ITTIAM.WMA.decode.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libPVRScopeServices.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libPhotoEditor.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libRS.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libSR_AudioIn.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libSwypeCore.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libWifiAPHardware.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libXmp_jni.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libadkutils.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libamcm.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libarcaudiogetinfo.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libarcomx_evrcdec_sharedlibrary.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libarcomx_qcelpdec_sharedlibrary.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libarcomx_qcelpenc_sharedlibrary.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libarcomx_wmadec_sharedlibrary.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libarcplatform.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libarcsoft.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libarcstagefright.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libasound.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libaudio.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libaudio_ext.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libaudioeffect_jni.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libaudioflinger.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libaudiopolicy.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libaudiopolicy_ext.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libbattd.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libbcbmsg.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libcameraservice.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libcaps.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libcapsjava.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libdlnahttpjni.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libdlnajni.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libdlnaprofileparser.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libdlnasysjni.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libdmengine.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libdmjavaplugin.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libdrm.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libexempi.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libextdisp.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libfm_stack.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libfmchr.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libfmradio_jni.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libfmradioplayer.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libgdx.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libglslcompiler.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libgui.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libhardware.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libhardware_legacy.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libhdcp.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libhdmi.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libhdr_interface.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libhostapd_client.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libicui18n.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libicuuc.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libimage_jni.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libipc.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libipcutils.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libiprouteutil.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libipsec.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libjanus.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libjni_latinime.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libjni_nwp.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libjni_pinyinime.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libjnigraphics.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libjpeg.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libkpilogger.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/liblog.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libm.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmcphal.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmedia.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmedia_jni.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmediaext.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmediaplayerservice.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmetainfo.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmirror.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmirrorjni.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmot_atcmd.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmot_atcmd_mflex.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmot_bluetooth_jni.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmot_bthid_jni.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmot_btpan_jni.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmot_led.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmotdrm1.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmotdrm1_jni.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmoto_mdmctrl.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmoto_netutil.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmoto_ril.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmotodbgutils.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmtp_jni.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmtpstack.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libnative_renderer.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libnativedrm1.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libnativehelper.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libnbgm.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libnetlink.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libnetutils.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libnfc_ndef.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libnmea.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libnotify.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libomx_aacdec_sharedlibrary.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libomx_amrdec_sharedlibrary.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libomx_amrenc_sharedlibrary.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libomx_arcomxcore_sharedlibrary.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libomx_avcdec_sharedlibrary.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libomx_m4vdec_sharedlibrary.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libomx_mp3dec_sharedlibrary.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libomx_proxy_common.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libomx_rpc.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libomx_sharedlibrary.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libomxcameraadapter.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libopencore_author.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libopencore_common.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libopencore_download.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libopencore_downloadreg.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libopencore_mp4local.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libopencore_mp4localreg.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libopencore_net_support.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libopencore_player.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libopencore_rtsp.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libopencore_rtspreg.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libopencorehw.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libpanorama.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libpanorama_jni.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libphotoflow.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libpixelflinger.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libpkip.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libpppd_plugin-ril.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libprojectM.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libprovlib.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libpvr2d.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libpvrANDROID_WSEGL.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libquicksec.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/librcm.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/librds_util.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libreference-cdma-sms.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libreference-ril.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libril.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libril_rds.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/librs_jni.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/librtp_jni.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libscalado.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libsensorservice.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libskia.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libskiagl.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libsmapi.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libsonivox.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libsoundpool.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libspellingcheckengine.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libsqlite.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libsqlite_jni.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libsrec_jni.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libsrv_init.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libsrv_um.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libssl.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libssmgr.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libstagefright.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libstagefright_amrnb_common.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libstagefright_avc_common.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libstagefright_color_conversion.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libstagefright_enc_common.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libstagefright_foundation.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libstagefright_omx.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libstagefrighthw.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libstdc++.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libstlport.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libsurfaceflinger.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libsurfaceflinger_client.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libsyslink_ipc_listener.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libsysmgr.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libsystem_server.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libsysutils.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libtalk_jni.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libtexture_mem.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libtf_crypto_sst.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libthread_db.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libtimemmgr.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libtiutils.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libtpa.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libtpa_core.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libttspico.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libttssynthproxy.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libui.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libui3d.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libusc.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libutils.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libvideoeditorlite.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libvoicesearch.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libvorbisenc.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libvorbisidec.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libvpnclient_jni.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libvsuite_mot_vs32_cmb103.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libwbxmlparser.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libwebcore.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libwpa_client.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libxmpcore.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libz.so ../../../vendor/motorola/$DEVICE/proprietary

# /system/tts/* (dirs)
adb pull /system/tts/lang_pico/en-US_lh0_sg.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/tts/lang_pico/en-US_ta.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/tts/lang_pico/es-ES_ta.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/tts/lang_pico/es-ES_zl0_sg.bin ../../../vendor/motorola/$DEVICE/proprietary

# /system/usr/* (dirs)
adb pull /system/usr/icu/icudt44l.dat ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keychars/cdma_solana-keypad.kcm.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keychars/qwerty.kcm.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keychars/qwerty2.kcm.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keychars/usb_keyboard_102_en_us.kcm.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keylayout/AVRCP.kl ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keylayout/cdma_solana-keypad.kl ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keylayout/cpcap-key.kl ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keylayout/qwerty.kl ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keylayout/usb_keyboard_102_en_us.kl ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/share/alsa/alsa.conf ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/share/alsa/init/00main ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/share/alsa/init/default ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/share/alsa/init/hda ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/share/alsa/init/help ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/share/alsa/init/info ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/share/alsa/init/test ../../../vendor/motorola/$DEVICE/proprietary
#adb pull /system/usr/share/alsa/cards/* ../../../vendor/motorola/$DEVICE/proprietary

# /system/xbin
adb pull /system/xbin/backup ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/drm1_func_test ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/run_backup ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/run_restore ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/ssmgrd ../../../vendor/motorola/$DEVICE/proprietary

./extract-files-vendor-blob.sh
./setup-makefiles.sh
