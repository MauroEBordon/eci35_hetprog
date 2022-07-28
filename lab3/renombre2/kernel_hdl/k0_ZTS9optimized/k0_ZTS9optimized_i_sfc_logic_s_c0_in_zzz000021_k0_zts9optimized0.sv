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

// SystemVerilog created from i_sfc_logic_s_c0_in_zzz4mainenkulrn2cl4sycl7handleree_cles2_enkulve_clev_exit_zts9optimizeds_c0_enter21_k0_zts9optimized0
// Created for function/kernel k0_ZTS9optimized
// SystemVerilog created on Thu Jul 28 16:41:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k0_ZTS9optimized_i_sfc_logic_s_c0_in_zzz000021_k0_zts9optimized0 (
    input wire [63:0] in_arg4,
    input wire [31:0] in_intel_reserved_ffwd_6_0,
    input wire [0:0] in_i_valid,
    input wire [63:0] in_arg7_0_tpl,
    output wire [0:0] out_c0_exi223_0_tpl,
    output wire [63:0] out_c0_exi223_1_tpl,
    output wire [31:0] out_c0_exi223_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_k0_ZTS9optimized7,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized21_k0_zts9optimized5_out_dest_data_out_6_0;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized3_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized3_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized3_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized3_vt_select_63_b;
    wire [1:0] i_unnamed_k0_zts9optimized4_vt_const_1_q;
    wire [63:0] i_unnamed_k0_zts9optimized4_vt_join_q;
    wire [61:0] i_unnamed_k0_zts9optimized4_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_s_class_cl_sycl_ranges_arg7_sync_buffer_k0_zts9optimized1_aunroll_x_out_buffer_out_0_tpl;
    wire [64:0] dupName_1_i_unnamed_k0_zts9optimized0_add_x_a;
    wire [64:0] dupName_1_i_unnamed_k0_zts9optimized0_add_x_b;
    logic [64:0] dupName_1_i_unnamed_k0_zts9optimized0_add_x_o;
    wire [64:0] dupName_1_i_unnamed_k0_zts9optimized0_add_x_q;
    wire [61:0] dupName_1_i_unnamed_k0_zts9optimized0_narrow_x_b;
    wire [63:0] dupName_1_i_unnamed_k0_zts9optimized0_shift_join_x_q;
    wire [63:0] dupName_1_i_unnamed_k0_zts9optimized0_dupName_0_trunc_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,26)@0 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg3(REG,29)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized21_k0_zts9optimized5(BLACKBOX,5)@1
    k0_ZTS9optimized_i_llvm_fpga_ffwd_dest_f000021_k0_zts9optimized0 thei_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized21_k0_zts9optimized5 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized21_k0_zts9optimized5_out_dest_data_out_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,27)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_sync_buffer_s_class_cl_sycl_ranges_arg7_sync_buffer_k0_zts9optimized1_aunroll_x(BLACKBOX,17)@0
    // in in_i_dependence@1
    // in in_valid_in@1
    // out out_valid_out@1
    // out out_buffer_out_0_tpl@1
    k0_ZTS9optimized_i_llvm_fpga_sync_buffer0003er_k0_zts9optimized0 thei_llvm_fpga_sync_buffer_s_class_cl_sycl_ranges_arg7_sync_buffer_k0_zts9optimized1_aunroll_x (
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .in_buffer_in_0_tpl(in_arg7_0_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .out_buffer_out_0_tpl(i_llvm_fpga_sync_buffer_s_class_cl_sycl_ranges_arg7_sync_buffer_k0_zts9optimized1_aunroll_x_out_buffer_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_i_unnamed_k0_zts9optimized0_narrow_x(BITSELECT,22)@1
    assign dupName_1_i_unnamed_k0_zts9optimized0_narrow_x_b = i_llvm_fpga_sync_buffer_s_class_cl_sycl_ranges_arg7_sync_buffer_k0_zts9optimized1_aunroll_x_out_buffer_out_0_tpl[61:0];

    // dupName_1_i_unnamed_k0_zts9optimized0_shift_join_x(BITJOIN,23)@1
    assign dupName_1_i_unnamed_k0_zts9optimized0_shift_join_x_q = {dupName_1_i_unnamed_k0_zts9optimized0_narrow_x_b, i_unnamed_k0_zts9optimized4_vt_const_1_q};

    // valid_fanout_reg2(REG,28)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized3(BLACKBOX,6)@0
    // in in_i_dependence@1
    // in in_valid_in@1
    // out out_buffer_out@1
    // out out_valid_out@1
    k0_ZTS9optimized_i_llvm_fpga_sync_buffer0002er_k0_zts9optimized0 thei_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized3 (
        .in_buffer_in(in_arg4),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized3_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized3_vt_select_63(BITSELECT,9)@1
    assign i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized3_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized3_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized3_vt_const_9(CONSTANT,7)
    assign i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized3_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized3_vt_join(BITJOIN,8)@1
    assign i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized3_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized3_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized3_vt_const_9_q};

    // dupName_1_i_unnamed_k0_zts9optimized0_add_x(ADD,20)@1
    assign dupName_1_i_unnamed_k0_zts9optimized0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized3_vt_join_q};
    assign dupName_1_i_unnamed_k0_zts9optimized0_add_x_b = {1'b0, dupName_1_i_unnamed_k0_zts9optimized0_shift_join_x_q};
    assign dupName_1_i_unnamed_k0_zts9optimized0_add_x_o = $unsigned(dupName_1_i_unnamed_k0_zts9optimized0_add_x_a) + $unsigned(dupName_1_i_unnamed_k0_zts9optimized0_add_x_b);
    assign dupName_1_i_unnamed_k0_zts9optimized0_add_x_q = dupName_1_i_unnamed_k0_zts9optimized0_add_x_o[64:0];

    // dupName_1_i_unnamed_k0_zts9optimized0_dupName_0_trunc_sel_x(BITSELECT,25)@1
    assign dupName_1_i_unnamed_k0_zts9optimized0_dupName_0_trunc_sel_x_b = dupName_1_i_unnamed_k0_zts9optimized0_add_x_q[63:0];

    // i_unnamed_k0_zts9optimized4_vt_select_63(BITSELECT,12)@1
    assign i_unnamed_k0_zts9optimized4_vt_select_63_b = dupName_1_i_unnamed_k0_zts9optimized0_dupName_0_trunc_sel_x_b[63:2];

    // i_unnamed_k0_zts9optimized4_vt_const_1(CONSTANT,10)
    assign i_unnamed_k0_zts9optimized4_vt_const_1_q = $unsigned(2'b00);

    // i_unnamed_k0_zts9optimized4_vt_join(BITJOIN,11)@1
    assign i_unnamed_k0_zts9optimized4_vt_join_q = {i_unnamed_k0_zts9optimized4_vt_select_63_b, i_unnamed_k0_zts9optimized4_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,19)@1
    assign out_c0_exi223_0_tpl = GND_q;
    assign out_c0_exi223_1_tpl = i_unnamed_k0_zts9optimized4_vt_join_q;
    assign out_c0_exi223_2_tpl = i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized21_k0_zts9optimized5_out_dest_data_out_6_0;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_k0_ZTS9optimized7 = GND_q;

endmodule
