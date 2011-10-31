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
adb pull /system/app/ChargeOnlyMode.apk ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/app/GlobalNwSwitch.apk ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/app/GlobalUnplug.apk ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/app/PhoneConfig.apk ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/app/ProgramMenu.apk ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/app/ProgramMenuSystem.apk ../../../vendor/motorola/$DEVICE/proprietary

# /system/bin ** Probably PRODUCT_PACKAGES **
adb pull /system/bin/fmradioserver ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/tf_daemon ../../../vendor/motorola/$DEVICE/proprietary

# /system/bin
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
adb pull /system/bin/loadpreinstalls.sh ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/mdm_panicd ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/memtest_mode ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/modemlog ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/mot_boot_mode ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/motobox ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/napics.sh ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/pppd-ril ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/pvrsrvinit ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/rild ../../../vendor/motorola/$DEVICE/proprietary
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
adb pull /system/bin/usbd ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/vold ../../../vendor/motorola/$DEVICE/proprietary
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
adb pull /system/etc/omapcam/R8_MVEN002_LD2_ND0_IR0_SH0_FL1_SVEN002_DCCID1039.cfg ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/omapcam/SEN2.cfg ../../../vendor/motorola/$DEVICE/proprietary

# /system/etc/permissions
adb pull /system/etc/permissions/android.hardware.camera.front.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/android.hardware.camera.flash-autofocus.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/android.hardware.location.gps.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/android.hardware.sensor.accelerometer.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/android.hardware.sensor.light.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/android.hardware.sensor.proximity.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/android.hardware.telephony.cdma.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/android.hardware.telephony.gsm.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/android.hardware.touchscreen.multitouch.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/android.hardware.wifi.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/android.software.live_wallpaper.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.android.location.provider.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.cequint.platform.xml ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/permissions/com.motorola.android.camera.xml ../../../vendor/motorola/$DEVICE/proprietary
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
adb pull /system/etc/spellchecker/en_US.aff ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/spellchecker/en_US.dic ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/spellchecker/es_ES.aff ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/spellchecker/es_ES.dic ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/updatecmds/google_generic_update.txt ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/VideoEditorLite/mve.ini ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/vsensor.d/MeaningFulLocation.vsensor ../../../vendor/motorola/$DEVICE/proprietary
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
adb pull /system/lib/hw/sensors.solana.so ../../../vendor/motorola/$DEVICE/proprietary

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
adb pull /system/lib/libaudio.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libaudio_ext.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libaudiopolicy.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libaudiopolicy_ext.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libbattd.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libbcbmsg.so ../../../vendor/motorola/$DEVICE/proprietary
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
adb pull /system/lib/libhdcp.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libhdmi.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libhdr_interface.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libhostapd_client.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libimage_jni.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libipsec.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libjanus.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libjni_nwp.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libjni_pinyinime.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libkpilogger.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmediaext.so ../../../vendor/motorola/$DEVICE/proprietary
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
adb pull /system/lib/libnetutils.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libnmea.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libomx_aacdec_sharedlibrary.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libomx_amrdec_sharedlibrary.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libomx_amrenc_sharedlibrary.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libomx_arcomxcore_sharedlibrary.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libomx_avcdec_sharedlibrary.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libomx_m4vdec_sharedlibrary.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libomx_mp3dec_sharedlibrary.so ../../../vendor/motorola/$DEVICE/proprietary
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
adb pull /system/lib/libpkip.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libpppd_plugin-ril.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libprojectM.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libprovlib.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libpvr2d.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libpvrANDROID_WSEGL.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libquicksec.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/librds_util.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libreference-ril.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libril.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libril_rds.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libscalado.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libsmapi.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libspellingcheckengine.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libsrv_init.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libsrv_um.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libssl.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libssmgr.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libtalk_jni.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libtexture_mem.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libtf_crypto_sst.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libtpa.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libtpa_core.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libttssynthproxy.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libui3d.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libusc.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libutils.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libvideoeditorlite.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libvoicesearch.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libvorbisenc.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libvpnclient_jni.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libvsuite_mot_vs32_cmb103.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libwbxmlparser.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libxmpcore.so ../../../vendor/motorola/$DEVICE/proprietary

# /system/tts/* (dirs)
adb pull /system/tts/lang_pico/en-US_lh0_sg.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/tts/lang_pico/en-US_ta.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/tts/lang_pico/es-ES_ta.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/tts/lang_pico/es-ES_zl0_sg.bin ../../../vendor/motorola/$DEVICE/proprietary

# /system/usr/* (dirs)
adb pull /system/usr/icu/icudt44l.dat ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keychars/qwerty.kcm.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keychars/qwerty2.kcm.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keychars/usb_keyboard_102_en_us.kcm.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keylayout/AVRCP.kl ../../../vendor/motorola/$DEVICE/proprietary
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

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/motorola/$DEVICE/$DEVICE-vendor-blobs.mk
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

# This file is generated by device/motorola/solana/extract-files.sh

# system/app
PRODUCT_COPY_FILES += \\
    vendor/motorola/__DEVICE__/proprietary/ChargeOnlyMode.apk:/system/app/ChargeOnlyMode.apk \\
    vendor/motorola/__DEVICE__/proprietary/PhoneConfig.apk:/system/app/PhoneConfig.apk \\
    vendor/motorola/__DEVICE__/proprietary/ProgramMenu.apk:/system/app/ProgramMenu.apk \\
    vendor/motorola/__DEVICE__/proprietary/ProgramMenuSystem.apk:/system/app/ProgramMenuSystem.apk \\

# system/bin
#vendor/motorola/__DEVICE__/proprietary/fmradioserver:/system/bin/fmradioserver \\
#vendor/motorola/__DEVICE__/proprietary/IttiamAacEncoder_Test:/system/bin/IttiamAacEncoder_Test \\
PRODUCT_COPY_FILES += \\
vendor/motorola/__DEVICE__/proprietary/tf_daemon:/system/bin/tf_daemon \\
vendor/motorola/__DEVICE__/proprietary/Hostapd:/system/bin/Hostapd \\
vendor/motorola/__DEVICE__/proprietary/akmd2:/system/bin/akmd2 \\
vendor/motorola/__DEVICE__/proprietary/ap_gain.bin:/system/bin/ap_gain.bin \\
vendor/motorola/__DEVICE__/proprietary/ap_gain_mmul.bin:/system/bin/ap_gain_mmul.bin \\
vendor/motorola/__DEVICE__/proprietary/batch:/system/bin/batch \\
vendor/motorola/__DEVICE__/proprietary/battd:/system/bin/battd \\
vendor/motorola/__DEVICE__/proprietary/btcmd:/system/bin/btcmd \\
vendor/motorola/__DEVICE__/proprietary/bthelp:/system/bin/bthelp \\
vendor/motorola/__DEVICE__/proprietary/bttest_mot:/system/bin/bttest_mot \\
vendor/motorola/__DEVICE__/proprietary/bugtogo.sh:/system/bin/bugtogo.sh \\
vendor/motorola/__DEVICE__/proprietary/charge_only_mode:/system/bin/charge_only_mode \\
vendor/motorola/__DEVICE__/proprietary/chat-ril:/system/bin/chat-ril \\
vendor/motorola/__DEVICE__/proprietary/dbvc_atvc_property_set:/system/bin/dbvc_atvc_property_set \\
vendor/motorola/__DEVICE__/proprietary/dlnasrv:/system/bin/dlnasrv \\
vendor/motorola/__DEVICE__/proprietary/dmt:/system/bin/dmt \\
vendor/motorola/__DEVICE__/proprietary/dumpe2fs:/system/bin/dumpe2fs \\
vendor/motorola/__DEVICE__/proprietary/dund:/system/bin/dund \\
vendor/motorola/__DEVICE__/proprietary/ecckeyd:/system/bin/ecckeyd \\
vendor/motorola/__DEVICE__/proprietary/enable_mdm_usb_suspend.sh:/system/bin/enable_mdm_usb_suspend.sh \\
vendor/motorola/__DEVICE__/proprietary/enc_mgt_tool:/system/bin/enc_mgt_tool \\
vendor/motorola/__DEVICE__/proprietary/encryption_test:/system/bin/encryption_test \\
vendor/motorola/__DEVICE__/proprietary/fbread:/system/bin/fbread \\
vendor/motorola/__DEVICE__/proprietary/ftmipcd:/system/bin/ftmipcd \\
vendor/motorola/__DEVICE__/proprietary/gkilogd:/system/bin/gkilogd \\
vendor/motorola/__DEVICE__/proprietary/hdcp-mknod:/system/bin/hdcp-mknod \\
vendor/motorola/__DEVICE__/proprietary/ip:/system/bin/ip \\
vendor/motorola/__DEVICE__/proprietary/loadpreinstalls.sh:/system/bin/loadpreinstalls.sh \\
vendor/motorola/__DEVICE__/proprietary/mdm_panicd:/system/bin/mdm_panicd \\
vendor/motorola/__DEVICE__/proprietary/memtest_mode:/system/bin/memtest_mode \\
vendor/motorola/__DEVICE__/proprietary/modemlog:/system/bin/modemlog \\
vendor/motorola/__DEVICE__/proprietary/mot_boot_mode:/system/bin/mot_boot_mode \\
vendor/motorola/__DEVICE__/proprietary/motobox:/system/bin/motobox \\
vendor/motorola/__DEVICE__/proprietary/napics.sh:/system/bin/napics.sh \\
vendor/motorola/__DEVICE__/proprietary/pppd-ril:/system/bin/pppd-ril \\
vendor/motorola/__DEVICE__/proprietary/pvrsrvinit:/system/bin/pvrsrvinit \\
vendor/motorola/__DEVICE__/proprietary/rild:/system/bin/rild \\
vendor/motorola/__DEVICE__/proprietary/secclkd:/system/bin/secclkd \\
vendor/motorola/__DEVICE__/proprietary/smc_pa_ctrl:/system/bin/smc_pa_ctrl \\
vendor/motorola/__DEVICE__/proprietary/start_enc_mgt_tool.sh:/system/bin/start_enc_mgt_tool.sh \\
vendor/motorola/__DEVICE__/proprietary/startup_smc.sh:/system/bin/startup_smc.sh \\
vendor/motorola/__DEVICE__/proprietary/tcmd:/system/bin/tcmd \\
vendor/motorola/__DEVICE__/proprietary/tcmdhelp:/system/bin/tcmdhelp \\
vendor/motorola/__DEVICE__/proprietary/testpppd:/system/bin/testpppd \\
vendor/motorola/__DEVICE__/proprietary/tiap_loader:/system/bin/tiap_loader \\
vendor/motorola/__DEVICE__/proprietary/tstmetainfo:/system/bin/tstmetainfo \\
vendor/motorola/__DEVICE__/proprietary/tty2ttyd:/system/bin/tty2ttyd \\
vendor/motorola/__DEVICE__/proprietary/tund:/system/bin/tund \\
vendor/motorola/__DEVICE__/proprietary/usbd:/system/bin/usbd \\
vendor/motorola/__DEVICE__/proprietary/vold:/system/bin/vold \\
vendor/motorola/__DEVICE__/proprietary/vpnclientpm:/system/bin/vpnclientpm \\
vendor/motorola/__DEVICE__/proprietary/whisperd:/system/bin/whisperd \\

# system/etc
PRODUCT_COPY_FILES += \\
vendor/motorola/__DEVICE__/proprietary/01_Vendor_ti_omx.cfg:/system/etc/01_Vendor_ti_omx.cfg \\
vendor/motorola/__DEVICE__/proprietary/backup_targets.csv:/system/etc/backup_targets.csv \\
vendor/motorola/__DEVICE__/proprietary/btpan.conf:/system/etc/btpan.conf \\
vendor/motorola/__DEVICE__/proprietary/dbus.conf:/system/etc/dbus.conf \\
vendor/motorola/__DEVICE__/proprietary/ecryptfs.exc:/system/etc/ecryptfs.exc \\
vendor/motorola/__DEVICE__/proprietary/ecryptfs.tab:/system/etc/ecryptfs.tab \\
vendor/motorola/__DEVICE__/proprietary/event-log-tags:/system/etc/event-log-tags \\
vendor/motorola/__DEVICE__/proprietary/excluded-input-devices.xml:/system/etc/excluded-input-devices.xml \\
vendor/motorola/__DEVICE__/proprietary/hdmiSolDefLg.gif:/system/etc/hdmiSolDefLg.gif \\
vendor/motorola/__DEVICE__/proprietary/hdmiSolDefSm.gif:/system/etc/hdmiSolDefSm.gif \\
vendor/motorola/__DEVICE__/proprietary/opl.dat.enc:/system/etc/opl.dat.enc \\
vendor/motorola/__DEVICE__/proprietary/priority_notifications_config.xml:/system/etc/priority_notifications_config.xml \\
vendor/motorola/__DEVICE__/proprietary/pvplayer.cfg:/system/etc/pvplayer.cfg \\
vendor/motorola/__DEVICE__/proprietary/smc_android_cfg.ini:/system/etc/smc_android_cfg.ini \\
vendor/motorola/__DEVICE__/proprietary/smc_pa.ift:/system/etc/smc_pa.ift \\
vendor/motorola/__DEVICE__/proprietary/smc_pa_pk_4_ipa.bin:/system/etc/smc_pa_pk_4_ipa.bin \\
vendor/motorola/__DEVICE__/proprietary/supportedlocales.conf:/system/etc/supportedlocales.conf \\

# system/etc/(others)
PRODUCT_COPY_FILES += \\
vendor/motorola/__DEVICE__/proprietary/TIInit_10.5.20.bts:/system/etc/firmware/TIInit_10.5.20.bts \\
vendor/motorola/__DEVICE__/proprietary/TIInit_10.6.15.bts:/system/etc/firmware/TIInit_10.6.15.bts \\
vendor/motorola/__DEVICE__/proprietary/ap_bt_data.bin:/system/etc/firmware/ap_bt_data.bin \\
vendor/motorola/__DEVICE__/proprietary/fm_rx_init_1283.2.bts:/system/etc/firmware/fm_rx_init_1283.2.bts \\
vendor/motorola/__DEVICE__/proprietary/fmc_init_1283.2.bts:/system/etc/firmware/fmc_init_1283.2.bts \\
vendor/motorola/__DEVICE__/proprietary/vsuite_config.xml:/system/etc/nuance/vsuite_config.xml \\
vendor/motorola/__DEVICE__/proprietary/R8_MVEN002_LD2_ND0_IR0_SH0_FL1_SVEN002_DCCID1039.cfg:/system/etc/omapcam/R8_MVEN002_LD2_ND0_IR0_SH0_FL1_SVEN002_DCCID1039.cfg \\
vendor/motorola/__DEVICE__/proprietary/SEN2.cfg:/system/etc/omapcam/SEN2.cfg \\
vendor/motorola/__DEVICE__/proprietary/cid1039_cid1039_capabilities.bin:/system/etc/omapcam/module1.bak/cid1039_cid1039_capabilities.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_alg_3a_ae_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_alg_3a_ae_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_alg_3a_ae_mms2_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_alg_3a_ae_mms2_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_alg_3a_af_affw_dcc_tuning.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_alg_3a_af_affw_dcc_tuning.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_alg_3a_af_caf_dcc_tuning.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_alg_3a_af_caf_dcc_tuning.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_alg_3a_af_hllc_dcc_tuning.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_alg_3a_af_hllc_dcc_tuning.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_alg_3a_af_saf_dcc_tuning.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_alg_3a_af_saf_dcc_tuning.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_alg_adjust_rgb2rgb_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_alg_adjust_rgb2rgb_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_awb_alg_ti3_tuning.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_awb_alg_ti3_tuning.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_ducati_eff_tun.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_ducati_eff_tun.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_ducati_gamma.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_ducati_gamma.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_ducati_lsc_2d.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_ducati_lsc_2d.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_ducati_nsf_ldc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_ducati_nsf_ldc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_gbce_sw1_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_gbce_sw1_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_golden_module_calibration.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_golden_module_calibration.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_h3a_aewb_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_h3a_aewb_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_ipipe_3d_lut_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_3d_lut_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_ipipe_car_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_car_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_ipipe_cfai_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_cfai_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_ipipe_cgs_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_cgs_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_ipipe_dpc_lut_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_dpc_lut_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_ipipe_dpc_otf.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_dpc_otf.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_ipipe_ee_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_ee_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_ipipe_gbce_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_gbce_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_ipipe_gic_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_gic_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_ipipe_lsc_poly_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_lsc_poly_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_ipipe_nf1_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_nf1_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_ipipe_nf2_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_nf2_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_ipipe_rgb2rgb_1_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_rgb2rgb_1_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_ipipe_rgb2rgb_2_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_rgb2rgb_2_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_ipipe_rgb2yuv_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_rgb2yuv_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_ipipe_rsz_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_rsz_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_ipipe_yuv444_to_yuv422_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_ipipe_yuv444_to_yuv422_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_isif_clamp_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_isif_clamp_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_isif_csc_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_isif_csc_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_iss_glbce3_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_iss_glbce3_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_iss_lbce_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_iss_lbce_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_iss_scene_modes_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_iss_scene_modes_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_iss_vstab_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_iss_vstab_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_ldc_cac_cfg_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_ldc_cac_cfg_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_ldc_cfg_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_ldc_cfg_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_lsc_interp.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_lsc_interp.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1039_ov8820_vnf_cfg_dcc.bin:/system/etc/omapcam/module1.bak/cid1039_ov8820_vnf_cfg_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/cid1040_ov7739_sensor_config_dcc.bin:/system/etc/omapcam/module2/cid1040_ov7739_sensor_config_dcc.bin \\
vendor/motorola/__DEVICE__/proprietary/pppd-ril.options:/system/etc/ppp/peers/pppd-ril.options \\
vendor/motorola/__DEVICE__/proprietary/mancacerts.zip:/system/etc/security/mancacerts.zip \\
vendor/motorola/__DEVICE__/proprietary/oprcacerts.zip:/system/etc/security/oprcacerts.zip \\
vendor/motorola/__DEVICE__/proprietary/suplcerts.bks:/system/etc/security/suplcerts.bks \\
vendor/motorola/__DEVICE__/proprietary/en_US.aff:system/etc/spellchecker/en_US.aff \\
vendor/motorola/__DEVICE__/proprietary/en_US.dic:system/etc/spellchecker/en_US.dic \\
vendor/motorola/__DEVICE__/proprietary/es_ES.aff:system/etc/spellchecker/es_ES.aff \\
vendor/motorola/__DEVICE__/proprietary/es_ES.dic:system/etc/spellchecker/es_ES.dic \\
vendor/motorola/__DEVICE__/proprietary/google_generic_update.txt:system/etc/updatecmds/google_generic_update.txt \\
vendor/motorola/__DEVICE__/proprietary/mve.ini:/system/etc/VideoEditorLite/mve.ini \\
vendor/motorola/__DEVICE__/proprietary/MeaningFulLocation.vsensor:system/etc/vsensor.d/MeaningFulLocation.vsensor \\
vendor/motorola/__DEVICE__/proprietary/fw_wlan1281.bin:/system/etc/wifi/fw_wlan1281.bin \\
vendor/motorola/__DEVICE__/proprietary/fw_wlan1281_AP.bin:/system/etc/wifi/fw_wlan1281_AP.bin \\
vendor/motorola/__DEVICE__/proprietary/hostapd.conf.templet:/system/etc/wifi/hostapd.conf.templet \\

#vendor/motorola/__DEVICE__/proprietary/libFMRadio.so:/system/lib/libFMRadio.so \\
#vendor/motorola/__DEVICE__/proprietary/libOMX.ITTIAM.AAC.encode.so:/system/lib/libOMX.ITTIAM.AAC.encode.so \\
#vendor/motorola/__DEVICE__/proprietary/libOMX.ITTIAM.WMA.decode.so:/system/lib/libOMX.ITTIAM.WMA.decode.so \\
#vendor/motorola/__DEVICE__/proprietary/libPhotoEditor.so:/system/lib/libPhotoEditor.so \\
#vendor/motorola/__DEVICE__/proprietary/libarcaudiogetinfo.so:/system/lib/libarcaudiogetinfo.so \\
#vendor/motorola/__DEVICE__/proprietary/libarcomx_evrcdec_sharedlibrary.so:/system/lib/libarcomx_evrcdec_sharedlibrary.so \\
#vendor/motorola/__DEVICE__/proprietary/libarcomx_qcelpdec_sharedlibrary.so:/system/lib/libarcomx_qcelpdec_sharedlibrary.so \\
#vendor/motorola/__DEVICE__/proprietary/libarcomx_qcelpenc_sharedlibrary.so:/system/lib/libarcomx_qcelpenc_sharedlibrary.so \\
#vendor/motorola/__DEVICE__/proprietary/libarcomx_wmadec_sharedlibrary.so:/system/lib/libarcomx_wmadec_sharedlibrary.so \\
#vendor/motorola/__DEVICE__/proprietary/libarcplatform.so:/system/lib/libarcplatform.so \\
#vendor/motorola/__DEVICE__/proprietary/libarcsoft.so:/system/lib/libarcsoft.so \\
#vendor/motorola/__DEVICE__/proprietary/libarcstagefright.so:/system/lib/libarcstagefright.so \\
#vendor/motorola/__DEVICE__/proprietary/libaudio_ext.so:/system/lib/libaudio_ext.so \\
#vendor/motorola/__DEVICE__/proprietary/libaudiopolicy_ext.so:/system/lib/libaudiopolicy_ext.so \\
#vendor/motorola/__DEVICE__/proprietary/libfmradio_jni.so:/system/lib/libfmradio_jni.so \\
#vendor/motorola/__DEVICE__/proprietary/libfmradioplayer.so:/system/lib/libfmradioplayer.so \\
#vendor/motorola/__DEVICE__/proprietary/libhdr_interface.so:/system/lib/libhdr_interface.so \\
PRODUCT_COPY_FILES += \\
vendor/motorola/__DEVICE__/proprietary/libIMGegl.so:/system/lib/libIMGegl.so \\
vendor/motorola/__DEVICE__/proprietary/libPVRScopeServices.so:/system/lib/libPVRScopeServices.so \\
vendor/motorola/__DEVICE__/proprietary/libSwypeCore.so:/system/lib/libSwypeCore.so \\
vendor/motorola/__DEVICE__/proprietary/libWifiAPHardware.so:/system/lib/libWifiAPHardware.so \\
vendor/motorola/__DEVICE__/proprietary/libXmp_jni.so:/system/lib/libXmp_jni.so \\
vendor/motorola/__DEVICE__/proprietary/libadkutils.so:/system/lib/libadkutils.so \\
vendor/motorola/__DEVICE__/proprietary/libamcm.so:/system/lib/libamcm.so \\
vendor/motorola/__DEVICE__/proprietary/libbattd.so:/system/lib/libbattd.so \\
vendor/motorola/__DEVICE__/proprietary/libbcbmsg.so:/system/lib/libbcbmsg.so \\
vendor/motorola/__DEVICE__/proprietary/libcaps.so:/system/lib/libcaps.so \\
vendor/motorola/__DEVICE__/proprietary/libcapsjava.so:/system/lib/libcapsjava.so \\
vendor/motorola/__DEVICE__/proprietary/libdlnahttpjni.so:/system/lib/libdlnahttpjni.so \\
vendor/motorola/__DEVICE__/proprietary/libdlnajni.so:/system/lib/libdlnajni.so \\
vendor/motorola/__DEVICE__/proprietary/libdlnaprofileparser.so:/system/lib/libdlnaprofileparser.so \\
vendor/motorola/__DEVICE__/proprietary/libdlnasysjni.so:/system/lib/libdlnasysjni.so \\
vendor/motorola/__DEVICE__/proprietary/libdmengine.so:/system/lib/libdmengine.so \\
vendor/motorola/__DEVICE__/proprietary/libdmjavaplugin.so:/system/lib/libdmjavaplugin.so \\
vendor/motorola/__DEVICE__/proprietary/libdrm.so:/system/lib/libdrm.so \\
vendor/motorola/__DEVICE__/proprietary/libexempi.so:/system/lib/libexempi.so \\
vendor/motorola/__DEVICE__/proprietary/libextdisp.so:/system/lib/libextdisp.so \\
vendor/motorola/__DEVICE__/proprietary/libgdx.so:/system/lib/libgdx.so \\
vendor/motorola/__DEVICE__/proprietary/libglslcompiler.so:/system/lib/libglslcompiler.so \\
vendor/motorola/__DEVICE__/proprietary/libhdcp.so:/system/lib/libhdcp.so \\
vendor/motorola/__DEVICE__/proprietary/libhdmi.so:/system/lib/libhdmi.so \\
vendor/motorola/__DEVICE__/proprietary/libhostapd_client.so:/system/lib/libhostapd_client.so \\
vendor/motorola/__DEVICE__/proprietary/libimage_jni.so:/system/lib/libimage_jni.so \\
vendor/motorola/__DEVICE__/proprietary/libipsec.so:/system/lib/libipsec.so \\
vendor/motorola/__DEVICE__/proprietary/libjanus.so:/system/lib/libjanus.so \\
vendor/motorola/__DEVICE__/proprietary/libjni_nwp.so:/system/lib/libjni_nwp.so \\
vendor/motorola/__DEVICE__/proprietary/libjni_pinyinime.so:/system/lib/libjni_pinyinime.so \\
vendor/motorola/__DEVICE__/proprietary/libkpilogger.so:/system/lib/libkpilogger.so \\
vendor/motorola/__DEVICE__/proprietary/libmediaext.so:/system/lib/libmediaext.so \\
vendor/motorola/__DEVICE__/proprietary/libmetainfo.so:/system/lib/libmetainfo.so \\
vendor/motorola/__DEVICE__/proprietary/libmirror.so:/system/lib/libmirror.so \\
vendor/motorola/__DEVICE__/proprietary/libmirrorjni.so:/system/lib/libmirrorjni.so \\
vendor/motorola/__DEVICE__/proprietary/libmot_atcmd.so:/system/lib/libmot_atcmd.so \\
vendor/motorola/__DEVICE__/proprietary/libmot_atcmd_mflex.so:/system/lib/libmot_atcmd_mflex.so \\
vendor/motorola/__DEVICE__/proprietary/libmot_bluetooth_jni.so:/system/lib/libmot_bluetooth_jni.so \\
vendor/motorola/__DEVICE__/proprietary/libmot_bthid_jni.so:/system/lib/libmot_bthid_jni.so \\
vendor/motorola/__DEVICE__/proprietary/libmot_btpan_jni.so:/system/lib/libmot_btpan_jni.so \\
vendor/motorola/__DEVICE__/proprietary/libmot_led.so:/system/lib/libmot_led.so \\
vendor/motorola/__DEVICE__/proprietary/libmotdrm1.so:/system/lib/libmotdrm1.so \\
vendor/motorola/__DEVICE__/proprietary/libmotdrm1_jni.so:/system/lib/libmotdrm1_jni.so \\
vendor/motorola/__DEVICE__/proprietary/libmoto_mdmctrl.so:/system/lib/libmoto_mdmctrl.so \\
vendor/motorola/__DEVICE__/proprietary/libmoto_netutil.so:/system/lib/libmoto_netutil.so \\
vendor/motorola/__DEVICE__/proprietary/libmoto_ril.so:/system/lib/libmoto_ril.so \\
vendor/motorola/__DEVICE__/proprietary/libmotodbgutils.so:/system/lib/libmotodbgutils.so \\
vendor/motorola/__DEVICE__/proprietary/libmtp_jni.so:/system/lib/libmtp_jni.so \\
vendor/motorola/__DEVICE__/proprietary/libmtpstack.so:/system/lib/libmtpstack.so \\
vendor/motorola/__DEVICE__/proprietary/libnative_renderer.so:/system/lib/libnative_renderer.so \\
vendor/motorola/__DEVICE__/proprietary/libnativedrm1.so:/system/lib/libnativedrm1.so \\
vendor/motorola/__DEVICE__/proprietary/libnbgm.so:/system/lib/libnbgm.so \\
vendor/motorola/__DEVICE__/proprietary/libnetutils.so:/system/lib/libnetutils.so \\
vendor/motorola/__DEVICE__/proprietary/libnmea.so:/system/lib/libnmea.so \\
vendor/motorola/__DEVICE__/proprietary/libpanorama.so:/system/lib/libpanorama.so \\
vendor/motorola/__DEVICE__/proprietary/libpanorama_jni.so:/system/lib/libpanorama_jni.so \\
vendor/motorola/__DEVICE__/proprietary/libphotoflow.so:/system/lib/libphotoflow.so \\
vendor/motorola/__DEVICE__/proprietary/libpkip.so:/system/lib/libpkip.so \\
vendor/motorola/__DEVICE__/proprietary/libpppd_plugin-ril.so:/system/lib/libpppd_plugin-ril.so \\
vendor/motorola/__DEVICE__/proprietary/libprojectM.so:/system/lib/libprojectM.so \\
vendor/motorola/__DEVICE__/proprietary/libprovlib.so:/system/lib/libprovlib.so \\
vendor/motorola/__DEVICE__/proprietary/libpvr2d.so:/system/lib/libpvr2d.so \\
vendor/motorola/__DEVICE__/proprietary/libpvrANDROID_WSEGL.so:/system/lib/libpvrANDROID_WSEGL.so \\
vendor/motorola/__DEVICE__/proprietary/libquicksec.so:/system/lib/libquicksec.so \\
vendor/motorola/__DEVICE__/proprietary/librds_util.so:/system/lib/librds_util.so \\
vendor/motorola/__DEVICE__/proprietary/libreference-ril.so:/system/lib/libreference-ril.so \\
vendor/motorola/__DEVICE__/proprietary/libril.so:/system/lib/libril.so \\
vendor/motorola/__DEVICE__/proprietary/libril_rds.so:/system/lib/libril_rds.so \\
vendor/motorola/__DEVICE__/proprietary/libscalado.so:/system/lib/libscalado.so \\
vendor/motorola/__DEVICE__/proprietary/libsmapi.so:/system/lib/libsmapi.so \\
vendor/motorola/__DEVICE__/proprietary/libspellingcheckengine.so:/system/lib/libspellingcheckengine.so \\
vendor/motorola/__DEVICE__/proprietary/libsrv_init.so:/system/lib/libsrv_init.so \\
vendor/motorola/__DEVICE__/proprietary/libsrv_um.so:/system/lib/libsrv_um.so \\
vendor/motorola/__DEVICE__/proprietary/libssmgr.so:/system/lib/libssmgr.so \\
vendor/motorola/__DEVICE__/proprietary/libtalk_jni.so:/system/lib/libtalk_jni.so \\
vendor/motorola/__DEVICE__/proprietary/libtexture_mem.so:/system/lib/libtexture_mem.so \\
vendor/motorola/__DEVICE__/proprietary/libtf_crypto_sst.so:/system/lib/libtf_crypto_sst.so \\
vendor/motorola/__DEVICE__/proprietary/libtpa.so:/system/lib/libtpa.so \\
vendor/motorola/__DEVICE__/proprietary/libtpa_core.so:/system/lib/libtpa_core.so \\
vendor/motorola/__DEVICE__/proprietary/libui3d.so:/system/lib/libui3d.so \\
vendor/motorola/__DEVICE__/proprietary/libusc.so:/system/lib/libusc.so \\
vendor/motorola/__DEVICE__/proprietary/libvideoeditorlite.so:/system/lib/libvideoeditorlite.so \\
vendor/motorola/__DEVICE__/proprietary/libvoicesearch.so:/system/lib/libvoicesearch.so \\
vendor/motorola/__DEVICE__/proprietary/libvorbisenc.so:/system/lib/libvorbisenc.so \\
vendor/motorola/__DEVICE__/proprietary/libvpnclient_jni.so:/system/lib/libvpnclient_jni.so \\
vendor/motorola/__DEVICE__/proprietary/libvsuite_mot_vs32_cmb103.so:/system/lib/libvsuite_mot_vs32_cmb103.so \\
vendor/motorola/__DEVICE__/proprietary/libwbxmlparser.so:/system/lib/libwbxmlparser.so \\
vendor/motorola/__DEVICE__/proprietary/libxmpcore.so:/system/lib/libxmpcore.so \\

# system/lib/ducati
PRODUCT_COPY_FILES += \\
vendor/motorola/__DEVICE__/proprietary/Notify_MPUAPP_reroute_Test_Core1.xem3:/system/lib/ducati/Notify_MPUAPP_reroute_Test_Core1.xem3 \\
vendor/motorola/__DEVICE__/proprietary/Notify_MPUSYS_Test_Core0.xem3:/system/lib/ducati/Notify_MPUSYS_Test_Core0.xem3 \\
vendor/motorola/__DEVICE__/proprietary/Notify_MPUSYS_reroute_Test_Core0.xem3:/system/lib/ducati/Notify_MPUSYS_reroute_Test_Core0.xem3 \\
vendor/motorola/__DEVICE__/proprietary/base_image_app_m3.xem3:/system/lib/ducati/base_image_app_m3.xem3 \\

# system/lib/egl
PRODUCT_COPY_FILES += \\
vendor/motorola/__DEVICE__/proprietary/libEGL_POWERVR_SGX540_120.so:/system/lib/egl/libEGL_POWERVR_SGX540_120.so \\
vendor/motorola/__DEVICE__/proprietary/libGLESv1_CM_POWERVR_SGX540_120.so:/system/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \\
vendor/motorola/__DEVICE__/proprietary/libGLESv2_POWERVR_SGX540_120.so:/system/lib/egl/libGLESv2_POWERVR_SGX540_120.so \\
vendor/motorola/__DEVICE__/proprietary/libeglinfo.so:/system/lib/egl/libeglinfo.so \\
vendor/motorola/__DEVICE__/proprietary/libgles1_texture_stream.so:/system/lib/egl/libgles1_texture_stream.so \\
vendor/motorola/__DEVICE__/proprietary/libgles2_texture_stream.so:/system/lib/egl/libgles2_texture_stream.so \\

# system/lib/hw
PRODUCT_COPY_FILES += \\
vendor/motorola/__DEVICE__/proprietary/gps.solana.so:/system/lib/hw/gps.solana.so \\
vendor/motorola/__DEVICE__/proprietary/gralloc.omap4.so:/system/lib/hw/gralloc.omap4.so \\
vendor/motorola/__DEVICE__/proprietary/lights.solana.so:/system/lib/hw/lights.solana.so \\
vendor/motorola/__DEVICE__/proprietary/sensors.solana.so:/system/lib/hw/sensors.solana.so \\

# system/tts
PRODUCT_COPY_FILES += \\
vendor/motorola/__DEVICE__/proprietary/en-US_lh0_sg.bin:/system/tts/lang_pico/en-US_lh0_sg.bin \\
vendor/motorola/__DEVICE__/proprietary/en-US_ta.bin:/system/tts/lang_pico/en-US_ta.bin \\
vendor/motorola/__DEVICE__/proprietary/es-ES_ta.bin:/system/tts/lang_pico/es-ES_ta.bin \\
vendor/motorola/__DEVICE__/proprietary/es-ES_zl0_sg.bin:/system/tts/lang_pico/es-ES_zl0_sg.bin \\

# system/usr
PRODUCT_COPY_FILES += \\
vendor/motorola/__DEVICE__/proprietary/icudt44l.dat:/system/usr/icu/icudt44l.dat \\
vendor/motorola/__DEVICE__/proprietary/qwerty.kcm.bin:/system/usr/keychars/qwerty.kcm.bin \\
vendor/motorola/__DEVICE__/proprietary/qwerty2.kcm.bin:/system/usr/keychars/qwerty2.kcm.bin \\
vendor/motorola/__DEVICE__/proprietary/usb_keyboard_102_en_us.kcm.bin:/system/usr/keychars/usb_keyboard_102_en_us.kcm.bin \\
vendor/motorola/__DEVICE__/proprietary/AVRCP.kl:/system/usr/keylayout/AVRCP.kl \\
vendor/motorola/__DEVICE__/proprietary/cpcap-key.kl:/system/usr/keylayout/cpcap-key.kl \\
vendor/motorola/__DEVICE__/proprietary/qwerty.kl:/system/usr/keylayout/qwerty.kl \\
vendor/motorola/__DEVICE__/proprietary/usb_keyboard_102_en_us.kl:/system/usr/keylayout/usb_keyboard_102_en_us.kl \\
vendor/motorola/__DEVICE__/proprietary/alsa.conf:/system/usr/share/alsa/alsa.conf \\
vendor/motorola/__DEVICE__/proprietary/00main:/system/usr/share/alsa/init/00main \\
vendor/motorola/__DEVICE__/proprietary/default:/system/usr/share/alsa/init/default \\
vendor/motorola/__DEVICE__/proprietary/hda:/system/usr/share/alsa/init/hda \\
vendor/motorola/__DEVICE__/proprietary/help:/system/usr/share/alsa/init/help \\
vendor/motorola/__DEVICE__/proprietary/info:/system/usr/share/alsa/init/info \\
vendor/motorola/__DEVICE__/proprietary/test:/system/usr/share/alsa/init/test \\

# system/xbin
PRODUCT_COPY_FILES += \\
vendor/motorola/__DEVICE__/proprietary/backup:/system/xbin/backup \\
vendor/motorola/__DEVICE__/proprietary/drm1_func_test:/system/xbin/drm1_func_test \\
vendor/motorola/__DEVICE__/proprietary/run_backup:/system/xbin/run_backup \\
vendor/motorola/__DEVICE__/proprietary/run_restore:/system/xbin/run_restore \\
vendor/motorola/__DEVICE__/proprietary/ssmgrd:/system/xbin/ssmgrd \\


EOF

./setup-makefiles.sh
