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

// SystemVerilog created from bb_ZTS9optimized_B1
// Created for function/kernel k0_ZTS9optimized
// SystemVerilog created on Thu Jul 28 16:41:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k0_ZTS9optimized_bb_ZTS9optimized_B1 (
    input wire [63:0] in_arg4,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [63:0] in_arg7_0_tpl,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [31:0] out_intel_reserved_ffwd_0_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_0_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_0_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_0_0_3_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] ZTS9optimized_B1_branch_out_stall_out;
    wire [0:0] ZTS9optimized_B1_branch_out_valid_out_0;
    wire [0:0] ZTS9optimized_B1_merge_out_almost_empty_out;
    wire [0:0] ZTS9optimized_B1_merge_out_empty_out;
    wire [0:0] ZTS9optimized_B1_merge_out_stall_out_0;
    wire [0:0] ZTS9optimized_B1_merge_out_valid_out;
    wire [0:0] bb_ZTS9optimized_B1_stall_region_out_almost_empty_out;
    wire [0:0] bb_ZTS9optimized_B1_stall_region_out_empty_out;
    wire [0:0] bb_ZTS9optimized_B1_stall_region_out_stall_out;
    wire [0:0] bb_ZTS9optimized_B1_stall_region_out_valid_out;
    wire [31:0] bb_ZTS9optimized_B1_stall_region_out_intel_reserved_ffwd_0_0_0_tpl;
    wire [31:0] bb_ZTS9optimized_B1_stall_region_out_intel_reserved_ffwd_0_0_1_tpl;
    wire [31:0] bb_ZTS9optimized_B1_stall_region_out_intel_reserved_ffwd_0_0_2_tpl;
    wire [31:0] bb_ZTS9optimized_B1_stall_region_out_intel_reserved_ffwd_0_0_3_tpl;
    reg [0:0] rst_sync_rst_sclrn;


    // ZTS9optimized_B1_branch(BLACKBOX,2)
    k0_ZTS9optimized_ZTS9optimized_B1_branch theZTS9optimized_B1_branch (
        .in_almost_empty_in(bb_ZTS9optimized_B1_stall_region_out_almost_empty_out),
        .in_empty_in(bb_ZTS9optimized_B1_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_ZTS9optimized_B1_stall_region_out_valid_out),
        .out_stall_out(ZTS9optimized_B1_branch_out_stall_out),
        .out_valid_out_0(ZTS9optimized_B1_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ZTS9optimized_B1_stall_region(BLACKBOX,4)
    k0_ZTS9optimized_bb_ZTS9optimized_B1_stall_region thebb_ZTS9optimized_B1_stall_region (
        .in_almost_empty_in(ZTS9optimized_B1_merge_out_almost_empty_out),
        .in_empty_in(ZTS9optimized_B1_merge_out_empty_out),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(ZTS9optimized_B1_branch_out_stall_out),
        .in_valid_in(ZTS9optimized_B1_merge_out_valid_out),
        .out_almost_empty_out(bb_ZTS9optimized_B1_stall_region_out_almost_empty_out),
        .out_empty_out(bb_ZTS9optimized_B1_stall_region_out_empty_out),
        .out_stall_out(bb_ZTS9optimized_B1_stall_region_out_stall_out),
        .out_valid_out(bb_ZTS9optimized_B1_stall_region_out_valid_out),
        .out_intel_reserved_ffwd_0_0_0_tpl(bb_ZTS9optimized_B1_stall_region_out_intel_reserved_ffwd_0_0_0_tpl),
        .out_intel_reserved_ffwd_0_0_1_tpl(bb_ZTS9optimized_B1_stall_region_out_intel_reserved_ffwd_0_0_1_tpl),
        .out_intel_reserved_ffwd_0_0_2_tpl(bb_ZTS9optimized_B1_stall_region_out_intel_reserved_ffwd_0_0_2_tpl),
        .out_intel_reserved_ffwd_0_0_3_tpl(bb_ZTS9optimized_B1_stall_region_out_intel_reserved_ffwd_0_0_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ZTS9optimized_B1_merge(BLACKBOX,3)
    k0_ZTS9optimized_ZTS9optimized_B1_merge theZTS9optimized_B1_merge (
        .in_stall_in(bb_ZTS9optimized_B1_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(ZTS9optimized_B1_merge_out_almost_empty_out),
        .out_empty_out(ZTS9optimized_B1_merge_out_empty_out),
        .out_stall_out_0(ZTS9optimized_B1_merge_out_stall_out_0),
        .out_valid_out(ZTS9optimized_B1_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out_0(GPOUT,13)
    assign out_stall_out_0 = ZTS9optimized_B1_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,14)
    assign out_valid_out_0 = ZTS9optimized_B1_branch_out_valid_out_0;

    // out_intel_reserved_ffwd_0_0_0_tpl(GPOUT,15)
    assign out_intel_reserved_ffwd_0_0_0_tpl = bb_ZTS9optimized_B1_stall_region_out_intel_reserved_ffwd_0_0_0_tpl;

    // out_intel_reserved_ffwd_0_0_1_tpl(GPOUT,16)
    assign out_intel_reserved_ffwd_0_0_1_tpl = bb_ZTS9optimized_B1_stall_region_out_intel_reserved_ffwd_0_0_1_tpl;

    // out_intel_reserved_ffwd_0_0_2_tpl(GPOUT,17)
    assign out_intel_reserved_ffwd_0_0_2_tpl = bb_ZTS9optimized_B1_stall_region_out_intel_reserved_ffwd_0_0_2_tpl;

    // out_intel_reserved_ffwd_0_0_3_tpl(GPOUT,18)
    assign out_intel_reserved_ffwd_0_0_3_tpl = bb_ZTS9optimized_B1_stall_region_out_intel_reserved_ffwd_0_0_3_tpl;

    // rst_sync(RESETSYNC,19)
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