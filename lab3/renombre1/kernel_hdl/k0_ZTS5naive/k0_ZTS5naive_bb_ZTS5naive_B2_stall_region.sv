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

// SystemVerilog created from bb_ZTS5naive_B2_stall_region
// Created for function/kernel k0_ZTS5naive
// SystemVerilog created on Thu Jul 28 16:26:54 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k0_ZTS5naive_bb_ZTS5naive_B2_stall_region (
    input wire [511:0] in_memdep_k0_ZTS5naive_avm_readdata,
    input wire [0:0] in_memdep_k0_ZTS5naive_avm_writeack,
    input wire [0:0] in_memdep_k0_ZTS5naive_avm_waitrequest,
    input wire [0:0] in_memdep_k0_ZTS5naive_avm_readdatavalid,
    output wire [34:0] out_memdep_k0_ZTS5naive_avm_address,
    output wire [0:0] out_memdep_k0_ZTS5naive_avm_enable,
    output wire [0:0] out_memdep_k0_ZTS5naive_avm_read,
    output wire [0:0] out_memdep_k0_ZTS5naive_avm_write,
    output wire [511:0] out_memdep_k0_ZTS5naive_avm_writedata,
    output wire [63:0] out_memdep_k0_ZTS5naive_avm_byteenable,
    output wire [4:0] out_memdep_k0_ZTS5naive_avm_burstcount,
    output wire [0:0] out_feedback_almost_empty_out_0,
    output wire [0:0] out_feedback_data_out_0,
    output wire [0:0] out_feedback_empty_out_0,
    input wire [0:0] in_feedback_stall_in_0,
    input wire [63:0] in_arg4,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_arg7_0_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_mem_memdep_k0_zts5naive2_out_lsu_memdep_o_active;
    wire [34:0] i_llvm_fpga_mem_memdep_k0_zts5naive2_out_memdep_k0_ZTS5naive_avm_address;
    wire [4:0] i_llvm_fpga_mem_memdep_k0_zts5naive2_out_memdep_k0_ZTS5naive_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_memdep_k0_zts5naive2_out_memdep_k0_ZTS5naive_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_k0_zts5naive2_out_memdep_k0_ZTS5naive_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_k0_zts5naive2_out_memdep_k0_ZTS5naive_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_k0_zts5naive2_out_memdep_k0_ZTS5naive_avm_write;
    wire [511:0] i_llvm_fpga_mem_memdep_k0_zts5naive2_out_memdep_k0_ZTS5naive_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_almost_empty;
    wire [0:0] i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_empty;
    wire [0:0] i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_writeack;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_empty_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_feedback_almost_empty_out_0;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_feedback_data_out_0;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_feedback_empty_out_0;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_empty_out;
    wire [0:0] i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_c0_exit4_1_tpl;
    wire [31:0] i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_c0_exit4_2_tpl;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_k0_zts5naive2_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_b;
    wire [95:0] bubble_join_i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_c;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_temp_back_stall;
    wire [0:0] merged_in_SE_stall_entry_backStall;
    wire [0:0] merged_in_SE_stall_entry_V0;
    wire [0:0] merged_in_SE_stall_entry_V1;
    wire [0:0] merged_in_SE_stall_entry_V2;
    wire [0:0] merged_in_SE_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_V0;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_V1;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_V2;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_V0;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_V2;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_V4;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_V1;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_V3;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_V5;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_temp_back_stall;
    reg [0:0] i_llvm_fpga_mem_memdep_k0_zts5naive2_in_i_stall_reg0_q;
    reg [0:0] i_llvm_fpga_mem_memdep_k0_zts5naive2_in_i_stall_reg1_q;
    reg [0:0] i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_almost_empty_reg1_q;
    reg [0:0] i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_almost_empty_reg0_q;
    reg [0:0] i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_empty_reg1_q;
    reg [0:0] i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_empty_reg0_q;
    reg [0:0] i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_valid_reg1_q;
    reg [0:0] i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_valid_reg0_q;
    reg [0:0] i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_writeack_reg1_q;
    reg [0:0] i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_writeack_reg0_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_valid_out_reg0_q;
    reg [0:0] stall_entry_frontStall_reg0_q;
    reg [0:0] stall_entry_frontStall_reg1_q;
    reg [0:0] stall_entry_frontValid_reg1_q;
    reg [0:0] stall_entry_frontValid_reg0_q;
    reg [0:0] stall_entry_frontEmpty_reg1_q;
    reg [0:0] stall_entry_frontEmpty_reg0_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg1_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg0_q;
    reg [0:0] i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_o_valid_reg0_q;
    reg [63:0] i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_c0_exit4_1_tpl_reg1_q;
    reg [63:0] i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_c0_exit4_1_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_c0_exit4_2_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_c0_exit4_2_tpl_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_almost_empty_reg0(REG,65)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_almost_empty_reg0_q <= $unsigned(i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_almost_empty);
        end
    end

    // i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_almost_empty_reg1(REG,64)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_almost_empty_reg1_q <= $unsigned(i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_almost_empty_reg0_q);
        end
    end

    // i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_empty_reg0(REG,67)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_empty_reg0_q <= $unsigned(i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_empty);
        end
    end

    // i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_empty_reg1(REG,66)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_empty_reg1_q <= $unsigned(i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_empty_reg0_q);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_almost_empty_out_reg0(REG,75)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_almost_empty_out_reg0_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_almost_empty_out);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_almost_empty_out_reg1(REG,74)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_almost_empty_out_reg1_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_almost_empty_out_reg0_q);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_empty_out_reg0(REG,77)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_empty_out_reg0_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_empty_out);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_empty_out_reg1(REG,76)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_empty_out_reg1_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_empty_out_reg0_q);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_valid_out_reg0(REG,79)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_valid_out_reg0_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_valid_out);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_valid_out_reg1(REG,78)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_valid_out_reg1_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_valid_out_reg0_q);
        end
    end

    // SE_out_i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3(STALLENABLE,42)
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_in_stall_in_reg0(REG,72)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_in_stall_in_reg0_q <= $unsigned(SE_out_i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_backStall);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_in_stall_in_reg1(REG,73)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_in_stall_in_reg1_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_in_stall_in_reg0_q);
        end
    end

    // i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_writeack_reg0(REG,71)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_writeack_reg0_q <= $unsigned(i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_writeack);
        end
    end

    // i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_writeack_reg1(REG,70)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_writeack_reg1_q <= $unsigned(i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_writeack_reg0_q);
        end
    end

    // bubble_join_i_llvm_fpga_mem_memdep_k0_zts5naive2(BITJOIN,32)
    assign bubble_join_i_llvm_fpga_mem_memdep_k0_zts5naive2_q = i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_writeack_reg1_q;

    // bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2(BITSELECT,33)
    assign bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_k0_zts5naive2_q[0:0]);

    // i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3(BLACKBOX,12)@33
    // in in_stall_in@20000000
    // out out_almost_empty_out@50
    // out out_data_out@50
    // out out_empty_out@50
    // out out_feedback_almost_empty_out_0@20000000
    // out out_feedback_data_out_0@20000000
    // out out_feedback_empty_out_0@20000000
    // out out_stall_out@20000000
    // out out_valid_out@50
    k0_ZTS5naive_i_llvm_fpga_push_token_i1_t0000e_push_k0_zts5naive0 thei_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_V5),
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_b),
        .in_empty_in(merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_V3),
        .in_feedback_stall_in_0(in_feedback_stall_in_0),
        .in_stall_in(i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_V1),
        .out_almost_empty_out(i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_empty_out),
        .out_feedback_almost_empty_out_0(i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_feedback_almost_empty_out_0),
        .out_feedback_data_out_0(i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_feedback_data_out_0),
        .out_feedback_empty_out_0(i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_feedback_empty_out_0),
        .out_stall_out(i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_valid_reg0(REG,69)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_valid_reg0_q <= $unsigned(i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_valid);
        end
    end

    // i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_valid_reg1(REG,68)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_valid_reg1_q <= $unsigned(i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2(STALLENABLE,61)
    // Desync
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_temp_back_stall = in_stall_in | i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_stall_out;
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_backStall = merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_temp_back_stall;
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_V0 = i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_valid_reg1_q;
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_V2 = i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_empty_reg1_q;
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_V4 = i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_almost_empty_reg1_q;
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_V1 = merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_V0;
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_V3 = merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_V2;
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_V5 = merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_V4;

    // i_llvm_fpga_mem_memdep_k0_zts5naive2_in_i_stall_reg0(REG,62)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_memdep_k0_zts5naive2_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_backStall);
        end
    end

    // i_llvm_fpga_mem_memdep_k0_zts5naive2_in_i_stall_reg1(REG,63)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_memdep_k0_zts5naive2_in_i_stall_reg1_q <= $unsigned(i_llvm_fpga_mem_memdep_k0_zts5naive2_in_i_stall_reg0_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_in_i_stall_reg0(REG,88)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_backStall);
        end
    end

    // i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_in_i_stall_reg1(REG,89)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // stall_entry_frontAlmostEmpty_reg0(REG,87)
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

    // stall_entry_frontAlmostEmpty_reg1(REG,86)
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

    // stall_entry_frontEmpty_reg0(REG,85)
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

    // stall_entry_frontEmpty_reg1(REG,84)
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

    // stall_entry_frontValid_reg0(REG,83)
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

    // stall_entry_frontValid_reg1(REG,82)
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

    // merged_in_SE_stall_entry(STALLENABLE,59)
    assign merged_in_SE_stall_entry_backStall = i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_o_stall;
    assign merged_in_SE_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_stall_entry_V1 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_stall_entry_V2 = stall_entry_frontAlmostEmpty_reg1_q;

    // i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x(BLACKBOX,29)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@32
    // out out_empty_out@32
    // out out_o_stall@20000000
    // out out_o_valid@32
    // out out_c0_exit4_0_tpl@32
    // out out_c0_exit4_1_tpl@32
    // out out_c0_exit4_2_tpl@32
    k0_ZTS5naive_i_sfc_s_c0_in_zzz4mainenkul0000enter1_k0_zts5naive0 thei_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x (
        .in_almost_empty_in(merged_in_SE_stall_entry_V2),
        .in_arg4(in_arg4),
        .in_empty_in(merged_in_SE_stall_entry_V1),
        .in_i_stall(i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_stall_entry_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_arg7_0_tpl(in_arg7_0_tpl),
        .in_unnamed_k0_ZTS5naive6_0_tpl(GND_q),
        .out_almost_empty_out(i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_empty_out),
        .out_o_stall(i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_o_valid),
        .out_c0_exit4_0_tpl(),
        .out_c0_exit4_1_tpl(i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_c0_exit4_1_tpl),
        .out_c0_exit4_2_tpl(i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_c0_exit4_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_c0_exit4_2_tpl_reg0(REG,99)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_c0_exit4_2_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_c0_exit4_2_tpl);
        end
    end

    // i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_c0_exit4_2_tpl_reg1(REG,98)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_c0_exit4_2_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_c0_exit4_2_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_c0_exit4_1_tpl_reg0(REG,97)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_c0_exit4_1_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_c0_exit4_1_tpl);
        end
    end

    // i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_c0_exit4_1_tpl_reg1(REG,96)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_c0_exit4_1_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_c0_exit4_1_tpl_reg0_q);
        end
    end

    // bubble_join_i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x(BITJOIN,37)
    assign bubble_join_i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_q = {i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_c0_exit4_2_tpl_reg1_q, i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_c0_exit4_1_tpl_reg1_q};

    // bubble_select_i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x(BITSELECT,38)
    assign bubble_select_i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_q[95:64]);

    // i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_almost_empty_out_reg0(REG,91)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_almost_empty_out_reg1(REG,90)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_empty_out_reg0(REG,93)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_empty_out_reg1(REG,92)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_o_valid_reg0(REG,95)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_o_valid_reg1(REG,94)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x(STALLENABLE,60)
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_backStall = i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_stall;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_V0 = i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_o_valid_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_V1 = i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_V2 = i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_out_almost_empty_out_reg1_q;

    // i_llvm_fpga_mem_memdep_k0_zts5naive2(BLACKBOX,11)@32
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_k0_ZTS5naive_avm_address@20000000
    // out out_memdep_k0_ZTS5naive_avm_burstcount@20000000
    // out out_memdep_k0_ZTS5naive_avm_byteenable@20000000
    // out out_memdep_k0_ZTS5naive_avm_enable@20000000
    // out out_memdep_k0_ZTS5naive_avm_read@20000000
    // out out_memdep_k0_ZTS5naive_avm_write@20000000
    // out out_memdep_k0_ZTS5naive_avm_writedata@20000000
    // out out_o_almost_empty@33
    // out out_o_empty@33
    // out out_o_stall@20000000
    // out out_o_valid@33
    // out out_o_writeack@33
    k0_ZTS5naive_i_llvm_fpga_mem_memdep_k0_zts5naive0 thei_llvm_fpga_mem_memdep_k0_zts5naive2 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_V2),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_V1),
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(i_llvm_fpga_mem_memdep_k0_zts5naive2_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_select_i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts5naives_c0_enter1_k0_zts5naive0_aunroll_x_c),
        .in_memdep_k0_ZTS5naive_avm_readdata(in_memdep_k0_ZTS5naive_avm_readdata),
        .in_memdep_k0_ZTS5naive_avm_readdatavalid(in_memdep_k0_ZTS5naive_avm_readdatavalid),
        .in_memdep_k0_ZTS5naive_avm_waitrequest(in_memdep_k0_ZTS5naive_avm_waitrequest),
        .in_memdep_k0_ZTS5naive_avm_writeack(in_memdep_k0_ZTS5naive_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_k0_zts5naive2_out_lsu_memdep_o_active),
        .out_memdep_k0_ZTS5naive_avm_address(i_llvm_fpga_mem_memdep_k0_zts5naive2_out_memdep_k0_ZTS5naive_avm_address),
        .out_memdep_k0_ZTS5naive_avm_burstcount(i_llvm_fpga_mem_memdep_k0_zts5naive2_out_memdep_k0_ZTS5naive_avm_burstcount),
        .out_memdep_k0_ZTS5naive_avm_byteenable(i_llvm_fpga_mem_memdep_k0_zts5naive2_out_memdep_k0_ZTS5naive_avm_byteenable),
        .out_memdep_k0_ZTS5naive_avm_enable(i_llvm_fpga_mem_memdep_k0_zts5naive2_out_memdep_k0_ZTS5naive_avm_enable),
        .out_memdep_k0_ZTS5naive_avm_read(i_llvm_fpga_mem_memdep_k0_zts5naive2_out_memdep_k0_ZTS5naive_avm_read),
        .out_memdep_k0_ZTS5naive_avm_write(i_llvm_fpga_mem_memdep_k0_zts5naive2_out_memdep_k0_ZTS5naive_avm_write),
        .out_memdep_k0_ZTS5naive_avm_writedata(i_llvm_fpga_mem_memdep_k0_zts5naive2_out_memdep_k0_ZTS5naive_avm_writedata),
        .out_o_almost_empty(i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_almost_empty),
        .out_o_empty(i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_empty),
        .out_o_stall(i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_k0_zts5naive2_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_memdep_k0_ZTS5naive_avm_address = i_llvm_fpga_mem_memdep_k0_zts5naive2_out_memdep_k0_ZTS5naive_avm_address;
    assign out_memdep_k0_ZTS5naive_avm_enable = i_llvm_fpga_mem_memdep_k0_zts5naive2_out_memdep_k0_ZTS5naive_avm_enable;
    assign out_memdep_k0_ZTS5naive_avm_read = i_llvm_fpga_mem_memdep_k0_zts5naive2_out_memdep_k0_ZTS5naive_avm_read;
    assign out_memdep_k0_ZTS5naive_avm_write = i_llvm_fpga_mem_memdep_k0_zts5naive2_out_memdep_k0_ZTS5naive_avm_write;
    assign out_memdep_k0_ZTS5naive_avm_writedata = i_llvm_fpga_mem_memdep_k0_zts5naive2_out_memdep_k0_ZTS5naive_avm_writedata;
    assign out_memdep_k0_ZTS5naive_avm_byteenable = i_llvm_fpga_mem_memdep_k0_zts5naive2_out_memdep_k0_ZTS5naive_avm_byteenable;
    assign out_memdep_k0_ZTS5naive_avm_burstcount = i_llvm_fpga_mem_memdep_k0_zts5naive2_out_memdep_k0_ZTS5naive_avm_burstcount;

    // feedback_almost_empty_out_0_sync(GPOUT,7)
    assign out_feedback_almost_empty_out_0 = i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_feedback_almost_empty_out_0;

    // feedback_data_out_0_sync(GPOUT,8)
    assign out_feedback_data_out_0 = i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_feedback_data_out_0;

    // feedback_empty_out_0_sync(GPOUT,9)
    assign out_feedback_empty_out_0 = i_llvm_fpga_push_token_i1_throttle_push_k0_zts5naive3_out_feedback_empty_out_0;

    // stall_entry_frontStall_reg0(REG,80)
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

    // stall_entry_frontStall_reg1(REG,81)
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

    // sync_out(GPOUT,25)@0
    assign out_stall_out = stall_entry_frontStall_reg1_q;

    // dupName_0_ext_sig_sync_out_x(GPOUT,27)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_k0_zts5naive2_out_lsu_memdep_o_active;

    // dupName_0_sync_out_x(GPOUT,28)@33
    assign out_almost_empty_out = merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_V4;
    assign out_empty_out = merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_V2;
    assign out_valid_out = merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts5naive2_V0;

    // rst_sync(RESETSYNC,100)
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
