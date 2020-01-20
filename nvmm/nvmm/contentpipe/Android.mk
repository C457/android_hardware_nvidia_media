LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
include $(LOCAL_PATH)/../Android.common.mk

LOCAL_MODULE := libnvmm_contentpipe

LOCAL_SRC_FILES := \
    nvmm_contentpipe.c \
    nvlocalfilecontentpipe.c \
    nvmm_customprotocol.c \
    nvmm_protocol_file.c \
    nvmm_protocol_http.c \
    nvmm_protocol_rtsp.c \
    rtsp.c \
    rtp.c \
    rtp_audio.c \
    rtp_video.c \
    rtp_latm.c \
    rtp_video_h264.c

LOCAL_SHARED_LIBRARIES := \
    libnvos \
    libnvrm \
    libnvrm_graphics \
    libnvmm_utils

include $(BUILD_SHARED_LIBRARY)
include $(call all-makefiles-under,$(LOCAL_PATH))
