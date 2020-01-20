LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := libnvomx

LOCAL_CFLAGS += -D__OMX_EXPORTS
LOCAL_CFLAGS += -DOMXVERSION=2
LOCAL_CFLAGS += -DUSE_NVOS_AND_NVTYPES
LOCAL_CFLAGS += -DUSE_ANDROID_NATIVE_WINDOW=1
LOCAL_CFLAGS += -DUSE_ANDROID_CAMERA_PREVIEW
LOCAL_CFLAGS += -DUSE_FULL_FRAME_MODE=1
ifeq ($(NV_ANDROID_FRAMEWORK_ENHANCEMENTS),TRUE)
LOCAL_CFLAGS += -DUSE_NV_ANDROID_FRAMEWORK_ENHANCEMENTS=1
else
LOCAL_CFLAGS += -DUSE_NV_ANDROID_FRAMEWORK_ENHANCEMENTS=0
endif

ifeq ($(TARGET_TEGRA_VERSION), t124)
LOCAL_CFLAGS += -DCAMERA_T124
else
ifeq ($(TARGET_TEGRA_VERSION), t114)
LOCAL_CFLAGS += -DCAMERA_T114
else
ifeq ($(TARGET_TEGRA_VERSION), t148)
LOCAL_CFLAGS += -DCAMERA_T148
else
ifeq ($(TARGET_TEGRA_VERSION), t30)
LOCAL_CFLAGS += -DCAMERA_WESTON
else
LOCAL_CFLAGS += -DCAMERA_WESTON
endif
endif
endif
endif

LOCAL_C_INCLUDES := \
     frameworks/native/include/media/hardware \
     $(LOCAL_PATH)/../include/openmax/il \
     $(LOCAL_PATH)/components/common \
     $(LOCAL_PATH)/components \
     $(LOCAL_PATH)/common \
     $(LOCAL_PATH)/nvmm \
     $(LOCAL_PATH)/nvmm/common \
     $(LOCAL_PATH)/nvmm/components/common

ifeq ($(NV_ANDROID_FRAMEWORK_ENHANCEMENTS),TRUE)
LOCAL_C_INCLUDES += $(TEGRA_TOP)/multimedia-partner/android/libnvvpp
endif

LOCAL_SRC_FILES := \
    core/NvxCore.c \
    components/common/NvxComponent.c \
    components/common/NvxResourceManager.c \
    components/common/NvxPort.c \
    components/common/simplecomponentbase.c \
    components/NvxClockComponent.c \
    components/NvxMp4FileWriter.c \
    components/NvxVideoScheduler.c \
    components/NvxRawFileReader.c \
    components/NvxRawFileWriter.c \
    common/NvxTrace.c \
    common/NvxMutex.c \
    common/nvxjitter.c \
    common/nvxlist.c \
    components/common/NvxScheduler.c \
    nvmm/components/common/NvxCompReg.c \
    nvmm/components/common/nvmmtransformbase.c \
    nvmm/components/common/NvxCompMisc.c \
    nvmm/common/NvxHelpers.c \
    nvmm/components/nvxaudiodecoder.c \
    nvmm/components/nvxbypassdecoder.c \
    nvmm/components/nvxvideodecoder.c \
    nvmm/components/nvxvideorenderer.c \
    nvmm/components/nvxloopbackrenderer.c \
    nvmm/components/nvxaudiorenderer_opensles.c \
    nvmm/components/nvxcamera.c \
    nvmm/components/nvximageencoder.c \
    nvmm/components/nvximagedecoder.c \
    nvmm/components/nvxaudioencoder.c \
    nvmm/components/nvxvideoextractor.c \
    nvmm/common/nvxcrccheck.c \
    nvmm/components/nvxparser.c \
    nvmm/common/nvxeglimage.c \
    nvmm/common/nvxegl.c \
    nvmm/common/nvxwinmanagerstub.c \
    nvmm/common/nvxhelpers_anw.cpp \
    nvmm/common/nvxhelpers_camera.cpp \
    nvmm/common/nvxandroidbuffer.cpp \
    libomxil.c \
    nvmm/components/nvxliteaudioencoder.c \
    nvmm/components/nvxliteimageencoder.c \
    nvmm/components/nvxliteaudiodecoder.c \
    nvmm/components/nvxlitevideodecoder.c \
    nvmm/components/nvxlitevideoencoder.c \
    nvmm/components/common/nvmmlitetransformbase.c \
    nvmm/common/nvxliteandroidbuffer.c \pp
    nvmm/components/common/nvxlitechooser.c \
    nvmm/components/common/nvmmlitevideo_profile_level.c \
    nvmm/components/common/nvxaudiocapability.c \
    nvmm/components/nvxliteimagedecoder.c \

ifeq ($(NV_ANDROID_FRAMEWORK_ENHANCEMENTS),TRUE)
LOCAL_SRC_FILES += nvmm/components/nvxlitevideopostprocess.c
endif

LOCAL_SHARED_LIBRARIES := \
    libnvos \
    libnvrm \
    libnvrm_graphics \
    libnvmm \
    libnvmm_utils \
    libnvddk_2d_v2 \
    libnvodm_imager \
    libnvmm_contentpipe \
    libnvodm_query \
    libnvmmlite \
    libnvmmlite_utils \
    libnvgr \
    libnvtvmr

LOCAL_SHARED_LIBRARIES += \
    libcutils \
    libsync \
    libutils \
    libui \
    libhardware \
    libbinder \
    libmedia \
    libOpenSLES

LOCAL_STATIC_LIBRARIES += libnvfxmath libmd5 libnvcamerautil

ifeq ($(NV_ANDROID_FRAMEWORK_ENHANCEMENTS),TRUE)
LOCAL_SHARED_LIBRARIES += libnvvpp
endif

LOCAL_CFLAGS += -DLIBEGL_DSO=\"libEGL\"

include $(BUILD_SHARED_LIBRARY)
