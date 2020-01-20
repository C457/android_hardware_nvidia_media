LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := libnvavp
LOCAL_PROPRIETARY_MODULE := true

LOCAL_C_INCLUDES := hardware/nvidia/core-headers

LOCAL_SRC_FILES := nvavp.c

LOCAL_SHARED_LIBRARIES := \
	libnvos \
	libnvrm

include $(BUILD_SHARED_LIBRARY)
