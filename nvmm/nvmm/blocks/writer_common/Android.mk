LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
include $(LOCAL_PATH)/../../Android.common.mk

LOCAL_MODULE := libnvbasewriter

LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../include

LOCAL_SRC_FILES += nvmm_basewriterblock.c

include $(BUILD_STATIC_LIBRARY)

