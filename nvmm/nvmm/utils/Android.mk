LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := libnvmm_utils

LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../include

LOCAL_SRC_FILES := \
    nvmm_util.c \
    nvmm_ulp_util.c \
    nvmm_ulp_kpi_logger.c \
    nvmm_bufmgr.c \
    nvmm_queue.c \
    nvmm_mediaclock.c \
    nvmm_sock_util.c \
    nvmm_file_util.c \
    nvmm_format_scan.c \
    nvmetafile_m3uparser.c \
    nvmetafile_asxparser.c \
    nvmetafile_parser.c \
    nvmm_logger.c \
    nvmm_logger_android.c \
    nvmm_sock_linux.c

LOCAL_SHARED_LIBRARIES := \
    libnvos \
    libnvrm \
    libnvrm_graphics \
    libcutils \
    libnvavp \
    libnvfusebypass

LOCAL_CFLAGS += -DNV_USE_NVAVP=1

include $(BUILD_SHARED_LIBRARY)
