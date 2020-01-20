LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
include $(LOCAL_PATH)/../Android.common.mk

LOCAL_MODULE := libnvmmtransport

LOCAL_SRC_FILES += nvmm_transport_block.c
LOCAL_SRC_FILES += nvmm_transport_client.c

include $(BUILD_STATIC_LIBRARY)

