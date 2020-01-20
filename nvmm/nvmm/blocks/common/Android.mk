LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
include $(LOCAL_PATH)/../../Android.common.mk

LOCAL_MODULE := libnvmmcommon

LOCAL_SRC_FILES += nvmm_block.c

include $(BUILD_STATIC_LIBRARY)

