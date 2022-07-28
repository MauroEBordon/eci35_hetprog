// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 2022.2 (Release Build #133.4)
// 
// Legal Notice: Copyright 2022 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from bb_ZTS9optimized_B2_stall_region
// Created for function/kernel k0_ZTS9optimized
// SystemVerilog created on Thu Jul 28 16:41:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k0_ZTS9optimized_bb_ZTS9optimized_B2_stall_region (
    input wire [511:0] in_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_readdata,
    input wire [0:0] in_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_writeack,
    input wire [0:0] in_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_waitrequest,
    input wire [0:0] in_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_readdatavalid,
    output wire [34:0] out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_address,
    output wire [0:0] out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_enable,
    output wire [0:0] out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_read,
    output wire [0:0] out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_write,
    output wire [511:0] out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_writedata,
    output wire [63:0] out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_byteenable,
    output wire [4:0] out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_burstcount,
    input wire [63:0] in_arg0,
    input wire [0:0] in_flush,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_c0_exe3,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    output wire [31:0] out_intel_reserved_ffwd_5_0,
    input wire [63:0] in_arg3_0_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_almost_empty;
    wire [0:0] i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_empty;
    wire [31:0] i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_valid;
    wire [34:0] i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_address;
    wire [4:0] i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_write;
    wire [511:0] i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_empty_out;
    wire [0:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_profile_loop_o_valid;
    wire [63:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_1_tpl;
    wire [0:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_2_tpl;
    wire [0:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_3_tpl;
    wire [0:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_4_tpl;
    wire [0:0] i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_empty_out;
    wire [31:0] i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_intel_reserved_ffwd_1_0;
    wire [31:0] i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_intel_reserved_ffwd_2_0;
    wire [31:0] i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [31:0] i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_intel_reserved_ffwd_4_0;
    wire [31:0] i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_intel_reserved_ffwd_5_0;
    wire [0:0] i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_o_valid;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [1:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] coalesced_delay_0_fifo_i_valid;
    wire coalesced_delay_0_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_stall;
    wire coalesced_delay_0_fifo_i_stall_bitsignaltemp;
    wire [1:0] coalesced_delay_0_fifo_i_data;
    wire [0:0] coalesced_delay_0_fifo_i_empty;
    wire coalesced_delay_0_fifo_i_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_almost_empty;
    wire coalesced_delay_0_fifo_i_almost_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_valid;
    wire coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_stall;
    wire coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    wire [1:0] coalesced_delay_0_fifo_o_data;
    wire [0:0] coalesced_delay_0_fifo_o_empty;
    wire coalesced_delay_0_fifo_o_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_almost_empty;
    wire coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_i_valid;
    wire coalesced_delay_1_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_i_stall;
    wire coalesced_delay_1_fifo_i_stall_bitsignaltemp;
    wire [1:0] coalesced_delay_1_fifo_i_data;
    wire [0:0] coalesced_delay_1_fifo_i_empty;
    wire coalesced_delay_1_fifo_i_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_i_almost_empty;
    wire coalesced_delay_1_fifo_i_almost_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_o_valid;
    wire coalesced_delay_1_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_o_stall;
    wire coalesced_delay_1_fifo_o_stall_bitsignaltemp;
    wire [1:0] coalesced_delay_1_fifo_o_data;
    wire [0:0] coalesced_delay_1_fifo_o_empty;
    wire coalesced_delay_1_fifo_o_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_o_almost_empty;
    wire coalesced_delay_1_fifo_o_almost_empty_bitsignaltemp;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_b;
    wire [67:0] bubble_join_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_f;
    wire [1:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [1:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] merged_in_SE_stall_entry_backStall;
    wire [0:0] merged_in_SE_stall_entry_V0;
    wire [0:0] merged_in_SE_stall_entry_V1;
    wire [0:0] merged_in_SE_stall_entry_V2;
    wire [0:0] merged_in_SE_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V0;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V3;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V6;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V1;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V4;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V7;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V2;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V5;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V8;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_temp_back_stall;
    wire [0:0] merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_backStall;
    wire [0:0] merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0;
    wire [0:0] merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V1;
    wire [0:0] merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V2;
    wire [0:0] merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_can_fast_read;
    wire can_fast_read_bitsignaltemp;
    wire [0:0] merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_can_slow_read;
    wire can_slow_read_bitsignaltemp;
    wire [0:0] merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_no_space_for_result;
    wire no_space_for_result_bitsignaltemp;
    wire [0:0] merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_forced_read;
    wire forced_read_bitsignaltemp;
    wire [0:0] merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_temp_back_stall;
    wire [0:0] merged_in_SE_stall_exit_backStall;
    wire [0:0] merged_in_SE_stall_exit_V0;
    wire [0:0] merged_in_SE_stall_exit_V1;
    wire [0:0] merged_in_SE_stall_exit_V2;
    wire [0:0] merged_in_SE_stall_exit_can_fast_read;
    wire can_fast_read_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_stall_exit_can_slow_read;
    wire can_slow_read_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_stall_exit_no_space_for_result;
    wire no_space_for_result_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_stall_exit_forced_read;
    wire forced_read_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_stall_exit_temp_back_stall;
    reg [0:0] merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_stall_exit_V0_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_stall_exit_V0_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_stall_exit_V0_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_stall_exit_V0_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_stall_exit_V0_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_stall_exit_V0_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_stall_exit_V0_sync_valid_reg0_q;
    reg [0:0] i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_in_i_stall_reg0_q;
    reg [0:0] i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_in_i_stall_reg1_q;
    reg [0:0] i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_almost_empty_reg1_q;
    reg [0:0] i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_almost_empty_reg0_q;
    reg [0:0] i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_empty_reg1_q;
    reg [0:0] i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_empty_reg0_q;
    reg [31:0] i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_readdata_reg1_q;
    reg [31:0] i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_readdata_reg0_q;
    reg [0:0] i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_valid_reg1_q;
    reg [0:0] i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_valid_reg0_q;
    reg [0:0] stall_entry_frontStall_reg0_q;
    reg [0:0] stall_entry_frontStall_reg1_q;
    reg [0:0] stall_entry_frontValid_reg1_q;
    reg [0:0] stall_entry_frontValid_reg0_q;
    reg [0:0] stall_entry_frontEmpty_reg1_q;
    reg [0:0] stall_entry_frontEmpty_reg0_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg1_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg0_q;
    reg [0:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_o_valid_reg0_q;
    reg [0:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_profile_loop_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_profile_loop_o_valid_reg0_q;
    reg [63:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_1_tpl_reg1_q;
    reg [63:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_1_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_2_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_2_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_3_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_3_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_4_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_4_tpl_reg0_q;
    reg [0:0] i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_o_valid_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_i_stall_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_i_stall_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_valid_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_valid_reg0_q;
    reg [1:0] coalesced_delay_0_fifo_o_data_reg1_q;
    reg [1:0] coalesced_delay_0_fifo_o_data_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_o_empty_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_empty_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_o_almost_empty_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_almost_empty_reg0_q;
    reg [0:0] coalesced_delay_1_fifo_i_stall_reg0_q;
    reg [0:0] coalesced_delay_1_fifo_i_stall_reg1_q;
    reg [0:0] coalesced_delay_1_fifo_o_valid_reg1_q;
    reg [0:0] coalesced_delay_1_fifo_o_valid_reg0_q;
    reg [1:0] coalesced_delay_1_fifo_o_data_reg1_q;
    reg [1:0] coalesced_delay_1_fifo_o_data_reg0_q;
    reg [0:0] coalesced_delay_1_fifo_o_empty_reg1_q;
    reg [0:0] coalesced_delay_1_fifo_o_empty_reg0_q;
    reg [0:0] coalesced_delay_1_fifo_o_almost_empty_reg1_q;
    reg [0:0] coalesced_delay_1_fifo_o_almost_empty_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // join_for_coalesced_delay_0(BITJOIN,36)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_f, bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_d};

    // coalesced_delay_0_fifo_i_stall_reg0(REG,155)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_i_stall_reg0_q <= $unsigned(merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_backStall);
        end
    end

    // coalesced_delay_0_fifo_i_stall_reg1(REG,156)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_i_stall_reg1_q <= $unsigned(coalesced_delay_0_fifo_i_stall_reg0_q);
        end
    end

    // coalesced_delay_0_fifo(STALLFIFO,41)
    assign coalesced_delay_0_fifo_i_valid = merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V1;
    assign coalesced_delay_0_fifo_i_stall = coalesced_delay_0_fifo_i_stall_reg1_q;
    assign coalesced_delay_0_fifo_i_data = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_i_empty = merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V4;
    assign coalesced_delay_0_fifo_i_almost_empty = merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V7;
    assign coalesced_delay_0_fifo_i_valid_bitsignaltemp = coalesced_delay_0_fifo_i_valid[0];
    assign coalesced_delay_0_fifo_i_stall_bitsignaltemp = coalesced_delay_0_fifo_i_stall[0];
    assign coalesced_delay_0_fifo_o_valid[0] = coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_stall[0] = coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_empty[0] = coalesced_delay_0_fifo_o_empty_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_almost_empty[0] = coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp;
    hld_fifo #(
        .DEPTH(823),
        .WIDTH(2),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(7),
        .ALMOST_EMPTY_CUTOFF(7),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) thecoalesced_delay_0_fifo (
        .i_valid(coalesced_delay_0_fifo_i_valid_bitsignaltemp),
        .i_stall(coalesced_delay_0_fifo_i_stall_bitsignaltemp),
        .i_data(join_for_coalesced_delay_0_q),
        .o_valid(coalesced_delay_0_fifo_o_valid_bitsignaltemp),
        .o_stall(coalesced_delay_0_fifo_o_stall_bitsignaltemp),
        .o_data(coalesced_delay_0_fifo_o_data),
        .o_empty(coalesced_delay_0_fifo_o_empty_bitsignaltemp),
        .o_almost_empty(coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // coalesced_delay_0_fifo_o_almost_empty_reg0(REG,164)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_almost_empty_reg0_q <= $unsigned(coalesced_delay_0_fifo_o_almost_empty);
        end
    end

    // coalesced_delay_0_fifo_o_almost_empty_reg1(REG,163)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_almost_empty_reg1_q <= $unsigned(coalesced_delay_0_fifo_o_almost_empty_reg0_q);
        end
    end

    // i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_almost_empty_reg0(REG,114)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_almost_empty_reg0_q <= $unsigned(i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_almost_empty);
        end
    end

    // i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_almost_empty_reg1(REG,113)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_almost_empty_reg1_q <= $unsigned(i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_almost_empty_reg0_q);
        end
    end

    // coalesced_delay_0_fifo_o_empty_reg0(REG,162)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_empty_reg0_q <= $unsigned(coalesced_delay_0_fifo_o_empty);
        end
    end

    // coalesced_delay_0_fifo_o_empty_reg1(REG,161)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_empty_reg1_q <= $unsigned(coalesced_delay_0_fifo_o_empty_reg0_q);
        end
    end

    // i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_empty_reg0(REG,116)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_empty_reg0_q <= $unsigned(i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_empty);
        end
    end

    // i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_empty_reg1(REG,115)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_empty_reg1_q <= $unsigned(i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_empty_reg0_q);
        end
    end

    // i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_readdata_reg0(REG,118)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_readdata_reg0_q <= $unsigned(i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_readdata);
        end
    end

    // i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_readdata_reg1(REG,117)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_readdata_reg1_q <= $unsigned(i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_readdata_reg0_q);
        end
    end

    // bubble_join_i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3(BITJOIN,44)
    assign bubble_join_i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_q = i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_readdata_reg1_q;

    // bubble_select_i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3(BITSELECT,45)
    assign bubble_select_i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_q[31:0]);

    // merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg0(REG,103)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg0_q <= $unsigned(merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0);
        end
    end

    // merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg1(REG,102)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg1_q <= $unsigned(merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg0_q);
        end
    end

    // merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg2(REG,101)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg2_q <= $unsigned(merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg1_q);
        end
    end

    // merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg3(REG,100)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg3_q <= $unsigned(merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg2_q);
        end
    end

    // merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg4(REG,99)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg4_q <= $unsigned(merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg3_q);
        end
    end

    // merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg5(REG,98)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg5_q <= $unsigned(merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg4_q);
        end
    end

    // merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg6(REG,97)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg6_q <= $unsigned(merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg5_q);
        end
    end

    // join_for_coalesced_delay_1(BITJOIN,39)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_e, bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_b};

    // coalesced_delay_1_fifo_i_stall_reg0(REG,165)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_i_stall_reg0_q <= $unsigned(merged_in_SE_stall_exit_backStall);
        end
    end

    // coalesced_delay_1_fifo_i_stall_reg1(REG,166)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_i_stall_reg1_q <= $unsigned(coalesced_delay_1_fifo_i_stall_reg0_q);
        end
    end

    // coalesced_delay_1_fifo(STALLFIFO,42)
    assign coalesced_delay_1_fifo_i_valid = merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V0;
    assign coalesced_delay_1_fifo_i_stall = coalesced_delay_1_fifo_i_stall_reg1_q;
    assign coalesced_delay_1_fifo_i_data = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_i_empty = merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V3;
    assign coalesced_delay_1_fifo_i_almost_empty = merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V6;
    assign coalesced_delay_1_fifo_i_valid_bitsignaltemp = coalesced_delay_1_fifo_i_valid[0];
    assign coalesced_delay_1_fifo_i_stall_bitsignaltemp = coalesced_delay_1_fifo_i_stall[0];
    assign coalesced_delay_1_fifo_o_valid[0] = coalesced_delay_1_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_1_fifo_o_stall[0] = coalesced_delay_1_fifo_o_stall_bitsignaltemp;
    assign coalesced_delay_1_fifo_o_empty[0] = coalesced_delay_1_fifo_o_empty_bitsignaltemp;
    assign coalesced_delay_1_fifo_o_almost_empty[0] = coalesced_delay_1_fifo_o_almost_empty_bitsignaltemp;
    hld_fifo #(
        .DEPTH(863),
        .WIDTH(2),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(7),
        .ALMOST_EMPTY_CUTOFF(7),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) thecoalesced_delay_1_fifo (
        .i_valid(coalesced_delay_1_fifo_i_valid_bitsignaltemp),
        .i_stall(coalesced_delay_1_fifo_i_stall_bitsignaltemp),
        .i_data(join_for_coalesced_delay_1_q),
        .o_valid(coalesced_delay_1_fifo_o_valid_bitsignaltemp),
        .o_stall(coalesced_delay_1_fifo_o_stall_bitsignaltemp),
        .o_data(coalesced_delay_1_fifo_o_data),
        .o_empty(coalesced_delay_1_fifo_o_empty_bitsignaltemp),
        .o_almost_empty(coalesced_delay_1_fifo_o_almost_empty_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // coalesced_delay_1_fifo_o_almost_empty_reg0(REG,174)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_o_almost_empty_reg0_q <= $unsigned(coalesced_delay_1_fifo_o_almost_empty);
        end
    end

    // coalesced_delay_1_fifo_o_almost_empty_reg1(REG,173)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_o_almost_empty_reg1_q <= $unsigned(coalesced_delay_1_fifo_o_almost_empty_reg0_q);
        end
    end

    // i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_almost_empty_out_reg0(REG,150)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_almost_empty_out_reg1(REG,149)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // coalesced_delay_1_fifo_o_empty_reg0(REG,172)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_o_empty_reg0_q <= $unsigned(coalesced_delay_1_fifo_o_empty);
        end
    end

    // coalesced_delay_1_fifo_o_empty_reg1(REG,171)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_o_empty_reg1_q <= $unsigned(coalesced_delay_1_fifo_o_empty_reg0_q);
        end
    end

    // i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_empty_out_reg0(REG,152)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_empty_out_reg1(REG,151)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // coalesced_delay_1_fifo_o_valid_reg0(REG,168)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_o_valid_reg0_q <= $unsigned(coalesced_delay_1_fifo_o_valid);
        end
    end

    // coalesced_delay_1_fifo_o_valid_reg1(REG,167)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_o_valid_reg1_q <= $unsigned(coalesced_delay_1_fifo_o_valid_reg0_q);
        end
    end

    // i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_o_valid_reg0(REG,154)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_o_valid_reg1(REG,153)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_stall_exit(STALLENABLE,96)
    // Sync
    assign merged_in_SE_stall_exit_temp_back_stall = in_stall_in;
    assign merged_in_SE_stall_exit_can_fast_read = ~ ((i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_almost_empty_out_reg1_q | coalesced_delay_1_fifo_o_almost_empty_reg1_q));
    assign merged_in_SE_stall_exit_can_slow_read = ~ ((i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_empty_out_reg1_q | coalesced_delay_1_fifo_o_empty_reg1_q));
    assign merged_in_SE_stall_exit_backStall = ~ (merged_in_SE_stall_exit_forced_read);
    assign merged_in_SE_stall_exit_no_space_for_result = merged_in_SE_stall_exit_temp_back_stall;
    assign merged_in_SE_stall_exit_V0 = merged_in_SE_stall_exit_forced_read;
    assign merged_in_SE_stall_exit_V1 = $unsigned(1'b0);
    assign merged_in_SE_stall_exit_V2 = $unsigned(1'b0);
    assign can_fast_read_bitsignaltemp_dup_name_0 = merged_in_SE_stall_exit_can_fast_read[0];
    assign can_slow_read_bitsignaltemp_dup_name_0 = merged_in_SE_stall_exit_can_slow_read[0];
    assign no_space_for_result_bitsignaltemp_dup_name_0 = merged_in_SE_stall_exit_no_space_for_result[0];
    assign merged_in_SE_stall_exit_forced_read[0] = forced_read_bitsignaltemp_dup_name_0;
    acl_sync_stall_latency #(
        .EMPTY_PLUS_STALL_LATENCY(7),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1),
        .RESET_EVERYTHING(0)
    ) themerged_in_SE_stall_exit (
        .can_fast_read(can_fast_read_bitsignaltemp_dup_name_0),
        .can_slow_read(can_slow_read_bitsignaltemp_dup_name_0),
        .no_space_for_result(no_space_for_result_bitsignaltemp_dup_name_0),
        .forced_read(forced_read_bitsignaltemp_dup_name_0),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_in_i_stall_reg0(REG,147)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_stall_exit_backStall);
        end
    end

    // i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_in_i_stall_reg1(REG,148)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // coalesced_delay_0_fifo_o_data_reg0(REG,160)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_data_reg0_q <= $unsigned(coalesced_delay_0_fifo_o_data);
        end
    end

    // coalesced_delay_0_fifo_o_data_reg1(REG,159)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_data_reg1_q <= $unsigned(coalesced_delay_0_fifo_o_data_reg0_q);
        end
    end

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,52)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_o_data_reg1_q;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,53)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[1:0]);

    // sel_for_coalesced_delay_0(BITSELECT,37)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);

    // i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x(BLACKBOX,29)@841
    // in in_i_stall@20000000
    // out out_almost_empty_out@881
    // out out_empty_out@881
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@881
    // out out_c1_exit_0_tpl@881
    k0_ZTS9optimized_i_sfc_s_c1_in_zts9optim0000er_k0_zts9optimized5 thei_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x (
        .in_almost_empty_in(merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V2),
        .in_c0_exe2(sel_for_coalesced_delay_0_b),
        .in_c0_exe4(sel_for_coalesced_delay_0_c),
        .in_empty_in(merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V1),
        .in_i_stall(i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0_sync_valid_reg6_q),
        .in_c1_eni3_0_tpl(GND_q),
        .in_c1_eni3_1_tpl(sel_for_coalesced_delay_0_c),
        .in_c1_eni3_2_tpl(bubble_select_i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_b),
        .in_c1_eni3_3_tpl(sel_for_coalesced_delay_0_b),
        .out_almost_empty_out(i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_empty_out),
        .out_intel_reserved_ffwd_1_0(i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_intel_reserved_ffwd_5_0),
        .out_o_stall(i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // coalesced_delay_0_fifo_o_valid_reg0(REG,158)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_valid_reg0_q <= $unsigned(coalesced_delay_0_fifo_o_valid);
        end
    end

    // coalesced_delay_0_fifo_o_valid_reg1(REG,157)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_valid_reg1_q <= $unsigned(coalesced_delay_0_fifo_o_valid_reg0_q);
        end
    end

    // i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_valid_reg0(REG,120)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_valid_reg0_q <= $unsigned(i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_valid);
        end
    end

    // i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_valid_reg1(REG,119)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_valid_reg1_q <= $unsigned(i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x(STALLENABLE,95)
    // Sync
    assign merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_temp_back_stall = i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_o_stall;
    assign merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_can_fast_read = ~ ((i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_almost_empty_reg1_q | coalesced_delay_0_fifo_o_almost_empty_reg1_q));
    assign merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_can_slow_read = ~ ((i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_empty_reg1_q | coalesced_delay_0_fifo_o_empty_reg1_q));
    assign merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_backStall = ~ (merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_forced_read);
    assign merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_no_space_for_result = merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_temp_back_stall;
    assign merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V0 = merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_forced_read;
    assign merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V1 = $unsigned(1'b0);
    assign merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_V2 = $unsigned(1'b0);
    assign can_fast_read_bitsignaltemp = merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_can_fast_read[0];
    assign can_slow_read_bitsignaltemp = merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_can_slow_read[0];
    assign no_space_for_result_bitsignaltemp = merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_no_space_for_result[0];
    assign merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_forced_read[0] = forced_read_bitsignaltemp;
    acl_sync_stall_latency #(
        .EMPTY_PLUS_STALL_LATENCY(7),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1),
        .RESET_EVERYTHING(0)
    ) themerged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x (
        .can_fast_read(can_fast_read_bitsignaltemp),
        .can_slow_read(can_slow_read_bitsignaltemp),
        .no_space_for_result(no_space_for_result_bitsignaltemp),
        .forced_read(forced_read_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_in_i_stall_reg0(REG,111)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_in_i_stall_reg0_q <= $unsigned(merged_in_SE_in_i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_backStall);
        end
    end

    // i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_in_i_stall_reg1(REG,112)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_in_i_stall_reg1_q <= $unsigned(i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_in_i_stall_reg0_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_in_i_stall_reg0(REG,129)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_backStall);
        end
    end

    // i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_in_i_stall_reg1(REG,130)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // stall_entry_frontAlmostEmpty_reg0(REG,128)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg0_q <= $unsigned(in_almost_empty_in);
        end
    end

    // stall_entry_frontAlmostEmpty_reg1(REG,127)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg1_q <= $unsigned(stall_entry_frontAlmostEmpty_reg0_q);
        end
    end

    // stall_entry_frontEmpty_reg0(REG,126)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg0_q <= $unsigned(in_empty_in);
        end
    end

    // stall_entry_frontEmpty_reg1(REG,125)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg1_q <= $unsigned(stall_entry_frontEmpty_reg0_q);
        end
    end

    // stall_entry_frontValid_reg0(REG,124)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg0_q <= $unsigned(in_valid_in);
        end
    end

    // stall_entry_frontValid_reg1(REG,123)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg1_q <= $unsigned(stall_entry_frontValid_reg0_q);
        end
    end

    // merged_in_SE_stall_entry(STALLENABLE,93)
    assign merged_in_SE_stall_entry_backStall = i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_o_stall;
    assign merged_in_SE_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_stall_entry_V1 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_stall_entry_V2 = stall_entry_frontAlmostEmpty_reg1_q;

    // i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x(BLACKBOX,28)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@36
    // out out_empty_out@36
    // out out_o_stall@20000000
    // out out_o_valid@36
    // out out_profile_loop_o_valid@36
    // out out_c0_exit12_0_tpl@36
    // out out_c0_exit12_1_tpl@36
    // out out_c0_exit12_2_tpl@36
    // out out_c0_exit12_3_tpl@36
    // out out_c0_exit12_4_tpl@36
    k0_ZTS9optimized_i_sfc_s_c0_in_zts9optim000012_k0_zts9optimized1 thei_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x (
        .in_almost_empty_in(merged_in_SE_stall_entry_V2),
        .in_arg0(in_arg0),
        .in_empty_in(merged_in_SE_stall_entry_V1),
        .in_i_stall(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_stall_entry_V0),
        .in_arg3_0_tpl(in_arg3_0_tpl),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(GND_q),
        .out_almost_empty_out(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_empty_out),
        .out_o_stall(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_profile_loop_o_valid),
        .out_c0_exit12_0_tpl(),
        .out_c0_exit12_1_tpl(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_1_tpl),
        .out_c0_exit12_2_tpl(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_2_tpl),
        .out_c0_exit12_3_tpl(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_3_tpl),
        .out_c0_exit12_4_tpl(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_4_tpl_reg0(REG,146)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_4_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_4_tpl);
        end
    end

    // i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_4_tpl_reg1(REG,145)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_4_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_4_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_3_tpl_reg0(REG,144)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_3_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_3_tpl);
        end
    end

    // i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_3_tpl_reg1(REG,143)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_3_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_3_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_2_tpl_reg0(REG,142)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_2_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_2_tpl);
        end
    end

    // i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_2_tpl_reg1(REG,141)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_2_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_2_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_1_tpl_reg0(REG,140)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_1_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_1_tpl);
        end
    end

    // i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_1_tpl_reg1(REG,139)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_1_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_1_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_profile_loop_o_valid_reg0(REG,138)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_profile_loop_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_profile_loop_o_valid);
        end
    end

    // i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_profile_loop_o_valid_reg1(REG,137)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_profile_loop_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_profile_loop_o_valid_reg0_q);
        end
    end

    // bubble_join_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x(BITJOIN,48)
    assign bubble_join_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_q = {i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_4_tpl_reg1_q, i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_3_tpl_reg1_q, i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_2_tpl_reg1_q, i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_c0_exit12_1_tpl_reg1_q, i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_profile_loop_o_valid_reg1_q};

    // bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x(BITSELECT,49)
    assign bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_q[64:1]);
    assign bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_q[65:65]);
    assign bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_q[66:66]);
    assign bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_q[67:67]);

    // i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_almost_empty_out_reg0(REG,132)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_almost_empty_out_reg1(REG,131)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_empty_out_reg0(REG,134)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_empty_out_reg1(REG,133)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_o_valid_reg0(REG,136)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_o_valid_reg1(REG,135)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x(STALLENABLE,94)
    // Desync
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_temp_back_stall = coalesced_delay_1_fifo_o_stall | coalesced_delay_0_fifo_o_stall | i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_stall;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_backStall = merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_temp_back_stall;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V0 = i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_o_valid_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V3 = i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V6 = i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_out_almost_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V1 = merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V4 = merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V3;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V7 = merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V6;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V2 = merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V5 = merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V3;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V8 = merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V6;

    // i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3(BLACKBOX,8)@36
    // in in_i_stall@20000000
    // out out_o_almost_empty@841
    // out out_o_empty@841
    // out out_o_readdata@841
    // out out_o_stall@20000000
    // out out_o_valid@841
    // out out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_address@20000000
    // out out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_burstcount@20000000
    // out out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_byteenable@20000000
    // out out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_enable@20000000
    // out out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_read@20000000
    // out out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_write@20000000
    // out out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_writedata@20000000
    k0_ZTS9optimized_i_llvm_fpga_mem_unnamed000010_k0_zts9optimized0 thei_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V8),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V5),
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_c),
        .in_i_predicate(GND_q),
        .in_i_stall(i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_select_i_sfc_s_c0_in_zts9optimizeds_c0_enter112_k0_zts9optimized1_aunroll_x_V2),
        .in_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_readdata(in_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_readdata),
        .in_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_readdatavalid(in_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_readdatavalid),
        .in_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_waitrequest(in_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_waitrequest),
        .in_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_writeack(in_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_writeack),
        .out_o_almost_empty(i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_almost_empty),
        .out_o_empty(i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_empty),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_o_valid),
        .out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_address(i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_address),
        .out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_burstcount(i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_burstcount),
        .out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_byteenable(i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_byteenable),
        .out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_enable(i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_enable),
        .out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_read(i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_read),
        .out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_write(i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_write),
        .out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_writedata(i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_address = i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_address;
    assign out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_enable = i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_enable;
    assign out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_read = i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_read;
    assign out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_write = i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_write;
    assign out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_writedata = i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_writedata;
    assign out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_byteenable = i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_byteenable;
    assign out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_burstcount = i_llvm_fpga_mem_unnamed_k0_zts9optimized10_k0_zts9optimized3_out_unnamed_k0_ZTS9optimized10_k0_ZTS9optimized_avm_burstcount;

    // regfree_osync(GPOUT,17)
    assign out_intel_reserved_ffwd_1_0 = i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_intel_reserved_ffwd_1_0;

    // stall_entry_frontStall_reg0(REG,121)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg0_q <= $unsigned(merged_in_SE_stall_entry_backStall);
        end
    end

    // stall_entry_frontStall_reg1(REG,122)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg1_q <= $unsigned(stall_entry_frontStall_reg0_q);
        end
    end

    // sync_out(GPOUT,21)@0
    assign out_stall_out = stall_entry_frontStall_reg1_q;

    // dupName_0_regfree_osync_x(GPOUT,23)
    assign out_intel_reserved_ffwd_2_0 = i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_intel_reserved_ffwd_2_0;

    // merged_in_SE_stall_exit_V0_sync_valid_reg0(REG,110)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_stall_exit_V0_sync_valid_reg0_q <= $unsigned(merged_in_SE_stall_exit_V0);
        end
    end

    // merged_in_SE_stall_exit_V0_sync_valid_reg1(REG,109)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_stall_exit_V0_sync_valid_reg1_q <= $unsigned(merged_in_SE_stall_exit_V0_sync_valid_reg0_q);
        end
    end

    // merged_in_SE_stall_exit_V0_sync_valid_reg2(REG,108)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_stall_exit_V0_sync_valid_reg2_q <= $unsigned(merged_in_SE_stall_exit_V0_sync_valid_reg1_q);
        end
    end

    // merged_in_SE_stall_exit_V0_sync_valid_reg3(REG,107)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_stall_exit_V0_sync_valid_reg3_q <= $unsigned(merged_in_SE_stall_exit_V0_sync_valid_reg2_q);
        end
    end

    // merged_in_SE_stall_exit_V0_sync_valid_reg4(REG,106)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_stall_exit_V0_sync_valid_reg4_q <= $unsigned(merged_in_SE_stall_exit_V0_sync_valid_reg3_q);
        end
    end

    // merged_in_SE_stall_exit_V0_sync_valid_reg5(REG,105)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_stall_exit_V0_sync_valid_reg5_q <= $unsigned(merged_in_SE_stall_exit_V0_sync_valid_reg4_q);
        end
    end

    // merged_in_SE_stall_exit_V0_sync_valid_reg6(REG,104)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_stall_exit_V0_sync_valid_reg6_q <= $unsigned(merged_in_SE_stall_exit_V0_sync_valid_reg5_q);
        end
    end

    // coalesced_delay_1_fifo_o_data_reg0(REG,170)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_o_data_reg0_q <= $unsigned(coalesced_delay_1_fifo_o_data);
        end
    end

    // coalesced_delay_1_fifo_o_data_reg1(REG,169)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_o_data_reg1_q <= $unsigned(coalesced_delay_1_fifo_o_data_reg0_q);
        end
    end

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,55)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_o_data_reg1_q;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,56)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[1:0]);

    // sel_for_coalesced_delay_1(BITSELECT,40)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[0:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1:1]);

    // dupName_0_sync_out_x(GPOUT,24)@881
    assign out_almost_empty_out = merged_in_SE_stall_exit_V2;
    assign out_c0_exe3 = sel_for_coalesced_delay_1_c;
    assign out_empty_out = merged_in_SE_stall_exit_V1;
    assign out_profile_loop_o_valid = sel_for_coalesced_delay_1_b;
    assign out_valid_out = merged_in_SE_stall_exit_V0_sync_valid_reg6_q;

    // dupName_1_regfree_osync_x(GPOUT,25)
    assign out_intel_reserved_ffwd_3_0 = i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_intel_reserved_ffwd_3_0;

    // dupName_2_regfree_osync_x(GPOUT,26)
    assign out_intel_reserved_ffwd_4_0 = i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_intel_reserved_ffwd_4_0;

    // dupName_3_regfree_osync_x(GPOUT,27)
    assign out_intel_reserved_ffwd_5_0 = i_sfc_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized5_aunroll_x_out_intel_reserved_ffwd_5_0;

    // rst_sync(RESETSYNC,175)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
