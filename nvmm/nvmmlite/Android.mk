LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
include $(LOCAL_PATH)/Android.common.mk

LOCAL_CFLAGS := -DNVMMLITE_BUILT_DYNAMIC=1

LOCAL_MODULE := libnvmmlite

LOCAL_SRC_FILES := nvmmlite.c

LOCAL_SHARED_LIBRARIES := libnvos libnvmmlite_utils libnvmm_utils

include $(BUILD_SHARED_LIBRARY)
-include $(addprefix $(LOCAL_PATH)/, $(addsuffix /Android.mk, utils))

