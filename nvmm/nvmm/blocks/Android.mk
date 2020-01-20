LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
include $(LOCAL_PATH)/Android.blocks.mk

LOCAL_MODULE := libnvmm_writer

LOCAL_SRC_FILES += common/nvmm_block.c

LOCAL_SHARED_LIBRARIES := \
    libnvmm_utils \
    libnvos \
    libnvrm \
    libnvmm_contentpipe

BLOCKLIBS :=
BLOCKLIBS += libnvbasewriter

ifeq ($(3GPWRITER_BUILT),1)
BLOCKLIBS += libnv3gpwriter
endif

LOCAL_WHOLE_STATIC_LIBRARIES += $(sort $(BLOCKLIBS))

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
include $(LOCAL_PATH)/Android.blocks.mk

LOCAL_MODULE := libnvmm_parser

LOCAL_SRC_FILES += common/nvmm_block.c

LOCAL_SHARED_LIBRARIES := \
    libnvmm_utils \
    libnvos \
    libnvrm \
    libnvmm_contentpipe

LOCAL_WHOLE_STATIC_LIBRARIES += libnv_parser

include $(BUILD_SHARED_LIBRARY)

BLOCKDIRS += common writer_common super_parser

include $(addprefix $(LOCAL_PATH)/, $(addsuffix /Android.mk, $(sort $(BLOCKDIRS))))
