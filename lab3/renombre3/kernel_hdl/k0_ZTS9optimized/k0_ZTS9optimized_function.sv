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
// SystemVerilog created on Thu Jul 28 16:45:00 2022


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

    wire [0:0] bb_ZTS9optimized_B0_aunroll_x_out_lsu_memdep_o_active;
    wire [34:0] bb_ZTS9optimized_B0_aunroll_x_out_memdep_k0_ZTS9optimized_avm_address;
    wire [4:0] bb_ZTS9optimized_B0_aunroll_x_out_memdep_k0_ZTS9optimized_avm_burstcount;
    wire [63:0] bb_ZTS9optimized_B0_aunroll_x_out_memdep_k0_ZTS9optimized_avm_byteenable;
    wire [0:0] bb_ZTS9optimized_B0_aunroll_x_out_memdep_k0_ZTS9optimized_avm_enable;
    wire [0:0] bb_ZTS9optimized_B0_aunroll_x_out_memdep_k0_ZTS9optimized_avm_read;
    wire [0:0] bb_ZTS9optimized_B0_aunroll_x_out_memdep_k0_ZTS9optimized_avm_write;
    wire [511:0] bb_ZTS9optimized_B0_aunroll_x_out_memdep_k0_ZTS9optimized_avm_writedata;
    wire [0:0] bb_ZTS9optimized_B0_aunroll_x_out_stall_out_0;
    wire [0:0] bb_ZTS9optimized_B0_aunroll_x_out_valid_out_0;
    reg [0:0] rst_sync_rst_sclrn;


    // bb_ZTS9optimized_B0_aunroll_x(BLACKBOX,12)
    k0_ZTS9optimized_bb_ZTS9optimized_B0 thebb_ZTS9optimized_B0_aunroll_x (
        .in_arg4(in_arg_arg4),
        .in_flush(in_start),
        .in_memdep_k0_ZTS9optimized_avm_readdata(in_memdep_k0_ZTS9optimized_avm_readdata),
        .in_memdep_k0_ZTS9optimized_avm_readdatavalid(in_memdep_k0_ZTS9optimized_avm_readdatavalid),
        .in_memdep_k0_ZTS9optimized_avm_waitrequest(in_memdep_k0_ZTS9optimized_avm_waitrequest),
        .in_memdep_k0_ZTS9optimized_avm_writeack(in_memdep_k0_ZTS9optimized_avm_writeack),
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(in_valid_in),
        .in_arg7_0_tpl(in_arg_arg7_0_tpl),
        .out_lsu_memdep_o_active(bb_ZTS9optimized_B0_aunroll_x_out_lsu_memdep_o_active),
        .out_memdep_k0_ZTS9optimized_avm_address(bb_ZTS9optimized_B0_aunroll_x_out_memdep_k0_ZTS9optimized_avm_address),
        .out_memdep_k0_ZTS9optimized_avm_burstcount(bb_ZTS9optimized_B0_aunroll_x_out_memdep_k0_ZTS9optimized_avm_burstcount),
        .out_memdep_k0_ZTS9optimized_avm_byteenable(bb_ZTS9optimized_B0_aunroll_x_out_memdep_k0_ZTS9optimized_avm_byteenable),
        .out_memdep_k0_ZTS9optimized_avm_enable(bb_ZTS9optimized_B0_aunroll_x_out_memdep_k0_ZTS9optimized_avm_enable),
        .out_memdep_k0_ZTS9optimized_avm_read(bb_ZTS9optimized_B0_aunroll_x_out_memdep_k0_ZTS9optimized_avm_read),
        .out_memdep_k0_ZTS9optimized_avm_write(bb_ZTS9optimized_B0_aunroll_x_out_memdep_k0_ZTS9optimized_avm_write),
        .out_memdep_k0_ZTS9optimized_avm_writedata(bb_ZTS9optimized_B0_aunroll_x_out_memdep_k0_ZTS9optimized_avm_writedata),
        .out_stall_out_0(bb_ZTS9optimized_B0_aunroll_x_out_stall_out_0),
        .out_valid_out_0(bb_ZTS9optimized_B0_aunroll_x_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_memdep_k0_ZTS9optimized_avm_address(GPOUT,2)
    assign out_memdep_k0_ZTS9optimized_avm_address = bb_ZTS9optimized_B0_aunroll_x_out_memdep_k0_ZTS9optimized_avm_address;

    // out_memdep_k0_ZTS9optimized_avm_burstcount(GPOUT,3)
    assign out_memdep_k0_ZTS9optimized_avm_burstcount = bb_ZTS9optimized_B0_aunroll_x_out_memdep_k0_ZTS9optimized_avm_burstcount;

    // out_memdep_k0_ZTS9optimized_avm_byteenable(GPOUT,4)
    assign out_memdep_k0_ZTS9optimized_avm_byteenable = bb_ZTS9optimized_B0_aunroll_x_out_memdep_k0_ZTS9optimized_avm_byteenable;

    // out_memdep_k0_ZTS9optimized_avm_enable(GPOUT,5)
    assign out_memdep_k0_ZTS9optimized_avm_enable = bb_ZTS9optimized_B0_aunroll_x_out_memdep_k0_ZTS9optimized_avm_enable;

    // out_memdep_k0_ZTS9optimized_avm_read(GPOUT,6)
    assign out_memdep_k0_ZTS9optimized_avm_read = bb_ZTS9optimized_B0_aunroll_x_out_memdep_k0_ZTS9optimized_avm_read;

    // out_memdep_k0_ZTS9optimized_avm_write(GPOUT,7)
    assign out_memdep_k0_ZTS9optimized_avm_write = bb_ZTS9optimized_B0_aunroll_x_out_memdep_k0_ZTS9optimized_avm_write;

    // out_memdep_k0_ZTS9optimized_avm_writedata(GPOUT,8)
    assign out_memdep_k0_ZTS9optimized_avm_writedata = bb_ZTS9optimized_B0_aunroll_x_out_memdep_k0_ZTS9optimized_avm_writedata;

    // out_o_active_memdep(GPOUT,9)
    assign out_o_active_memdep = bb_ZTS9optimized_B0_aunroll_x_out_lsu_memdep_o_active;

    // out_stall_out(GPOUT,10)
    assign out_stall_out = bb_ZTS9optimized_B0_aunroll_x_out_stall_out_0;

    // out_valid_out(GPOUT,11)
    assign out_valid_out = bb_ZTS9optimized_B0_aunroll_x_out_valid_out_0;

    // rst_sync(RESETSYNC,34)
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
