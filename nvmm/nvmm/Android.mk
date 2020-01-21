LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
include $(LOCAL_PATH)/Android.common.mk

LOCAL_MODULE := libnvmm

LOCAL_SRC_FILES += nvmm.c

LOCAL_SHARED_LIBRARIES := \
    libnvos \
    libnvrm \
    libnvrm_graphics \
    libnvmm_utils \

LOCAL_STATIC_LIBRARIES := libnvmmtransport

include $(BUILD_SHARED_LIBRARY)
-include $(addprefix $(LOCAL_PATH)/, $(addsuffix /Android.mk, blocks utils contentpipe transport))

