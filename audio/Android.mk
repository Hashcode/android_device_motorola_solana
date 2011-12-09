ifeq ($(BOARD_USES_AUDIO_LEGACY),true)

LOCAL_PATH := $(call my-dir)

# output for libaudio intermediates
LIBAUDIO_INTERMEDIATES_PREREQS := $(PRODUCT_OUT)/obj/lib

# prerequisites for building audio
file := $(LIBAUDIO_INTERMEDIATES_PREREQS)/libaudio.so
$(file) : $(LOCAL_PATH)/libaudio.so
	@echo "Copy libaudio.so -> $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) cp -a $(LOCAL_PATH)/libaudio.so $@

file := $(LIBAUDIO_INTERMEDIATES_PREREQS)/liba2dp.so
$(file) : $(LOCAL_PATH)/liba2dp.so
	@echo "Copy liba2dp.so -> $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) cp -a $(LOCAL_PATH)/liba2dp.so $@

file := $(LIBAUDIO_INTERMEDIATES_PREREQS)/libaudio_ext.so
$(file) : $(LOCAL_PATH)/libaudio_ext.so
	@echo "Copy libaudio_ext.so -> $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) cp -a $(LOCAL_PATH)/libaudio_ext.so $@

file := $(LIBAUDIO_INTERMEDIATES_PREREQS)/libasound.so
$(file) : $(LOCAL_PATH)/libasound.so
	@echo "Copy libasound.so -> $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) cp -a $(LOCAL_PATH)/libasound.so $@

file := $(LIBAUDIO_INTERMEDIATES_PREREQS)/libaudiopolicy.so
$(file) : $(LOCAL_PATH)/libaudiopolicy.so
	@echo "Copy libaudiopolicy.so -> $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) cp -a $(LOCAL_PATH)/libaudiopolicy.so $@

include $(all-subdir-makefiles)

endif # BOARD_USES_AUDIO_LEGACY
