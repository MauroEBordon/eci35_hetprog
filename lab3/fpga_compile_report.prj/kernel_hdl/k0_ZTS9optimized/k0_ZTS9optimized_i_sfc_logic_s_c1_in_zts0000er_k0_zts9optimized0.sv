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

// SystemVerilog created from i_sfc_logic_s_c1_in_zts9optimizeds_c1_enter_k0_zts9optimized0
// Created for function/kernel k0_ZTS9optimized
// SystemVerilog created on Thu Jul 28 16:46:50 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k0_ZTS9optimized_i_sfc_logic_s_c1_in_zts0000er_k0_zts9optimized0 (
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_k0_ZTS9optimized12_0_tpl,
    output wire [0:0] out_unnamed_k0_ZTS9optimized3,
    input wire [0:0] in_c1_eni3_0_tpl,
    input wire [0:0] in_c1_eni3_1_tpl,
    input wire [31:0] in_c1_eni3_2_tpl,
    input wire [0:0] in_c1_eni3_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized10_k0_zts9optimized16_out_intel_reserved_ffwd_3_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized11_k0_zts9optimized17_out_intel_reserved_ffwd_4_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized7_k0_zts9optimized13_out_intel_reserved_ffwd_0_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized8_k0_zts9optimized14_out_intel_reserved_ffwd_1_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized9_k0_zts9optimized15_out_intel_reserved_ffwd_2_0;
    wire [31:0] i_unnamed_k0_zts9optimized3_out_primWireOut;
    wire [0:0] i_llvm_fpga_pop_f32_sroa_0_0_pop8_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_0_0_pop8_k0_zts9optimized7_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_f32_sroa_0_0_pop8_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_0_0_pop8_k0_zts9optimized7_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_f32_sroa_12_0_pop5_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_12_0_pop5_k0_zts9optimized4_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_f32_sroa_12_0_pop5_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_12_0_pop5_k0_zts9optimized4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_f32_sroa_15_0_pop4_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_15_0_pop4_k0_zts9optimized2_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_f32_sroa_15_0_pop4_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_15_0_pop4_k0_zts9optimized2_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_f32_sroa_6_0_pop7_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_6_0_pop7_k0_zts9optimized6_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_f32_sroa_6_0_pop7_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_6_0_pop7_k0_zts9optimized6_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_f32_sroa_9_0_pop6_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_9_0_pop6_k0_zts9optimized5_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_f32_sroa_9_0_pop6_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_9_0_pop6_k0_zts9optimized5_mux_x_q;
    wire [0:0] i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized1_x_i_valid;
    wire i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized1_x_i_stall;
    wire i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized1_x_i_data;
    wire [31:0] i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized1_x_o_data;
    wire [0:0] i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized1_x_i_valid;
    wire i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized1_x_i_stall;
    wire i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized1_x_i_data;
    wire [31:0] i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized1_x_o_data;
    wire [0:0] i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized1_x_i_valid;
    wire i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized1_x_i_stall;
    wire i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized1_x_i_data;
    wire [31:0] i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized1_x_o_data;
    wire [0:0] i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized1_x_i_valid;
    wire i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized1_x_i_stall;
    wire i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized1_x_i_data;
    wire [31:0] i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized1_x_o_data;
    wire [0:0] i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized1_x_i_valid;
    wire i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized1_x_i_stall;
    wire i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized1_x_i_data;
    wire [31:0] i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized1_x_o_data;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg15_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg18_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg19_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg20_q;
    wire [31:0] c_float_0_000000e_0044_q_const_q;
    wire [31:0] c_float_1_000000e_0045_q_const_q;
    reg [0:0] redist0_sync_together46_aunroll_x_in_c1_eni3_1_tpl_4_q;
    reg [0:0] redist0_sync_together46_aunroll_x_in_c1_eni3_1_tpl_4_delay_0;
    reg [0:0] redist0_sync_together46_aunroll_x_in_c1_eni3_1_tpl_4_delay_1;
    reg [0:0] redist0_sync_together46_aunroll_x_in_c1_eni3_1_tpl_4_delay_2;
    reg [0:0] redist1_sync_together46_aunroll_x_in_c1_eni3_1_tpl_5_q;
    reg [0:0] redist2_sync_together46_aunroll_x_in_c1_eni3_1_tpl_6_q;
    reg [0:0] redist3_sync_together46_aunroll_x_in_c1_eni3_1_tpl_7_q;
    reg [0:0] redist4_sync_together46_aunroll_x_in_c1_eni3_1_tpl_8_q;
    reg [31:0] redist5_sync_together46_aunroll_x_in_c1_eni3_2_tpl_4_q;
    reg [31:0] redist5_sync_together46_aunroll_x_in_c1_eni3_2_tpl_4_delay_0;
    reg [31:0] redist5_sync_together46_aunroll_x_in_c1_eni3_2_tpl_4_delay_1;
    reg [0:0] redist6_sync_together46_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist7_sync_together46_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist8_sync_together46_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist9_sync_together46_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist10_sync_together46_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist11_sync_together46_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist12_sync_together46_aunroll_x_in_i_valid_7_q;
    reg [0:0] redist13_sync_together46_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist14_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_1_q;
    reg [0:0] redist15_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_2_q;
    reg [0:0] redist16_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_3_q;
    reg [0:0] redist17_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_4_q;
    reg [0:0] redist18_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_5_q;
    reg [0:0] redist19_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_6_q;
    reg [0:0] redist20_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_7_q;
    reg [31:0] redist5_sync_together46_aunroll_x_in_c1_eni3_2_tpl_4_inputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist6_sync_together46_aunroll_x_in_i_valid_1(DELAY,97)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist6_sync_together46_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist6_sync_together46_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist7_sync_together46_aunroll_x_in_i_valid_2(DELAY,98)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together46_aunroll_x_in_i_valid_2_q <= $unsigned(redist6_sync_together46_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist8_sync_together46_aunroll_x_in_i_valid_3(DELAY,99)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist8_sync_together46_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist8_sync_together46_aunroll_x_in_i_valid_3_q <= $unsigned(redist7_sync_together46_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist9_sync_together46_aunroll_x_in_i_valid_4(DELAY,100)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together46_aunroll_x_in_i_valid_4_q <= $unsigned(redist8_sync_together46_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg16(REG,84)@845 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist9_sync_together46_aunroll_x_in_i_valid_4_q);
        end
    end

    // c_float_0_000000e_0044_q_const(CONSTANT,89)
    assign c_float_0_000000e_0044_q_const_q = $unsigned(32'b00000000000000000000000000000000);

    // c_float_1_000000e_0045_q_const(CONSTANT,90)
    assign c_float_1_000000e_0045_q_const_q = $unsigned(32'b00111111100000000000000000000000);

    // i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x(LOGICAL,48)@842
    assign i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg15(REG,83)@841 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg14(REG,82)@844 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist8_sync_together46_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized1_x(FIFODELAY,55)@842
    // in i_valid@845
    // in i_write_pred@845
    // in i_data@846
    // out o_data@845
    assign i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized1_x_i_stall = ~ (valid_fanout_reg15_q & i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q);
    assign i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized1_x_i_valid = valid_fanout_reg14_q & redist16_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized1_x_i_data = i_llvm_fpga_pop_f32_sroa_12_0_pop5_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_12_0_pop5_k0_zts9optimized4_mux_x_q;
    assign i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized1_x_i_valid[0];
    assign i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(32),
        .STYLE("zl"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized1_x (
        .i_valid(i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_f32_sroa_12_0_pop5_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_12_0_pop5_k0_zts9optimized4_mux_x_q),
        .o_data(i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together46_aunroll_x_in_c1_eni3_1_tpl_4(DELAY,91)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together46_aunroll_x_in_c1_eni3_1_tpl_4_delay_0 <= $unsigned(in_c1_eni3_1_tpl);
            redist0_sync_together46_aunroll_x_in_c1_eni3_1_tpl_4_delay_1 <= redist0_sync_together46_aunroll_x_in_c1_eni3_1_tpl_4_delay_0;
            redist0_sync_together46_aunroll_x_in_c1_eni3_1_tpl_4_delay_2 <= redist0_sync_together46_aunroll_x_in_c1_eni3_1_tpl_4_delay_1;
            redist0_sync_together46_aunroll_x_in_c1_eni3_1_tpl_4_q <= redist0_sync_together46_aunroll_x_in_c1_eni3_1_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_f32_sroa_15_0_pop4_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_15_0_pop4_k0_zts9optimized2_mux_x(MUX,43)@845
    assign i_llvm_fpga_pop_f32_sroa_15_0_pop4_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_15_0_pop4_k0_zts9optimized2_mux_x_s = redist0_sync_together46_aunroll_x_in_c1_eni3_1_tpl_4_q;
    always @(i_llvm_fpga_pop_f32_sroa_15_0_pop4_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_15_0_pop4_k0_zts9optimized2_mux_x_s or i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized1_x_o_data or c_float_0_000000e_0044_q_const_q)
    begin
        unique case (i_llvm_fpga_pop_f32_sroa_15_0_pop4_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_15_0_pop4_k0_zts9optimized2_mux_x_s)
            1'b0 : i_llvm_fpga_pop_f32_sroa_15_0_pop4_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_15_0_pop4_k0_zts9optimized2_mux_x_q = i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_15_0_push4_k0_zts9optimized1_x_o_data;
            1'b1 : i_llvm_fpga_pop_f32_sroa_15_0_pop4_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_15_0_pop4_k0_zts9optimized2_mux_x_q = c_float_0_000000e_0044_q_const_q;
            default : i_llvm_fpga_pop_f32_sroa_15_0_pop4_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_15_0_pop4_k0_zts9optimized2_mux_x_q = 32'b0;
        endcase
    end

    // redist5_sync_together46_aunroll_x_in_c1_eni3_2_tpl_4_inputreg0(DELAY,112)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together46_aunroll_x_in_c1_eni3_2_tpl_4_inputreg0_q <= $unsigned(in_c1_eni3_2_tpl);
        end
    end

    // redist5_sync_together46_aunroll_x_in_c1_eni3_2_tpl_4(DELAY,96)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together46_aunroll_x_in_c1_eni3_2_tpl_4_delay_0 <= $unsigned(redist5_sync_together46_aunroll_x_in_c1_eni3_2_tpl_4_inputreg0_q);
            redist5_sync_together46_aunroll_x_in_c1_eni3_2_tpl_4_delay_1 <= redist5_sync_together46_aunroll_x_in_c1_eni3_2_tpl_4_delay_0;
            redist5_sync_together46_aunroll_x_in_c1_eni3_2_tpl_4_q <= redist5_sync_together46_aunroll_x_in_c1_eni3_2_tpl_4_delay_1;
        end
    end

    // i_unnamed_k0_zts9optimized3(BLACKBOX,34)@845
    // out out_primWireOut@850
    k0_ZTS9optimized_flt_i_sfc_logic_s_c1_in0000742c246j22644ck2975u thei_unnamed_k0_zts9optimized3 (
        .in_0(redist5_sync_together46_aunroll_x_in_c1_eni3_2_tpl_4_q),
        .in_1(i_llvm_fpga_pop_f32_sroa_15_0_pop4_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_15_0_pop4_k0_zts9optimized2_mux_x_q),
        .out_primWireOut(i_unnamed_k0_zts9optimized3_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,75)@845 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist9_sync_together46_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist20_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_7(DELAY,111)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_7_q <= $unsigned(redist19_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_6_q);
        end
    end

    // redist10_sync_together46_aunroll_x_in_i_valid_5(DELAY,101)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist10_sync_together46_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist10_sync_together46_aunroll_x_in_i_valid_5_q <= $unsigned(redist9_sync_together46_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist11_sync_together46_aunroll_x_in_i_valid_6(DELAY,102)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together46_aunroll_x_in_i_valid_6_q <= $unsigned(redist10_sync_together46_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist12_sync_together46_aunroll_x_in_i_valid_7(DELAY,103)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist12_sync_together46_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist12_sync_together46_aunroll_x_in_i_valid_7_q <= $unsigned(redist11_sync_together46_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg6(REG,74)@848 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist12_sync_together46_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized1_x(FIFODELAY,47)@846
    // in i_valid@849
    // in i_write_pred@849
    // in i_data@850
    // out o_data@849
    assign i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized1_x_i_stall = ~ (valid_fanout_reg7_q & redist17_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_4_q);
    assign i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized1_x_i_valid = valid_fanout_reg6_q & redist20_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_7_q;
    assign i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized1_x_i_data = i_unnamed_k0_zts9optimized3_out_primWireOut;
    assign i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized1_x_i_valid[0];
    assign i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(32),
        .STYLE("zl"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized1_x (
        .i_valid(i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized1_x_i_stall_bitsignaltemp),
        .i_data(i_unnamed_k0_zts9optimized3_out_primWireOut),
        .o_data(i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together46_aunroll_x_in_c1_eni3_1_tpl_8(DELAY,95)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together46_aunroll_x_in_c1_eni3_1_tpl_8_q <= $unsigned(redist3_sync_together46_aunroll_x_in_c1_eni3_1_tpl_7_q);
        end
    end

    // i_llvm_fpga_pop_f32_sroa_0_0_pop8_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_0_0_pop8_k0_zts9optimized7_mux_x(MUX,41)@849
    assign i_llvm_fpga_pop_f32_sroa_0_0_pop8_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_0_0_pop8_k0_zts9optimized7_mux_x_s = redist4_sync_together46_aunroll_x_in_c1_eni3_1_tpl_8_q;
    always @(i_llvm_fpga_pop_f32_sroa_0_0_pop8_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_0_0_pop8_k0_zts9optimized7_mux_x_s or i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized1_x_o_data or c_float_1_000000e_0045_q_const_q)
    begin
        unique case (i_llvm_fpga_pop_f32_sroa_0_0_pop8_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_0_0_pop8_k0_zts9optimized7_mux_x_s)
            1'b0 : i_llvm_fpga_pop_f32_sroa_0_0_pop8_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_0_0_pop8_k0_zts9optimized7_mux_x_q = i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized1_x_o_data;
            1'b1 : i_llvm_fpga_pop_f32_sroa_0_0_pop8_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_0_0_pop8_k0_zts9optimized7_mux_x_q = c_float_1_000000e_0045_q_const_q;
            default : i_llvm_fpga_pop_f32_sroa_0_0_pop8_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_0_0_pop8_k0_zts9optimized7_mux_x_q = 32'b0;
        endcase
    end

    // redist16_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_3(DELAY,107)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_3_q <= $unsigned(redist15_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_2_q);
        end
    end

    // valid_fanout_reg9(REG,77)@844 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist8_sync_together46_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist19_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_6(DELAY,110)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_6_q <= $unsigned(redist18_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_5_q);
        end
    end

    // valid_fanout_reg8(REG,76)@847 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist11_sync_together46_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized1_x(FIFODELAY,59)@845
    // in i_valid@848
    // in i_write_pred@848
    // in i_data@849
    // out o_data@848
    assign i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized1_x_i_stall = ~ (valid_fanout_reg9_q & redist16_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_3_q);
    assign i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized1_x_i_valid = valid_fanout_reg8_q & redist19_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_6_q;
    assign i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized1_x_i_data = i_llvm_fpga_pop_f32_sroa_0_0_pop8_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_0_0_pop8_k0_zts9optimized7_mux_x_q;
    assign i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized1_x_i_valid[0];
    assign i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(32),
        .STYLE("zl"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized1_x (
        .i_valid(i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_f32_sroa_0_0_pop8_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_0_0_pop8_k0_zts9optimized7_mux_x_q),
        .o_data(i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together46_aunroll_x_in_c1_eni3_1_tpl_7(DELAY,94)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together46_aunroll_x_in_c1_eni3_1_tpl_7_q <= $unsigned(redist2_sync_together46_aunroll_x_in_c1_eni3_1_tpl_6_q);
        end
    end

    // i_llvm_fpga_pop_f32_sroa_6_0_pop7_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_6_0_pop7_k0_zts9optimized6_mux_x(MUX,44)@848
    assign i_llvm_fpga_pop_f32_sroa_6_0_pop7_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_6_0_pop7_k0_zts9optimized6_mux_x_s = redist3_sync_together46_aunroll_x_in_c1_eni3_1_tpl_7_q;
    always @(i_llvm_fpga_pop_f32_sroa_6_0_pop7_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_6_0_pop7_k0_zts9optimized6_mux_x_s or i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized1_x_o_data or c_float_0_000000e_0044_q_const_q)
    begin
        unique case (i_llvm_fpga_pop_f32_sroa_6_0_pop7_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_6_0_pop7_k0_zts9optimized6_mux_x_s)
            1'b0 : i_llvm_fpga_pop_f32_sroa_6_0_pop7_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_6_0_pop7_k0_zts9optimized6_mux_x_q = i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_6_0_push7_k0_zts9optimized1_x_o_data;
            1'b1 : i_llvm_fpga_pop_f32_sroa_6_0_pop7_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_6_0_pop7_k0_zts9optimized6_mux_x_q = c_float_0_000000e_0044_q_const_q;
            default : i_llvm_fpga_pop_f32_sroa_6_0_pop7_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_6_0_pop7_k0_zts9optimized6_mux_x_q = 32'b0;
        endcase
    end

    // redist15_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_2(DELAY,106)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_2_q <= $unsigned(redist14_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_1_q);
        end
    end

    // valid_fanout_reg11(REG,79)@843 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist7_sync_together46_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist18_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_5(DELAY,109)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_5_q <= $unsigned(redist17_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_4_q);
        end
    end

    // valid_fanout_reg10(REG,78)@846 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist10_sync_together46_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized1_x(FIFODELAY,63)@844
    // in i_valid@847
    // in i_write_pred@847
    // in i_data@848
    // out o_data@847
    assign i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized1_x_i_stall = ~ (valid_fanout_reg11_q & redist15_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized1_x_i_valid = valid_fanout_reg10_q & redist18_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_5_q;
    assign i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized1_x_i_data = i_llvm_fpga_pop_f32_sroa_6_0_pop7_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_6_0_pop7_k0_zts9optimized6_mux_x_q;
    assign i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized1_x_i_valid[0];
    assign i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(32),
        .STYLE("zl"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized1_x (
        .i_valid(i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_f32_sroa_6_0_pop7_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_6_0_pop7_k0_zts9optimized6_mux_x_q),
        .o_data(i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together46_aunroll_x_in_c1_eni3_1_tpl_6(DELAY,93)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together46_aunroll_x_in_c1_eni3_1_tpl_6_q <= $unsigned(redist1_sync_together46_aunroll_x_in_c1_eni3_1_tpl_5_q);
        end
    end

    // i_llvm_fpga_pop_f32_sroa_9_0_pop6_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_9_0_pop6_k0_zts9optimized5_mux_x(MUX,45)@847
    assign i_llvm_fpga_pop_f32_sroa_9_0_pop6_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_9_0_pop6_k0_zts9optimized5_mux_x_s = redist2_sync_together46_aunroll_x_in_c1_eni3_1_tpl_6_q;
    always @(i_llvm_fpga_pop_f32_sroa_9_0_pop6_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_9_0_pop6_k0_zts9optimized5_mux_x_s or i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized1_x_o_data or c_float_0_000000e_0044_q_const_q)
    begin
        unique case (i_llvm_fpga_pop_f32_sroa_9_0_pop6_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_9_0_pop6_k0_zts9optimized5_mux_x_s)
            1'b0 : i_llvm_fpga_pop_f32_sroa_9_0_pop6_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_9_0_pop6_k0_zts9optimized5_mux_x_q = i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_9_0_push6_k0_zts9optimized1_x_o_data;
            1'b1 : i_llvm_fpga_pop_f32_sroa_9_0_pop6_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_9_0_pop6_k0_zts9optimized5_mux_x_q = c_float_0_000000e_0044_q_const_q;
            default : i_llvm_fpga_pop_f32_sroa_9_0_pop6_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_9_0_pop6_k0_zts9optimized5_mux_x_q = 32'b0;
        endcase
    end

    // redist14_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_1(DELAY,105)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_1_q <= $unsigned(i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q);
        end
    end

    // valid_fanout_reg13(REG,81)@842 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist6_sync_together46_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist17_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_4(DELAY,108)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_4_q <= $unsigned(redist16_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_3_q);
        end
    end

    // valid_fanout_reg12(REG,80)@845 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist9_sync_together46_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized1_x(FIFODELAY,51)@843
    // in i_valid@846
    // in i_write_pred@846
    // in i_data@847
    // out o_data@846
    assign i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized1_x_i_stall = ~ (valid_fanout_reg13_q & redist14_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_1_q);
    assign i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized1_x_i_valid = valid_fanout_reg12_q & redist17_i_llvm_fpga_push_f32_sroa_0_0_push8_k0_zts9optimized0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized1_x_i_data = i_llvm_fpga_pop_f32_sroa_9_0_pop6_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_9_0_pop6_k0_zts9optimized5_mux_x_q;
    assign i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized1_x_i_valid[0];
    assign i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(32),
        .STYLE("zl"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized1_x (
        .i_valid(i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_f32_sroa_9_0_pop6_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_9_0_pop6_k0_zts9optimized5_mux_x_q),
        .o_data(i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together46_aunroll_x_in_c1_eni3_1_tpl_5(DELAY,92)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together46_aunroll_x_in_c1_eni3_1_tpl_5_q <= $unsigned(redist0_sync_together46_aunroll_x_in_c1_eni3_1_tpl_4_q);
        end
    end

    // i_llvm_fpga_pop_f32_sroa_12_0_pop5_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_12_0_pop5_k0_zts9optimized4_mux_x(MUX,42)@846
    assign i_llvm_fpga_pop_f32_sroa_12_0_pop5_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_12_0_pop5_k0_zts9optimized4_mux_x_s = redist1_sync_together46_aunroll_x_in_c1_eni3_1_tpl_5_q;
    always @(i_llvm_fpga_pop_f32_sroa_12_0_pop5_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_12_0_pop5_k0_zts9optimized4_mux_x_s or i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized1_x_o_data or c_float_0_000000e_0044_q_const_q)
    begin
        unique case (i_llvm_fpga_pop_f32_sroa_12_0_pop5_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_12_0_pop5_k0_zts9optimized4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_f32_sroa_12_0_pop5_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_12_0_pop5_k0_zts9optimized4_mux_x_q = i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized0_i_llvm_fpga_push_f32_sroa_12_0_push5_k0_zts9optimized1_x_o_data;
            1'b1 : i_llvm_fpga_pop_f32_sroa_12_0_pop5_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_12_0_pop5_k0_zts9optimized4_mux_x_q = c_float_0_000000e_0044_q_const_q;
            default : i_llvm_fpga_pop_f32_sroa_12_0_pop5_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_12_0_pop5_k0_zts9optimized4_mux_x_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized7_k0_zts9optimized13(BLACKBOX,31)@846
    // out out_intel_reserved_ffwd_0_0@20000000
    k0_ZTS9optimized_i_llvm_fpga_ffwd_source0000d7_k0_zts9optimized0 thei_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized7_k0_zts9optimized13 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(i_llvm_fpga_pop_f32_sroa_12_0_pop5_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_12_0_pop5_k0_zts9optimized4_mux_x_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized7_k0_zts9optimized13_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,35)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized7_k0_zts9optimized13_out_intel_reserved_ffwd_0_0;

    // valid_fanout_reg17(REG,85)@846 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist10_sync_together46_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized8_k0_zts9optimized14(BLACKBOX,32)@847
    // out out_intel_reserved_ffwd_1_0@20000000
    k0_ZTS9optimized_i_llvm_fpga_ffwd_source0000d8_k0_zts9optimized0 thei_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized8_k0_zts9optimized14 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(i_llvm_fpga_pop_f32_sroa_9_0_pop6_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_9_0_pop6_k0_zts9optimized5_mux_x_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized8_k0_zts9optimized14_out_intel_reserved_ffwd_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,37)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized8_k0_zts9optimized14_out_intel_reserved_ffwd_1_0;

    // valid_fanout_reg18(REG,86)@847 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist11_sync_together46_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized9_k0_zts9optimized15(BLACKBOX,33)@848
    // out out_intel_reserved_ffwd_2_0@20000000
    k0_ZTS9optimized_i_llvm_fpga_ffwd_source0000d9_k0_zts9optimized0 thei_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized9_k0_zts9optimized15 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(i_llvm_fpga_pop_f32_sroa_6_0_pop7_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_6_0_pop7_k0_zts9optimized6_mux_x_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized9_k0_zts9optimized15_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,38)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized9_k0_zts9optimized15_out_intel_reserved_ffwd_2_0;

    // valid_fanout_reg19(REG,87)@848 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist12_sync_together46_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized10_k0_zts9optimized16(BLACKBOX,29)@849
    // out out_intel_reserved_ffwd_3_0@20000000
    k0_ZTS9optimized_i_llvm_fpga_ffwd_source000010_k0_zts9optimized0 thei_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized10_k0_zts9optimized16 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(i_llvm_fpga_pop_f32_sroa_0_0_pop8_k0_zts9optimized0_i_llvm_fpga_pop_f32_sroa_0_0_pop8_k0_zts9optimized7_mux_x_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized10_k0_zts9optimized16_out_intel_reserved_ffwd_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,39)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized10_k0_zts9optimized16_out_intel_reserved_ffwd_3_0;

    // redist13_sync_together46_aunroll_x_in_i_valid_8(DELAY,104)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_sync_together46_aunroll_x_in_i_valid_8_q <= $unsigned(redist12_sync_together46_aunroll_x_in_i_valid_7_q);
        end
    end

    // valid_fanout_reg20(REG,88)@849 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist13_sync_together46_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized11_k0_zts9optimized17(BLACKBOX,30)@850
    // out out_intel_reserved_ffwd_4_0@20000000
    k0_ZTS9optimized_i_llvm_fpga_ffwd_source000011_k0_zts9optimized0 thei_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized11_k0_zts9optimized17 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(i_unnamed_k0_zts9optimized3_out_primWireOut),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized11_k0_zts9optimized17_out_intel_reserved_ffwd_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,40)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized11_k0_zts9optimized17_out_intel_reserved_ffwd_4_0;

    // valid_fanout_reg0(REG,68)@849 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist13_sync_together46_aunroll_x_in_i_valid_8_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,66)@850
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_k0_ZTS9optimized12_0_tpl = GND_q;
    assign out_unnamed_k0_ZTS9optimized3 = GND_q;

endmodule
