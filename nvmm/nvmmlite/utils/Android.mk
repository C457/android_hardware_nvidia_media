LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
include $(LOCAL_PATH)/../Android.common.mk

LOCAL_CFLAGS += -DRUNNING_IN_SIMULATION=0

LOCAL_MODULE := libnvmmlite_utils

LOCAL_SRC_FILES := nvmm_util.c nvmm_block.c

LOCAL_SHARED_LIBRARIES += libnvos
LOCAL_SHARED_LIBRARIES += libnvrm
LOCAL_SHARED_LIBRARIES += libnvrm_graphics
LOCAL_SHARED_LIBRARIES += libnvmm_utils

include $(BUILD_SHARED_LIBRARY)
