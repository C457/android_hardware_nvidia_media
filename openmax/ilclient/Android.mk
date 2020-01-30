LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := libnvomxilclient
LOCAL_NO_DEFAULT_COMPILER_FLAGS := true

LOCAL_STATIC_LIBRARIES += libnvfxmath

LOCAL_CFLAGS += $(TARGET_GLOBAL_CFLAGS)
LOCAL_CFLAGS += $(TARGET_thumb_CFLAGS)
LOCAL_CFLAGS += -D__OMX_EXPORTS
LOCAL_CFLAGS += -DOMXVERSION=2

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/../../nvmm/include \
    $(LOCAL_PATH)/../include/openmax/il \
    $(LOCAL_PATH)/../include/openmax/ilclient \
    hardware/nvidia/core-headers

LOCAL_SRC_FILES := \
    nvxrecordgraph.c \
    nvxtunneledrecordgraph.c \
    nvxframework.c \
    nvxgraph.c \
    nvxplayergraph.c


LOCAL_SHARED_LIBRARIES += libnvos

include $(BUILD_SHARED_LIBRARY)
