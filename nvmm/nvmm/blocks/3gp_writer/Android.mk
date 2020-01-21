LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
include $(LOCAL_PATH)/../../Android.common.mk

LOCAL_MODULE := libnv3gpwriter

LOCAL_CFLAGS += -D__OMX_EXPORTS
LOCAL_CFLAGS += -DOMXVERSION=2

LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../include

ifeq ($(NV_LOGGER_ENABLED),1)
LOCAL_CFLAGS += -DNV_LOGGER_ENABLED=1
endif

LOCAL_SRC_FILES := \
    nvmm_3gpwriterblock.c \
    nv_3gp_writer.c \
    nv3gpwritervideo.c \
    nv3gpwriteraudio.c

include $(BUILD_STATIC_LIBRARY)
