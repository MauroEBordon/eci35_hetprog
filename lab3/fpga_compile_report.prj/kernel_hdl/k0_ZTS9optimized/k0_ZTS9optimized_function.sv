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

// SystemVerilog created from k0_ZTS9optimized_function
// Created for function/kernel k0_ZTS9optimized
// SystemVerilog created on Thu Jul 28 16:46:50 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k0_ZTS9optimized_function (
    output wire [34:0] out_memdep_k0_ZTS9optimized_avm_address,
    output wire [4:0] out_memdep_k0_ZTS9optimized_avm_burstcount,
    output wire [63:0] out_memdep_k0_ZTS9optimized_avm_byteenable,
    output wire [0:0] out_memdep_k0_ZTS9optimized_avm_enable,
    output wire [0:0] out_memdep_k0_ZTS9optimized_avm_read,
    output wire [0:0] out_memdep_k0_ZTS9optimized_avm_write,
    output wire [511:0] out_memdep_k0_ZTS9optimized_avm_writedata,
    output wire [0:0] out_o_active_memdep,
    output wire [0:0] out_stall_out,
    output wire [34:0] out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_address,
    output wire [4:0] out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_burstcount,
    output wire [63:0] out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_byteenable,
    output wire [0:0] out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_enable,
    output wire [0:0] out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_read,
    output wire [0:0] out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_write,
    output wire [511:0] out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_arg_acl_global_size_0,
    input wire [63:0] in_arg_acl_global_size_1,
    input wire [63:0] in_arg_acl_global_size_2,
    input wire [31:0] in_arg_acl_local_size_0,
    input wire [31:0] in_arg_acl_local_size_1,
    input wire [31:0] in_arg_acl_local_size_2,
    input wire [63:0] in_arg_arg0,
    input wire [63:0] in_arg_arg4,
    input wire [511:0] in_memdep_k0_ZTS9optimized_avm_readdata,
    input wire [0:0] in_memdep_k0_ZTS9optimized_avm_readdatavalid,
    input wire [0:0] in_memdep_k0_ZTS9optimized_avm_waitrequest,
    input wire [0:0] in_memdep_k0_ZTS9optimized_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [511:0] in_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_readdata,
    input wire [0:0] in_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_readdatavalid,
    input wire [0:0] in_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_waitrequest,
    input wire [0:0] in_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_writeack,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_arg_arg1_0_tpl,
    input wire [63:0] in_arg_arg2_0_tpl,
    input wire [63:0] in_arg_arg3_0_tpl,
    input wire [63:0] in_arg_arg5_0_tpl,
    input wire [63:0] in_arg_arg6_0_tpl,
    input wire [63:0] in_arg_arg7_0_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] optimized_B2_x_i_capture;
    wire optimized_B2_x_i_capture_bitsignaltemp;
    wire [0:0] optimized_B2_x_i_clear;
    wire optimized_B2_x_i_clear_bitsignaltemp;
    wire [0:0] optimized_B2_x_i_enable;
    wire optimized_B2_x_i_enable_bitsignaltemp;
    wire [0:0] optimized_B2_x_i_shift;
    wire optimized_B2_x_i_shift_bitsignaltemp;
    wire [0:0] optimized_B2_x_i_stall_pred;
    wire optimized_B2_x_i_stall_pred_bitsignaltemp;
    wire [0:0] optimized_B2_x_i_stall_succ;
    wire optimized_B2_x_i_stall_succ_bitsignaltemp;
    wire [0:0] optimized_B2_x_i_valid_loop;
    wire optimized_B2_x_i_valid_loop_bitsignaltemp;
    wire [0:0] optimized_B2_x_i_valid_pred;
    wire optimized_B2_x_i_valid_pred_bitsignaltemp;
    wire [0:0] optimized_B2_x_i_valid_succ;
    wire optimized_B2_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_ZTS9optimized_B0_aunroll_x_out_feedback_stall_out_0;
    wire [0:0] bb_ZTS9optimized_B0_aunroll_x_out_stall_out_0;
    wire [0:0] bb_ZTS9optimized_B0_aunroll_x_out_valid_out_0;
    wire [0:0] bb_ZTS9optimized_B1_aunroll_x_out_feedback_almost_empty_out_0;
    wire [0:0] bb_ZTS9optimized_B1_aunroll_x_out_feedback_data_out_0;
    wire [0:0] bb_ZTS9optimized_B1_aunroll_x_out_feedback_empty_out_0;
    wire [0:0] bb_ZTS9optimized_B1_aunroll_x_out_lsu_memdep_o_active;
    wire [34:0] bb_ZTS9optimized_B1_aunroll_x_out_memdep_k0_ZTS9optimized_avm_address;
    wire [4:0] bb_ZTS9optimized_B1_aunroll_x_out_memdep_k0_ZTS9optimized_avm_burstcount;
    wire [63:0] bb_ZTS9optimized_B1_aunroll_x_out_memdep_k0_ZTS9optimized_avm_byteenable;
    wire [0:0] bb_ZTS9optimized_B1_aunroll_x_out_memdep_k0_ZTS9optimized_avm_enable;
    wire [0:0] bb_ZTS9optimized_B1_aunroll_x_out_memdep_k0_ZTS9optimized_avm_read;
    wire [0:0] bb_ZTS9optimized_B1_aunroll_x_out_memdep_k0_ZTS9optimized_avm_write;
    wire [511:0] bb_ZTS9optimized_B1_aunroll_x_out_memdep_k0_ZTS9optimized_avm_writedata;
    wire [0:0] bb_ZTS9optimized_B1_aunroll_x_out_stall_out_0;
    wire [0:0] bb_ZTS9optimized_B1_aunroll_x_out_valid_out_0;
    wire [31:0] bb_ZTS9optimized_B2_aunroll_x_out_intel_reserved_ffwd_0_0;
    wire [31:0] bb_ZTS9optimized_B2_aunroll_x_out_intel_reserved_ffwd_1_0;
    wire [31:0] bb_ZTS9optimized_B2_aunroll_x_out_intel_reserved_ffwd_2_0;
    wire [31:0] bb_ZTS9optimized_B2_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [31:0] bb_ZTS9optimized_B2_aunroll_x_out_intel_reserved_ffwd_4_0;
    wire [0:0] bb_ZTS9optimized_B2_aunroll_x_out_profile_loop_o_valid;
    wire [0:0] bb_ZTS9optimized_B2_aunroll_x_out_stall_in_0;
    wire [0:0] bb_ZTS9optimized_B2_aunroll_x_out_stall_out_0;
    wire [34:0] bb_ZTS9optimized_B2_aunroll_x_out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_address;
    wire [4:0] bb_ZTS9optimized_B2_aunroll_x_out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_burstcount;
    wire [63:0] bb_ZTS9optimized_B2_aunroll_x_out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_byteenable;
    wire [0:0] bb_ZTS9optimized_B2_aunroll_x_out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_enable;
    wire [0:0] bb_ZTS9optimized_B2_aunroll_x_out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_read;
    wire [0:0] bb_ZTS9optimized_B2_aunroll_x_out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_write;
    wire [511:0] bb_ZTS9optimized_B2_aunroll_x_out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_writedata;
    wire [0:0] bb_ZTS9optimized_B2_aunroll_x_out_valid_in_0;
    wire [0:0] bb_ZTS9optimized_B2_aunroll_x_out_valid_out_0;
    reg [0:0] rst_sync_rst_sclrn;


    // bb_ZTS9optimized_B0_aunroll_x(BLACKBOX,22)
    k0_ZTS9optimized_bb_ZTS9optimized_B0 thebb_ZTS9optimized_B0_aunroll_x (
        .in_arg0(in_arg_arg0),
        .in_arg4(in_arg_arg4),
        .in_feedback_almost_empty_in_0(bb_ZTS9optimized_B1_aunroll_x_out_feedback_almost_empty_out_0),
        .in_feedback_data_in_0(bb_ZTS9optimized_B1_aunroll_x_out_feedback_data_out_0),
        .in_feedback_empty_in_0(bb_ZTS9optimized_B1_aunroll_x_out_feedback_empty_out_0),
        .in_stall_in_0(bb_ZTS9optimized_B2_aunroll_x_out_stall_out_0),
        .in_valid_in_0(in_valid_in),
        .in_arg3_0_tpl(in_arg_arg3_0_tpl),
        .in_arg7_0_tpl(in_arg_arg7_0_tpl),
        .out_feedback_stall_out_0(bb_ZTS9optimized_B0_aunroll_x_out_feedback_stall_out_0),
        .out_stall_out_0(bb_ZTS9optimized_B0_aunroll_x_out_stall_out_0),
        .out_valid_out_0(bb_ZTS9optimized_B0_aunroll_x_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ZTS9optimized_B1_aunroll_x(BLACKBOX,23)
    k0_ZTS9optimized_bb_ZTS9optimized_B1 thebb_ZTS9optimized_B1_aunroll_x (
        .in_arg4(in_arg_arg4),
        .in_feedback_stall_in_0(bb_ZTS9optimized_B0_aunroll_x_out_feedback_stall_out_0),
        .in_flush(in_start),
        .in_intel_reserved_ffwd_0_0(bb_ZTS9optimized_B2_aunroll_x_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_ZTS9optimized_B2_aunroll_x_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(bb_ZTS9optimized_B2_aunroll_x_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(bb_ZTS9optimized_B2_aunroll_x_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(bb_ZTS9optimized_B2_aunroll_x_out_intel_reserved_ffwd_4_0),
        .in_memdep_k0_ZTS9optimized_avm_readdata(in_memdep_k0_ZTS9optimized_avm_readdata),
        .in_memdep_k0_ZTS9optimized_avm_readdatavalid(in_memdep_k0_ZTS9optimized_avm_readdatavalid),
        .in_memdep_k0_ZTS9optimized_avm_waitrequest(in_memdep_k0_ZTS9optimized_avm_waitrequest),
        .in_memdep_k0_ZTS9optimized_avm_writeack(in_memdep_k0_ZTS9optimized_avm_writeack),
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_ZTS9optimized_B2_aunroll_x_out_valid_out_0),
        .in_arg7_0_tpl(in_arg_arg7_0_tpl),
        .out_feedback_almost_empty_out_0(bb_ZTS9optimized_B1_aunroll_x_out_feedback_almost_empty_out_0),
        .out_feedback_data_out_0(bb_ZTS9optimized_B1_aunroll_x_out_feedback_data_out_0),
        .out_feedback_empty_out_0(bb_ZTS9optimized_B1_aunroll_x_out_feedback_empty_out_0),
        .out_lsu_memdep_o_active(bb_ZTS9optimized_B1_aunroll_x_out_lsu_memdep_o_active),
        .out_memdep_k0_ZTS9optimized_avm_address(bb_ZTS9optimized_B1_aunroll_x_out_memdep_k0_ZTS9optimized_avm_address),
        .out_memdep_k0_ZTS9optimized_avm_burstcount(bb_ZTS9optimized_B1_aunroll_x_out_memdep_k0_ZTS9optimized_avm_burstcount),
        .out_memdep_k0_ZTS9optimized_avm_byteenable(bb_ZTS9optimized_B1_aunroll_x_out_memdep_k0_ZTS9optimized_avm_byteenable),
        .out_memdep_k0_ZTS9optimized_avm_enable(bb_ZTS9optimized_B1_aunroll_x_out_memdep_k0_ZTS9optimized_avm_enable),
        .out_memdep_k0_ZTS9optimized_avm_read(bb_ZTS9optimized_B1_aunroll_x_out_memdep_k0_ZTS9optimized_avm_read),
        .out_memdep_k0_ZTS9optimized_avm_write(bb_ZTS9optimized_B1_aunroll_x_out_memdep_k0_ZTS9optimized_avm_write),
        .out_memdep_k0_ZTS9optimized_avm_writedata(bb_ZTS9optimized_B1_aunroll_x_out_memdep_k0_ZTS9optimized_avm_writedata),
        .out_stall_out_0(bb_ZTS9optimized_B1_aunroll_x_out_stall_out_0),
        .out_valid_out_0(bb_ZTS9optimized_B1_aunroll_x_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ZTS9optimized_B2_aunroll_x(BLACKBOX,24)
    k0_ZTS9optimized_bb_ZTS9optimized_B2 thebb_ZTS9optimized_B2_aunroll_x (
        .in_arg0(in_arg_arg0),
        .in_arg4(in_arg_arg4),
        .in_flush(in_start),
        .in_stall_in_0(bb_ZTS9optimized_B1_aunroll_x_out_stall_out_0),
        .in_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_readdata(in_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_readdata),
        .in_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_readdatavalid(in_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_readdatavalid),
        .in_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_waitrequest(in_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_waitrequest),
        .in_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_writeack(in_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_writeack),
        .in_valid_in_0(bb_ZTS9optimized_B0_aunroll_x_out_valid_out_0),
        .in_arg3_0_tpl(in_arg_arg3_0_tpl),
        .in_arg7_0_tpl(in_arg_arg7_0_tpl),
        .out_intel_reserved_ffwd_0_0(bb_ZTS9optimized_B2_aunroll_x_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_ZTS9optimized_B2_aunroll_x_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_ZTS9optimized_B2_aunroll_x_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_ZTS9optimized_B2_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_ZTS9optimized_B2_aunroll_x_out_intel_reserved_ffwd_4_0),
        .out_profile_loop_o_valid(bb_ZTS9optimized_B2_aunroll_x_out_profile_loop_o_valid),
        .out_stall_in_0(bb_ZTS9optimized_B2_aunroll_x_out_stall_in_0),
        .out_stall_out_0(bb_ZTS9optimized_B2_aunroll_x_out_stall_out_0),
        .out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_address(bb_ZTS9optimized_B2_aunroll_x_out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_address),
        .out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_burstcount(bb_ZTS9optimized_B2_aunroll_x_out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_burstcount),
        .out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_byteenable(bb_ZTS9optimized_B2_aunroll_x_out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_byteenable),
        .out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_enable(bb_ZTS9optimized_B2_aunroll_x_out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_enable),
        .out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_read(bb_ZTS9optimized_B2_aunroll_x_out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_read),
        .out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_write(bb_ZTS9optimized_B2_aunroll_x_out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_write),
        .out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_writedata(bb_ZTS9optimized_B2_aunroll_x_out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_writedata),
        .out_valid_in_0(bb_ZTS9optimized_B2_aunroll_x_out_valid_in_0),
        .out_valid_out_0(bb_ZTS9optimized_B2_aunroll_x_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // optimized_B2_x(EXTIFACE,4)
    assign optimized_B2_x_i_capture = GND_q;
    assign optimized_B2_x_i_clear = GND_q;
    assign optimized_B2_x_i_enable = VCC_q;
    assign optimized_B2_x_i_shift = GND_q;
    assign optimized_B2_x_i_stall_pred = bb_ZTS9optimized_B2_aunroll_x_out_stall_out_0;
    assign optimized_B2_x_i_stall_succ = bb_ZTS9optimized_B2_aunroll_x_out_stall_in_0;
    assign optimized_B2_x_i_valid_loop = bb_ZTS9optimized_B2_aunroll_x_out_profile_loop_o_valid;
    assign optimized_B2_x_i_valid_pred = bb_ZTS9optimized_B2_aunroll_x_out_valid_in_0;
    assign optimized_B2_x_i_valid_succ = bb_ZTS9optimized_B2_aunroll_x_out_valid_out_0;
    assign optimized_B2_x_i_capture_bitsignaltemp = optimized_B2_x_i_capture[0];
    assign optimized_B2_x_i_clear_bitsignaltemp = optimized_B2_x_i_clear[0];
    assign optimized_B2_x_i_enable_bitsignaltemp = optimized_B2_x_i_enable[0];
    assign optimized_B2_x_i_shift_bitsignaltemp = optimized_B2_x_i_shift[0];
    assign optimized_B2_x_i_stall_pred_bitsignaltemp = optimized_B2_x_i_stall_pred[0];
    assign optimized_B2_x_i_stall_succ_bitsignaltemp = optimized_B2_x_i_stall_succ[0];
    assign optimized_B2_x_i_valid_loop_bitsignaltemp = optimized_B2_x_i_valid_loop[0];
    assign optimized_B2_x_i_valid_pred_bitsignaltemp = optimized_B2_x_i_valid_pred[0];
    assign optimized_B2_x_i_valid_succ_bitsignaltemp = optimized_B2_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("optimized.B2")
    ) theoptimized_B2_x (
        .i_capture(optimized_B2_x_i_capture_bitsignaltemp),
        .i_clear(optimized_B2_x_i_clear_bitsignaltemp),
        .i_enable(optimized_B2_x_i_enable_bitsignaltemp),
        .i_shift(optimized_B2_x_i_shift_bitsignaltemp),
        .i_stall_pred(optimized_B2_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(optimized_B2_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(optimized_B2_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(optimized_B2_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(optimized_B2_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // out_memdep_k0_ZTS9optimized_avm_address(GPOUT,5)
    assign out_memdep_k0_ZTS9optimized_avm_address = bb_ZTS9optimized_B1_aunroll_x_out_memdep_k0_ZTS9optimized_avm_address;

    // out_memdep_k0_ZTS9optimized_avm_burstcount(GPOUT,6)
    assign out_memdep_k0_ZTS9optimized_avm_burstcount = bb_ZTS9optimized_B1_aunroll_x_out_memdep_k0_ZTS9optimized_avm_burstcount;

    // out_memdep_k0_ZTS9optimized_avm_byteenable(GPOUT,7)
    assign out_memdep_k0_ZTS9optimized_avm_byteenable = bb_ZTS9optimized_B1_aunroll_x_out_memdep_k0_ZTS9optimized_avm_byteenable;

    // out_memdep_k0_ZTS9optimized_avm_enable(GPOUT,8)
    assign out_memdep_k0_ZTS9optimized_avm_enable = bb_ZTS9optimized_B1_aunroll_x_out_memdep_k0_ZTS9optimized_avm_enable;

    // out_memdep_k0_ZTS9optimized_avm_read(GPOUT,9)
    assign out_memdep_k0_ZTS9optimized_avm_read = bb_ZTS9optimized_B1_aunroll_x_out_memdep_k0_ZTS9optimized_avm_read;

    // out_memdep_k0_ZTS9optimized_avm_write(GPOUT,10)
    assign out_memdep_k0_ZTS9optimized_avm_write = bb_ZTS9optimized_B1_aunroll_x_out_memdep_k0_ZTS9optimized_avm_write;

    // out_memdep_k0_ZTS9optimized_avm_writedata(GPOUT,11)
    assign out_memdep_k0_ZTS9optimized_avm_writedata = bb_ZTS9optimized_B1_aunroll_x_out_memdep_k0_ZTS9optimized_avm_writedata;

    // out_o_active_memdep(GPOUT,12)
    assign out_o_active_memdep = bb_ZTS9optimized_B1_aunroll_x_out_lsu_memdep_o_active;

    // out_stall_out(GPOUT,13)
    assign out_stall_out = bb_ZTS9optimized_B0_aunroll_x_out_stall_out_0;

    // out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_address(GPOUT,14)
    assign out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_address = bb_ZTS9optimized_B2_aunroll_x_out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_address;

    // out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_burstcount(GPOUT,15)
    assign out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_burstcount = bb_ZTS9optimized_B2_aunroll_x_out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_burstcount;

    // out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_byteenable(GPOUT,16)
    assign out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_byteenable = bb_ZTS9optimized_B2_aunroll_x_out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_byteenable;

    // out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_enable(GPOUT,17)
    assign out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_enable = bb_ZTS9optimized_B2_aunroll_x_out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_enable;

    // out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_read(GPOUT,18)
    assign out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_read = bb_ZTS9optimized_B2_aunroll_x_out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_read;

    // out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_write(GPOUT,19)
    assign out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_write = bb_ZTS9optimized_B2_aunroll_x_out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_write;

    // out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_writedata(GPOUT,20)
    assign out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_writedata = bb_ZTS9optimized_B2_aunroll_x_out_unnamed_k0_ZTS9optimized6_k0_ZTS9optimized_avm_writedata;

    // out_valid_out(GPOUT,21)
    assign out_valid_out = bb_ZTS9optimized_B1_aunroll_x_out_valid_out_0;

    // rst_sync(RESETSYNC,50)
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
