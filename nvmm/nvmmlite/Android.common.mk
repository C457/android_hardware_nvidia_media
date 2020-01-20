NVMM_PATH := $(call my-dir)

NVIDIA_MAKEFILE += $(NVMM_PATH)/Android.common.mk

TARGET_OS := linux
IS_AVP := 0
LCDEFS :=

LCDEFS += -DNV_IS_AVP=$(IS_AVP)

ifeq ($(NV_LOGGER_ENABLED),1)
  LCDEFS += -DNV_LOGGER_ENABLED=1
endif

NVMM_BUILT_DYNAMIC := 0
ifneq ($(IS_AVP),1)
  ifneq (,$(filter $(TARGET_OS),linux winxp))
    NVMM_BUILT_DYNAMIC := 1
  endif
endif

LCDEFS += -DNVMM_BUILT_DYNAMIC=$(NVMM_BUILT_DYNAMIC)

LOCAL_CFLAGS += $(LCDEFS)

ifeq ($(NV_LOGGER_ENABLED),1)
LOCAL_CFLAGS += -DNV_LOGGER_ENABLED=1
endif

