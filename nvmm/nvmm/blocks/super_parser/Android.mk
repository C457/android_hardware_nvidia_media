LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
include $(LOCAL_PATH)/../../Androidcommon.mk

LOCAL_MODULE := libnv_parser

LOCAL_SRC_FILES := \
    nvmm_super_parserblock.c \
    parser_core/mp3/nvmm_mp3parser_core.c \
    parser_core/mp3/nvmm_mp3parser.c \
    parser_core/mp4/nvmm_mp4parser_core.c \
    parser_core/mp4/nv_mp4parser.c \
    parser_core/ogg/nvmm_oggparser_core.c \
    parser_core/ogg/nvmm_oggparser.c \
    parser_core/ogg/nvmm_oggbookunpack.c \
    parser_core/ogg/nvmm_oggframing.c \
    parser_core/ogg/nvmm_ogginfo.c \
    parser_core/ogg/nvmm_oggwrapper.c \
    parser_core/ogg/nvmm_oggvorbisfile.c \
    parser_core/ogg/nvmm_oggseek.c \
    parser_core/aac/nvmm_aacparser_core.c \
    parser_core/aac/nvmm_aacparser.c \
    parser_core/amr/nvmm_amrparser_core.c \
    parser_core/amr/nvmm_amrparser.c \
    parser_core/m2v/nvmm_m2vparser_core.c \
    parser_core/m2v/nvmm_m2vparser.c \
    parser_core/nem/nvmm_nemparser_core.c \
    parser_core/wav/nvmm_wavparser_core.c \
    parser_core/wav/nvmm_wavparser.c \
    parser_core/mps/nvmm_mpsparser_core.c \
    parser_core/mps/nvmm_mps_parser.c \
    parser_core/mps/nvmm_mps_reader.c

include $(BUILD_STATIC_LIBRARY)
