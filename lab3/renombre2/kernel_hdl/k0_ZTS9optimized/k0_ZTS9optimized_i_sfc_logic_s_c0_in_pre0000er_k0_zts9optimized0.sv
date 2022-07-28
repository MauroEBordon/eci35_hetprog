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

// SystemVerilog created from i_sfc_logic_s_c0_in_preheader_zts9optimizeds_c0_enter_k0_zts9optimized0
// Created for function/kernel k0_ZTS9optimized
// SystemVerilog created on Thu Jul 28 16:41:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k0_ZTS9optimized_i_sfc_logic_s_c0_in_pre0000er_k0_zts9optimized0 (
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [0:0] in_i_valid,
    output wire [31:0] out_intel_reserved_ffwd_0_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_0_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_0_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_0_0_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_k0_ZTS9optimized6_0_tpl,
    output wire [0:0] out_unnamed_k0_ZTS9optimized7,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized1_k0_zts9optimized1_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized2_k0_zts9optimized3_out_dest_data_out_2_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized3_k0_zts9optimized4_out_dest_data_out_3_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized4_k0_zts9optimized5_out_dest_data_out_4_0;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_zts9optimized_fpgaunique_0s_unnamed_k0_zts9optimized5_k0_zts9optimized6_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_zts9optimized_fpgaunique_0s_unnamed_k0_zts9optimized5_k0_zts9optimized6_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_zts9optimized_fpgaunique_0s_unnamed_k0_zts9optimized5_k0_zts9optimized6_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_zts9optimized_fpgaunique_0s_unnamed_k0_zts9optimized5_k0_zts9optimized6_aunroll_x_out_intel_reserved_ffwd_0_0_3_tpl;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg4(REG,24)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized4_k0_zts9optimized5(BLACKBOX,10)@1
    k0_ZTS9optimized_i_llvm_fpga_ffwd_dest_f0000d4_k0_zts9optimized0 thei_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized4_k0_zts9optimized5 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized4_k0_zts9optimized5_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,23)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized3_k0_zts9optimized4(BLACKBOX,9)@1
    k0_ZTS9optimized_i_llvm_fpga_ffwd_dest_f0000d3_k0_zts9optimized0 thei_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized3_k0_zts9optimized4 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized3_k0_zts9optimized4_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,22)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized2_k0_zts9optimized3(BLACKBOX,8)@1
    k0_ZTS9optimized_i_llvm_fpga_ffwd_dest_f0000d2_k0_zts9optimized0 thei_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized2_k0_zts9optimized3 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized2_k0_zts9optimized3_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,21)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized1_k0_zts9optimized1(BLACKBOX,7)@1
    k0_ZTS9optimized_i_llvm_fpga_ffwd_dest_f0000d1_k0_zts9optimized0 thei_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized1_k0_zts9optimized1 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized1_k0_zts9optimized1_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,25)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_s_case_assign_struct_zts9optimized_fpgaunique_0s_unnamed_k0_zts9optimized5_k0_zts9optimized6_aunroll_x(BLACKBOX,17)@1
    // out out_intel_reserved_ffwd_0_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_0_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_0_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_0_0_3_tpl@20000000
    k0_ZTS9optimized_i_llvm_fpga_ffwd_source0000d5_k0_zts9optimized0 thei_llvm_fpga_ffwd_source_s_case_assign_struct_zts9optimized_fpgaunique_0s_unnamed_k0_zts9optimized5_k0_zts9optimized6_aunroll_x (
        .in_predicate_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .in_src_data_in_0_0_0_tpl(i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized1_k0_zts9optimized1_out_dest_data_out_1_0),
        .in_src_data_in_0_0_1_tpl(i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized2_k0_zts9optimized3_out_dest_data_out_2_0),
        .in_src_data_in_0_0_2_tpl(i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized3_k0_zts9optimized4_out_dest_data_out_3_0),
        .in_src_data_in_0_0_3_tpl(i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized4_k0_zts9optimized5_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .out_intel_reserved_ffwd_0_0_0_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_zts9optimized_fpgaunique_0s_unnamed_k0_zts9optimized5_k0_zts9optimized6_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .out_intel_reserved_ffwd_0_0_1_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_zts9optimized_fpgaunique_0s_unnamed_k0_zts9optimized5_k0_zts9optimized6_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .out_intel_reserved_ffwd_0_0_2_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_zts9optimized_fpgaunique_0s_unnamed_k0_zts9optimized5_k0_zts9optimized6_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl),
        .out_intel_reserved_ffwd_0_0_3_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_zts9optimized_fpgaunique_0s_unnamed_k0_zts9optimized5_k0_zts9optimized6_aunroll_x_out_intel_reserved_ffwd_0_0_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync_aunroll_x(GPOUT,18)
    assign out_intel_reserved_ffwd_0_0_0_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_zts9optimized_fpgaunique_0s_unnamed_k0_zts9optimized5_k0_zts9optimized6_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    assign out_intel_reserved_ffwd_0_0_1_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_zts9optimized_fpgaunique_0s_unnamed_k0_zts9optimized5_k0_zts9optimized6_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    assign out_intel_reserved_ffwd_0_0_2_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_zts9optimized_fpgaunique_0s_unnamed_k0_zts9optimized5_k0_zts9optimized6_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl;
    assign out_intel_reserved_ffwd_0_0_3_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_zts9optimized_fpgaunique_0s_unnamed_k0_zts9optimized5_k0_zts9optimized6_aunroll_x_out_intel_reserved_ffwd_0_0_3_tpl;

    // valid_fanout_reg0(REG,20)@0 + 1
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

    // sync_out_aunroll_x(GPOUT,19)@1
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_k0_ZTS9optimized6_0_tpl = GND_q;
    assign out_unnamed_k0_ZTS9optimized7 = GND_q;

endmodule
