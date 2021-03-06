/*===-- sync_fetch_and_add_8.S - ------------------------------------------===//
 *
 *                     The LLVM Compiler Infrastructure
 *
 * This file is dual licensed under the MIT and the University of Illinois Open
 * Source Licenses. See LICENSE.TXT for details.
 *
 *===----------------------------------------------------------------------===//
 *
 * This file implements the __sync_fetch_and_add_8 function for the ARM
 * architecture.
 *
 *===----------------------------------------------------------------------===*/

#include "sync-ops.h"

#define add_8(rD_LO, rD_HI, rN_LO, rN_HI, rM_LO, rM_HI) \
    adds rD_LO, rN_LO, rM_LO ; \
    adc rD_HI, rN_HI, rM_HI

SYNC_OP_8(add_8)

