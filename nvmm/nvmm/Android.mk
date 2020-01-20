LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := libnvmm

LOCAL_C_INCLUDES += $(LOCAL_PATH)/../include
LOCAL_SRC_FILES += nvmm.c

LOCAL_SHARED_LIBRARIES := \
    libnvos \
    libnvrm \
    libnvrm_graphics \
    libnvmm_utils \
    ibnvmmtransport

include $(BUILD_SHARED_LIBRARY)
-include $(addprefix $(LOCAL_PATH)/, $(addsuffix /Android.mk, blocks utils contentpipe transport))

