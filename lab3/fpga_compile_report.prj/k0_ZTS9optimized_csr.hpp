
/* This header file describes the CSR Agent for the k0_ZTS9optimized component */

#ifndef __K0_ZTS9OPTIMIZED_CSR_REGS_H__
#define __K0_ZTS9OPTIMIZED_CSR_REGS_H__



/* Status register contains all the control bits to control kernel execution
/******************************************************************************/
/* Memory Map Summary                                                         */
/******************************************************************************/

/*
  Address   | Access  | Register              | Argument
------------|---------|-----------------------|-----------------------------
        0x0 |     R/W |       register0[31:0] |                Status[31:0]
            |         |      register0[63:32] |                Printf[31:0]
------------|---------|-----------------------|-----------------------------
        0x8 |     R/W |       register1[31:0] |                Printf[31:0]
            |         |      register1[63:32] |          ProfilerCTRL[31:0]
------------|---------|-----------------------|-----------------------------
       0x10 |     R/W |       register2[31:0] |          ProfilerData[31:0]
            |         |      register2[63:32] |          ProfilerData[31:0]
------------|---------|-----------------------|-----------------------------
       0x18 |     R/W |       register3[31:0] |         ProfilerStart[31:0]
            |         |      register3[63:32] |         ProfilerStart[31:0]
------------|---------|-----------------------|-----------------------------
       0x20 |     R/W |       register4[31:0] |          ProfilerStop[31:0]
            |         |      register4[63:32] |          ProfilerStop[31:0]
------------|---------|-----------------------|-----------------------------
       0x28 |     R/W |       register5[31:0] |         FinishCounter[31:0]
            |         |      register5[63:32] |         FinishCounter[31:0]
------------|---------|-----------------------|-----------------------------
       0x30 |     R/W |       register6[31:0] |    WorkgroupDimension[31:0]
            |         |      register6[63:32] |         WorkgroupSize[31:0]
------------|---------|-----------------------|-----------------------------
       0x38 |     R/W |       register7[31:0] |           GlobalSize0[31:0]
            |         |      register7[63:32] |           GlobalSize1[31:0]
------------|---------|-----------------------|-----------------------------
       0x40 |     R/W |       register8[31:0] |           GlobalSize2[31:0]
            |         |      register8[63:32] |            NumGroups0[31:0]
------------|---------|-----------------------|-----------------------------
       0x48 |     R/W |       register9[31:0] |            NumGroups1[31:0]
            |         |      register9[63:32] |            NumGroups2[31:0]
------------|---------|-----------------------|-----------------------------
       0x50 |     R/W |      register10[31:0] |            LocalSize0[31:0]
            |         |     register10[63:32] |            LocalSize1[31:0]
------------|---------|-----------------------|-----------------------------
       0x58 |     R/W |      register11[31:0] |            LocalSize2[31:0]
            |         |     register11[63:32] |                Unused[31:0]
------------|---------|-----------------------|-----------------------------
       0x60 |     R/W |      register12[63:0] |         GlobalOffset0[63:0]
------------|---------|-----------------------|-----------------------------
       0x68 |     R/W |      register13[63:0] |         GlobalOffset1[63:0]
------------|---------|-----------------------|-----------------------------
       0x70 |     R/W |      register14[63:0] |         GlobalOffset2[63:0]
------------|---------|-----------------------|-----------------------------
       0x78 |     R/W |      register15[63:0] |                  arg0[63:0]
------------|---------|-----------------------|-----------------------------
       0x80 |     R/W |      register16[63:0] |                  arg1[63:0]
------------|---------|-----------------------|-----------------------------
       0x88 |     R/W |      register17[63:0] |                  arg2[63:0]
------------|---------|-----------------------|-----------------------------
       0x90 |     R/W |      register18[63:0] |                  arg3[63:0]
------------|---------|-----------------------|-----------------------------
       0x98 |     R/W |      register19[63:0] |                  arg4[63:0]
------------|---------|-----------------------|-----------------------------
       0xa0 |     R/W |      register20[63:0] |                  arg5[63:0]
------------|---------|-----------------------|-----------------------------
       0xa8 |     R/W |      register21[63:0] |                  arg6[63:0]
------------|---------|-----------------------|-----------------------------
       0xb0 |     R/W |      register22[63:0] |                  arg7[63:0]
*/


/******************************************************************************/
/* Register Address Macros                                                    */
/******************************************************************************/

/* Status Register Bit Offsets (Bits) */
/* Note: Bits In Status Registers Are Marked As Read-Only or Read-Write
   Please Do Not Write To Read-Only Bits */
#define KERNEL_CSR_GO_OFFSET (0) // Read-write
#define KERNEL_CSR_DONE_OFFSET (1) // Read-only
#define KERNEL_CSR_STALLED_OFFSET (3) // Read-only
#define KERNEL_CSR_UNSTALL_OFFSET (4) // Read-write
#define KERNEL_CSR_VALID_IN_OFFSET (14) // Read-only
#define KERNEL_CSR_STARTED_OFFSET (15) // Read-only

/* Status Register Bit Masks (Bits) */
#define KERNEL_CSR_GO_MASK (0x1)
#define KERNEL_CSR_DONE_MASK (0x2)
#define KERNEL_CSR_STALLED_MASK (0x8)
#define KERNEL_CSR_UNSTALL_MASK (0x10)
#define KERNEL_CSR_VALID_IN_MASK (0x4000)
#define KERNEL_CSR_STARTED_MASK (0x8000)

/* Byte Addresses */
#define K0_ZTS9OPTIMIZED_CSR_STATUS_REG (0x0)
#define K0_ZTS9OPTIMIZED_CSR_PRINTF_REG (0x0)
#define K0_ZTS9OPTIMIZED_CSR_PRINTF_REG (0x8)
#define K0_ZTS9OPTIMIZED_CSR_PROFILERCTRL_REG (0x8)
#define K0_ZTS9OPTIMIZED_CSR_PROFILERDATA_REG (0x10)
#define K0_ZTS9OPTIMIZED_CSR_PROFILERDATA_REG (0x10)
#define K0_ZTS9OPTIMIZED_CSR_PROFILERSTART_REG (0x18)
#define K0_ZTS9OPTIMIZED_CSR_PROFILERSTART_REG (0x18)
#define K0_ZTS9OPTIMIZED_CSR_PROFILERSTOP_REG (0x20)
#define K0_ZTS9OPTIMIZED_CSR_PROFILERSTOP_REG (0x20)
#define K0_ZTS9OPTIMIZED_CSR_FINISHCOUNTER_REG (0x28)
#define K0_ZTS9OPTIMIZED_CSR_FINISHCOUNTER_REG (0x28)
#define K0_ZTS9OPTIMIZED_CSR_WORKGROUPDIMENSION_REG (0x30)
#define K0_ZTS9OPTIMIZED_CSR_WORKGROUPSIZE_REG (0x30)
#define K0_ZTS9OPTIMIZED_CSR_GLOBALSIZE0_REG (0x38)
#define K0_ZTS9OPTIMIZED_CSR_GLOBALSIZE1_REG (0x38)
#define K0_ZTS9OPTIMIZED_CSR_GLOBALSIZE2_REG (0x40)
#define K0_ZTS9OPTIMIZED_CSR_NUMGROUPS0_REG (0x40)
#define K0_ZTS9OPTIMIZED_CSR_NUMGROUPS1_REG (0x48)
#define K0_ZTS9OPTIMIZED_CSR_NUMGROUPS2_REG (0x48)
#define K0_ZTS9OPTIMIZED_CSR_LOCALSIZE0_REG (0x50)
#define K0_ZTS9OPTIMIZED_CSR_LOCALSIZE1_REG (0x50)
#define K0_ZTS9OPTIMIZED_CSR_LOCALSIZE2_REG (0x58)
#define K0_ZTS9OPTIMIZED_CSR_UNUSED_REG (0x58)
#define K0_ZTS9OPTIMIZED_CSR_GLOBALOFFSET0_REG (0x60)
#define K0_ZTS9OPTIMIZED_CSR_GLOBALOFFSET1_REG (0x68)
#define K0_ZTS9OPTIMIZED_CSR_GLOBALOFFSET2_REG (0x70)
#define K0_ZTS9OPTIMIZED_CSR_ARG_ARG0_REG (0x78)
#define K0_ZTS9OPTIMIZED_CSR_ARG_ARG1_REG (0x80)
#define K0_ZTS9OPTIMIZED_CSR_ARG_ARG2_REG (0x88)
#define K0_ZTS9OPTIMIZED_CSR_ARG_ARG3_REG (0x90)
#define K0_ZTS9OPTIMIZED_CSR_ARG_ARG4_REG (0x98)
#define K0_ZTS9OPTIMIZED_CSR_ARG_ARG5_REG (0xa0)
#define K0_ZTS9OPTIMIZED_CSR_ARG_ARG6_REG (0xa8)
#define K0_ZTS9OPTIMIZED_CSR_ARG_ARG7_REG (0xb0)

/* Argument Sizes (bytes) */
#define K0_ZTS9OPTIMIZED_CSR_ARG_ARG0_SIZE (8)
#define K0_ZTS9OPTIMIZED_CSR_ARG_ARG1_SIZE (8)
#define K0_ZTS9OPTIMIZED_CSR_ARG_ARG2_SIZE (8)
#define K0_ZTS9OPTIMIZED_CSR_ARG_ARG3_SIZE (8)
#define K0_ZTS9OPTIMIZED_CSR_ARG_ARG4_SIZE (8)
#define K0_ZTS9OPTIMIZED_CSR_ARG_ARG5_SIZE (8)
#define K0_ZTS9OPTIMIZED_CSR_ARG_ARG6_SIZE (8)
#define K0_ZTS9OPTIMIZED_CSR_ARG_ARG7_SIZE (8)

/* Argument Masks */
#define K0_ZTS9OPTIMIZED_CSR_ARG_ARG0_MASK (0xffffffffffffffffULL)
#define K0_ZTS9OPTIMIZED_CSR_ARG_ARG1_MASK (0xffffffffffffffffULL)
#define K0_ZTS9OPTIMIZED_CSR_ARG_ARG2_MASK (0xffffffffffffffffULL)
#define K0_ZTS9OPTIMIZED_CSR_ARG_ARG3_MASK (0xffffffffffffffffULL)
#define K0_ZTS9OPTIMIZED_CSR_ARG_ARG4_MASK (0xffffffffffffffffULL)
#define K0_ZTS9OPTIMIZED_CSR_ARG_ARG5_MASK (0xffffffffffffffffULL)
#define K0_ZTS9OPTIMIZED_CSR_ARG_ARG6_MASK (0xffffffffffffffffULL)
#define K0_ZTS9OPTIMIZED_CSR_ARG_ARG7_MASK (0xffffffffffffffffULL)

#endif /* __K0_ZTS9OPTIMIZED_CSR_REGS_H__ */
