/*
 * Copyright (c) 2009 NVIDIA Corporation.  All rights reserved.
 *
 * NVIDIA Corporation and its licensors retain all intellectual property
 * and proprietary rights in and to this software, related documentation
 * and any modifications thereto.  Any use, reproduction, disclosure or
 * distribution of this software and related documentation without an express
 * license agreement from NVIDIA Corporation is strictly prohibited.
 */

#ifndef INCLUDED_NVMM_WAVENC_H
#define INCLUDED_NVMM_WAVENC_H

#include "nvmm.h"
#include "nvmm_event.h"
#include "nvos.h"
#include "nvmm_block.h"
#include "nvmm_wave.h" 

#if defined(__cplusplus)
extern "C"
{
#endif

NvError NvMMWavEncOpen(NvMMBlockHandle *phBlock, NvMMInternalCreationParameters *pParams,
                       NvOsSemaphoreHandle semaphore, NvMMDoWorkFunction *pDoWorkFunction);
void NvMMWavEncClose(NvMMBlockHandle hBlock, NvMMInternalDestructionParameters *pParams);

#if defined(__cplusplus)
}
#endif

#endif // INCLUDED_NVMM_WAVENC_H
