#!/sbin/sh

sleep 5

for i in $(seq 1 10)
do
    TMP=$(mount | grep /tmp)
    if [ -z "$TMP" ]
    then
        break
    fi
    umount -l /tmp
    sleep 1
done

busybox mount -orw,remount /
rm -r /tmp
mkdir -p tmp
rm sdcard
mkdir sdcard

# overwrite default.prop so we get root adb
cat > /data/local.prop <<EOF
ro.sys.atvc_allow_netmon_usb=0
ro.sys.atvc_allow_netmon_ih=0
ro.sys.atvc_allow_res_core=0
ro.sys.atvc_allow_res_panic=0
ro.sys.atvc_allow_all_adb=1
ro.sys.atvc_allow_all_core=0
ro.sys.atvc_allow_efem=0
ro.sys.atvc_allow_bp_log=0
ro.sys.atvc_allow_ap_mot_log=0
ro.sys.atvc_allow_gki_log=0
EOF

# Restart with root hacked adbd
echo msc_adb > /dev/usb_device_mode
touch /data/tmp/recovery.log
sync

NEEDS_ADBD=$(ps | grep adbd | grep -v grep)
if [ -z "$NEEDS_ADBD" ]
then
    /sbin/adbd recovery &
fi
