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

// SystemVerilog created from i_sfc_logic_s_c0_in_zts5naives_c0_enter2_k0_zts5naive0
// Created for function/kernel k0_ZTS5naive
// SystemVerilog created on Thu Jul 28 16:26:54 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k0_ZTS5naive_i_sfc_logic_s_c0_in_zts5nai0000enter2_k0_zts5naive0 (
    input wire [63:0] in_arg0,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_arg3_0_tpl,
    output wire [0:0] out_ZTS5naive_B1_current_iter_isspec,
    output wire [0:0] out_c0_exi4_0_tpl,
    output wire [63:0] out_c0_exi4_1_tpl,
    output wire [0:0] out_c0_exi4_2_tpl,
    output wire [0:0] out_c0_exi4_3_tpl,
    output wire [0:0] out_c0_exi4_4_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [20:0] c_i21_149_q;
    wire [20:0] c_i21_99999847_q;
    wire [63:0] c_i64_045_q;
    wire [63:0] c_i64_146_q;
    wire [21:0] i_fpga_indvars_iv_next_k0_zts5naive22_a;
    wire [21:0] i_fpga_indvars_iv_next_k0_zts5naive22_b;
    logic [21:0] i_fpga_indvars_iv_next_k0_zts5naive22_o;
    wire [21:0] i_fpga_indvars_iv_next_k0_zts5naive22_q;
    wire [0:0] i_llvm_fpga_dummy_thread_zts5naive_b1_dummy_k0_zts5naive2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3_out_buffer_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts5naive6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts5naive6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts5naive6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts5naive6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts5naive6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts5naive6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_k0_zts5naive21_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_k0_zts5naive21_out_feedback_valid_out_2;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_arg0_sync_buffer_k0_zts5naive11_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_arg0_sync_buffer_k0_zts5naive11_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_arg0_sync_buffer_k0_zts5naive11_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_arg0_sync_buffer_k0_zts5naive11_vt_select_63_b;
    wire [0:0] i_notcmp_k0_zts5naive20_q;
    wire [1:0] i_unnamed_k0_zts5naive12_vt_const_1_q;
    wire [63:0] i_unnamed_k0_zts5naive12_vt_join_q;
    wire [61:0] i_unnamed_k0_zts5naive12_vt_select_63_b;
    wire [63:0] i_unnamed_k0_zts5naive14_vt_join_q;
    wire [61:0] i_unnamed_k0_zts5naive14_vt_select_63_b;
    wire [64:0] i_unnamed_k0_zts5naive15_a;
    wire [64:0] i_unnamed_k0_zts5naive15_b;
    logic [64:0] i_unnamed_k0_zts5naive15_o;
    wire [64:0] i_unnamed_k0_zts5naive15_q;
    wire [0:0] i_zts5naive_b1_current_iter_isspec_k0_zts5naive5_qi;
    reg [0:0] i_zts5naive_b1_current_iter_isspec_k0_zts5naive5_q;
    wire [0:0] i_zts5naive_b1_next_iter_isreal_k0_zts5naive7_q;
    wire [20:0] bgTrunc_i_fpga_indvars_iv_next_k0_zts5naive22_sel_x_b;
    wire [63:0] bgTrunc_i_unnamed_k0_zts5naive15_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_zts5naive_b1_current_iter_isreal_k0_zts5naive0_i_llvm_fpga_pop_coalesce_i1_zts5naive_b1_current_iter_isreal_k0_zts5naive4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_zts5naive_b1_current_iter_isreal_k0_zts5naive0_i_llvm_fpga_pop_coalesce_i1_zts5naive_b1_current_iter_isreal_k0_zts5naive4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive0_i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive16_mux_x_s;
    reg [20:0] i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive0_i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive16_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_acl_0_i73_pop4_k0_zts5naive0_i_llvm_fpga_pop_i64_acl_0_i73_pop4_k0_zts5naive13_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_acl_0_i73_pop4_k0_zts5naive0_i_llvm_fpga_pop_i64_acl_0_i73_pop4_k0_zts5naive13_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive1_x_i_valid;
    wire i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive1_x_i_stall;
    wire i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_adapt_scalar_trunc4_sel_x_b;
    wire [10:0] i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_c_i11_03_x_q;
    wire [31:0] i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive1_x_i_valid;
    wire i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive1_x_i_stall;
    wire i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive1_x_o_data;
    wire [20:0] i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive0_i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive1_x_i_valid;
    wire i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive0_i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive0_i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive1_x_i_stall;
    wire i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive0_i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive0_i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive0_i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive1_x_o_data;
    wire [63:0] i_llvm_fpga_sync_buffer_s_class_cl_sycl_ranges_arg3_sync_buffer_k0_zts5naive9_aunroll_x_out_buffer_out_0_tpl;
    wire [64:0] i_unnamed_k0_zts5naive0_add_x_a;
    wire [64:0] i_unnamed_k0_zts5naive0_add_x_b;
    logic [64:0] i_unnamed_k0_zts5naive0_add_x_o;
    wire [64:0] i_unnamed_k0_zts5naive0_add_x_q;
    wire [61:0] i_unnamed_k0_zts5naive0_narrow_x_b;
    wire [63:0] i_unnamed_k0_zts5naive0_shift_join_x_q;
    wire [63:0] i_unnamed_k0_zts5naive0_dupName_0_trunc_sel_x_b;
    wire [64:0] dupName_0_i_unnamed_k0_zts5naive0_add_x_a;
    wire [64:0] dupName_0_i_unnamed_k0_zts5naive0_add_x_b;
    logic [64:0] dupName_0_i_unnamed_k0_zts5naive0_add_x_o;
    wire [64:0] dupName_0_i_unnamed_k0_zts5naive0_add_x_q;
    wire [61:0] dupName_0_i_unnamed_k0_zts5naive0_narrow_x_b;
    wire [63:0] dupName_0_i_unnamed_k0_zts5naive0_shift_join_x_q;
    wire [63:0] dupName_0_i_unnamed_k0_zts5naive0_dupName_0_trunc_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    wire [0:0] i_exitcond_k0_zts5naive17_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond_k0_zts5naive17_cmp_nsign_q_1_q;
    reg [0:0] redist1_sync_together56_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist1_sync_together56_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist2_sync_together56_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist3_sync_together56_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist4_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_inv_pred_x_q_2_q;
    reg [0:0] redist4_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist5_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_inv_pred_x_q_3_q;
    reg [0:0] redist6_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_inv_pred_x_q_4_q;
    reg [20:0] redist7_i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive0_i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive16_mux_x_q_1_q;
    reg [63:0] redist8_bgTrunc_i_unnamed_k0_zts5naive15_sel_x_b_1_q;
    reg [61:0] redist9_i_unnamed_k0_zts5naive12_vt_select_63_b_1_q;
    reg [0:0] redist10_i_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3_out_buffer_out_4_q;
    reg [0:0] redist10_i_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3_out_buffer_out_4_delay_0;
    reg [0:0] redist10_i_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3_out_buffer_out_4_delay_1;
    reg [0:0] redist10_i_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3_out_buffer_out_4_delay_2;
    reg [0:0] redist11_i_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3_out_buffer_out_5_q;
    reg [0:0] redist12_i_llvm_fpga_dummy_thread_zts5naive_b1_dummy_k0_zts5naive2_out_dummy_out_4_q;
    reg [0:0] redist12_i_llvm_fpga_dummy_thread_zts5naive_b1_dummy_k0_zts5naive2_out_dummy_out_4_delay_0;
    reg [0:0] redist12_i_llvm_fpga_dummy_thread_zts5naive_b1_dummy_k0_zts5naive2_out_dummy_out_4_delay_1;
    reg [0:0] redist12_i_llvm_fpga_dummy_thread_zts5naive_b1_dummy_k0_zts5naive2_out_dummy_out_4_delay_2;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together56_aunroll_x_in_i_valid_2(DELAY,114)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_sync_together56_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist1_sync_together56_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together56_aunroll_x_in_i_valid_2_q <= redist1_sync_together56_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist2_sync_together56_aunroll_x_in_i_valid_3(DELAY,115)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist2_sync_together56_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist2_sync_together56_aunroll_x_in_i_valid_3_q <= $unsigned(redist1_sync_together56_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg2(REG,95)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist2_sync_together56_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg11(REG,104)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist2_sync_together56_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i21_99999847(CONSTANT,26)
    assign c_i21_99999847_q = $unsigned(21'b011110100001000111110);

    // i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_c_i11_03_x(CONSTANT,69)
    assign i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_c_i11_03_x_q = $unsigned(11'b00000000000);

    // c_i21_149(CONSTANT,25)
    assign c_i21_149_q = $unsigned(21'b111111111111111111111);

    // redist7_i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive0_i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive16_mux_x_q_1(DELAY,120)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive0_i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive16_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive0_i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive16_mux_x_q);
        end
    end

    // i_fpga_indvars_iv_next_k0_zts5naive22(ADD,30)@5
    assign i_fpga_indvars_iv_next_k0_zts5naive22_a = {1'b0, redist7_i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive0_i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive16_mux_x_q_1_q};
    assign i_fpga_indvars_iv_next_k0_zts5naive22_b = {1'b0, c_i21_149_q};
    assign i_fpga_indvars_iv_next_k0_zts5naive22_o = $unsigned(i_fpga_indvars_iv_next_k0_zts5naive22_a) + $unsigned(i_fpga_indvars_iv_next_k0_zts5naive22_b);
    assign i_fpga_indvars_iv_next_k0_zts5naive22_q = i_fpga_indvars_iv_next_k0_zts5naive22_o[21:0];

    // bgTrunc_i_fpga_indvars_iv_next_k0_zts5naive22_sel_x(BITSELECT,53)@5
    assign bgTrunc_i_fpga_indvars_iv_next_k0_zts5naive22_sel_x_b = i_fpga_indvars_iv_next_k0_zts5naive22_q[20:0];

    // i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_element_extension2_x(BITJOIN,70)@5
    assign i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_element_extension2_x_q = {i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_c_i11_03_x_q, bgTrunc_i_fpga_indvars_iv_next_k0_zts5naive22_sel_x_b};

    // i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_inv_pred_x(LOGICAL,66)@1
    assign i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg13(REG,106)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(in_i_valid);
        end
    end

    // redist4_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_inv_pred_x_q_2(DELAY,117)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_inv_pred_x_q);
            redist4_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_inv_pred_x_q_2_q <= redist4_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_inv_pred_x_q_2_delay_0;
        end
    end

    // redist5_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_inv_pred_x_q_3(DELAY,118)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_inv_pred_x_q_3_q <= $unsigned(redist4_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_inv_pred_x_q_2_q);
        end
    end

    // valid_fanout_reg12(REG,105)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist2_sync_together56_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive1_x(FIFODELAY,71)@1 + 4
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive1_x_i_stall = ~ (valid_fanout_reg13_q & i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_inv_pred_x_q);
    assign i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive1_x_i_valid = valid_fanout_reg12_q & redist5_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive1_x_i_data = i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_element_extension2_x_q;
    assign i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive1_x_i_valid[0];
    assign i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(4),
        .WIDTH(32),
        .STYLE("ll"),
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
    ) thei_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive1_x (
        .i_valid(i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_adapt_scalar_trunc4_sel_x(BITSELECT,73)@4
    assign i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive1_x_o_data[20:0];

    // i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive0_i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive16_mux_x(MUX,60)@4
    assign i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive0_i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive16_mux_x_s = redist10_i_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive0_i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive16_mux_x_s or i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_adapt_scalar_trunc4_sel_x_b or c_i21_99999847_q)
    begin
        unique case (i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive0_i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive16_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive0_i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive16_mux_x_q = i_llvm_fpga_push_i21_fpga_indvars_iv_push3_k0_zts5naive0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive0_i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive16_mux_x_q = c_i21_99999847_q;
            default : i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive0_i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive16_mux_x_q = 21'b0;
        endcase
    end

    // i_exitcond_k0_zts5naive17_cmp_nsign(LOGICAL,112)@4
    assign i_exitcond_k0_zts5naive17_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive0_i_llvm_fpga_pop_i21_fpga_indvars_iv_pop3_k0_zts5naive16_mux_x_q[20:20]));

    // i_llvm_fpga_push_i1_notexitcond_k0_zts5naive21(BLACKBOX,34)@4
    // in in_empty_in@20000000
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    k0_ZTS5naive_i_llvm_fpga_push_i1_notexitcond_k0_zts5naive0 thei_llvm_fpga_push_i1_notexitcond_k0_zts5naive21 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond_k0_zts5naive17_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_k0_zts5naive6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_k0_zts5naive21_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_k0_zts5naive21_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_zts5naive_b1_dummy_k0_zts5naive2(BLACKBOX,31)@0
    // in in_stall_in@20000000
    k0_ZTS5naive_i_llvm_fpga_dummy_thread_zt0000_dummy_k0_zts5naive0 thei_llvm_fpga_dummy_thread_zts5naive_b1_dummy_k0_zts5naive2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_zts5naive_b1_dummy_k0_zts5naive2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_i_llvm_fpga_dummy_thread_zts5naive_b1_dummy_k0_zts5naive2_out_dummy_out_4(DELAY,125)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_i_llvm_fpga_dummy_thread_zts5naive_b1_dummy_k0_zts5naive2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_zts5naive_b1_dummy_k0_zts5naive2_out_dummy_out);
            redist12_i_llvm_fpga_dummy_thread_zts5naive_b1_dummy_k0_zts5naive2_out_dummy_out_4_delay_1 <= redist12_i_llvm_fpga_dummy_thread_zts5naive_b1_dummy_k0_zts5naive2_out_dummy_out_4_delay_0;
            redist12_i_llvm_fpga_dummy_thread_zts5naive_b1_dummy_k0_zts5naive2_out_dummy_out_4_delay_2 <= redist12_i_llvm_fpga_dummy_thread_zts5naive_b1_dummy_k0_zts5naive2_out_dummy_out_4_delay_1;
            redist12_i_llvm_fpga_dummy_thread_zts5naive_b1_dummy_k0_zts5naive2_out_dummy_out_4_q <= redist12_i_llvm_fpga_dummy_thread_zts5naive_b1_dummy_k0_zts5naive2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3(BLACKBOX,32)@0
    // in in_stall_in@20000000
    k0_ZTS5naive_i_llvm_fpga_forked_zts5naiv0000forked_k0_zts5naive0 thei_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_i_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3_out_buffer_out_4(DELAY,123)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_i_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3_out_buffer_out);
            redist10_i_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3_out_buffer_out_4_delay_1 <= redist10_i_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3_out_buffer_out_4_delay_0;
            redist10_i_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3_out_buffer_out_4_delay_2 <= redist10_i_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3_out_buffer_out_4_delay_1;
            redist10_i_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3_out_buffer_out_4_q <= redist10_i_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going_k0_zts5naive6(BLACKBOX,33)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    k0_ZTS5naive_i_llvm_fpga_pipeline_keep_going_k0_zts5naive0 thei_llvm_fpga_pipeline_keep_going_k0_zts5naive6 (
        .in_data_in(redist10_i_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3_out_buffer_out_4_q),
        .in_dummy_in(redist12_i_llvm_fpga_dummy_thread_zts5naive_b1_dummy_k0_zts5naive2_out_dummy_out_4_q),
        .in_forked_in(redist10_i_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_k0_zts5naive21_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_k0_zts5naive21_out_feedback_valid_out_2),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_k0_zts5naive6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_k0_zts5naive6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_k0_zts5naive6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going_k0_zts5naive6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going_k0_zts5naive6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_k0_zts5naive6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,51)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_k0_zts5naive6_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,56)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going_k0_zts5naive6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,57)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going_k0_zts5naive6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,58)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_k0_zts5naive6_out_pipeline_valid_out;

    // redist3_sync_together56_aunroll_x_in_i_valid_4(DELAY,116)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together56_aunroll_x_in_i_valid_4_q <= $unsigned(redist2_sync_together56_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg0(REG,93)@4 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together56_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist11_i_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3_out_buffer_out_5(DELAY,124)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_i_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3_out_buffer_out_5_q <= $unsigned(redist10_i_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3_out_buffer_out_4_q);
        end
    end

    // i_notcmp_k0_zts5naive20(LOGICAL,39)@5
    assign i_notcmp_k0_zts5naive20_q = redist0_i_exitcond_k0_zts5naive17_cmp_nsign_q_1_q ^ VCC_q;

    // redist0_i_exitcond_k0_zts5naive17_cmp_nsign_q_1(DELAY,113)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_exitcond_k0_zts5naive17_cmp_nsign_q_1_q <= $unsigned(i_exitcond_k0_zts5naive17_cmp_nsign_q);
        end
    end

    // c_i64_045(CONSTANT,27)
    assign c_i64_045_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // c_i64_146(CONSTANT,28)
    assign c_i64_146_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000001);

    // i_unnamed_k0_zts5naive15(ADD,46)@5
    assign i_unnamed_k0_zts5naive15_a = {1'b0, i_llvm_fpga_pop_i64_acl_0_i73_pop4_k0_zts5naive0_i_llvm_fpga_pop_i64_acl_0_i73_pop4_k0_zts5naive13_mux_x_q};
    assign i_unnamed_k0_zts5naive15_b = {1'b0, c_i64_146_q};
    assign i_unnamed_k0_zts5naive15_o = $unsigned(i_unnamed_k0_zts5naive15_a) + $unsigned(i_unnamed_k0_zts5naive15_b);
    assign i_unnamed_k0_zts5naive15_q = i_unnamed_k0_zts5naive15_o[64:0];

    // bgTrunc_i_unnamed_k0_zts5naive15_sel_x(BITSELECT,54)@5
    assign bgTrunc_i_unnamed_k0_zts5naive15_sel_x_b = i_unnamed_k0_zts5naive15_q[63:0];

    // redist8_bgTrunc_i_unnamed_k0_zts5naive15_sel_x_b_1(DELAY,121)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_bgTrunc_i_unnamed_k0_zts5naive15_sel_x_b_1_q <= $unsigned(bgTrunc_i_unnamed_k0_zts5naive15_sel_x_b);
        end
    end

    // valid_fanout_reg10(REG,103)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // redist6_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_inv_pred_x_q_4(DELAY,119)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_inv_pred_x_q_4_q <= $unsigned(redist5_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_inv_pred_x_q_3_q);
        end
    end

    // valid_fanout_reg9(REG,102)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist3_sync_together56_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive0_i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive1_x(FIFODELAY,74)@1 + 3
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    assign i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive0_i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive1_x_i_stall = ~ (valid_fanout_reg10_q & i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive0_i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive1_x_i_valid = valid_fanout_reg9_q & redist6_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive0_i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive1_x_i_data = redist8_bgTrunc_i_unnamed_k0_zts5naive15_sel_x_b_1_q;
    assign i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive0_i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive0_i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive0_i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive0_i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(3),
        .WIDTH(64),
        .STYLE("ll"),
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
    ) thei_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive0_i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive1_x (
        .i_valid(i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive0_i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive0_i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive1_x_i_stall_bitsignaltemp),
        .i_data(redist8_bgTrunc_i_unnamed_k0_zts5naive15_sel_x_b_1_q),
        .o_data(i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive0_i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_acl_0_i73_pop4_k0_zts5naive0_i_llvm_fpga_pop_i64_acl_0_i73_pop4_k0_zts5naive13_mux_x(MUX,61)@4 + 1
    assign i_llvm_fpga_pop_i64_acl_0_i73_pop4_k0_zts5naive0_i_llvm_fpga_pop_i64_acl_0_i73_pop4_k0_zts5naive13_mux_x_s = redist10_i_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i64_acl_0_i73_pop4_k0_zts5naive0_i_llvm_fpga_pop_i64_acl_0_i73_pop4_k0_zts5naive13_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i64_acl_0_i73_pop4_k0_zts5naive0_i_llvm_fpga_pop_i64_acl_0_i73_pop4_k0_zts5naive13_mux_x_q <= i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive0_i_llvm_fpga_push_i64_acl_0_i73_push4_k0_zts5naive1_x_o_data;
                1'b1 : i_llvm_fpga_pop_i64_acl_0_i73_pop4_k0_zts5naive0_i_llvm_fpga_pop_i64_acl_0_i73_pop4_k0_zts5naive13_mux_x_q <= c_i64_045_q;
                default : i_llvm_fpga_pop_i64_acl_0_i73_pop4_k0_zts5naive0_i_llvm_fpga_pop_i64_acl_0_i73_pop4_k0_zts5naive13_mux_x_q <= 64'b0;
            endcase
        end
    end

    // dupName_0_i_unnamed_k0_zts5naive0_narrow_x(BITSELECT,89)@5
    assign dupName_0_i_unnamed_k0_zts5naive0_narrow_x_b = i_llvm_fpga_pop_i64_acl_0_i73_pop4_k0_zts5naive0_i_llvm_fpga_pop_i64_acl_0_i73_pop4_k0_zts5naive13_mux_x_q[61:0];

    // dupName_0_i_unnamed_k0_zts5naive0_shift_join_x(BITJOIN,90)@5
    assign dupName_0_i_unnamed_k0_zts5naive0_shift_join_x_q = {dupName_0_i_unnamed_k0_zts5naive0_narrow_x_b, i_unnamed_k0_zts5naive12_vt_const_1_q};

    // valid_fanout_reg5(REG,98)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist2_sync_together56_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_sync_buffer_s_class_cl_sycl_ranges_arg3_sync_buffer_k0_zts5naive9_aunroll_x(BLACKBOX,77)@0
    // in in_i_dependence@4
    // in in_valid_in@4
    // out out_valid_out@4
    // out out_buffer_out_0_tpl@4
    k0_ZTS5naive_i_llvm_fpga_sync_buffer_s_c0000buffer_k0_zts5naive0 thei_llvm_fpga_sync_buffer_s_class_cl_sycl_ranges_arg3_sync_buffer_k0_zts5naive9_aunroll_x (
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .in_buffer_in_0_tpl(in_arg3_0_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .out_buffer_out_0_tpl(i_llvm_fpga_sync_buffer_s_class_cl_sycl_ranges_arg3_sync_buffer_k0_zts5naive9_aunroll_x_out_buffer_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_k0_zts5naive0_narrow_x(BITSELECT,80)@4
    assign i_unnamed_k0_zts5naive0_narrow_x_b = i_llvm_fpga_sync_buffer_s_class_cl_sycl_ranges_arg3_sync_buffer_k0_zts5naive9_aunroll_x_out_buffer_out_0_tpl[61:0];

    // i_unnamed_k0_zts5naive0_shift_join_x(BITJOIN,81)@4
    assign i_unnamed_k0_zts5naive0_shift_join_x_q = {i_unnamed_k0_zts5naive0_narrow_x_b, i_unnamed_k0_zts5naive12_vt_const_1_q};

    // valid_fanout_reg6(REG,99)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist2_sync_together56_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_arg0_sync_buffer_k0_zts5naive11(BLACKBOX,35)@0
    // in in_i_dependence@4
    // in in_valid_in@4
    // out out_buffer_out@4
    // out out_valid_out@4
    k0_ZTS5naive_i_llvm_fpga_sync_buffer_p100000buffer_k0_zts5naive0 thei_llvm_fpga_sync_buffer_p1024f32_arg0_sync_buffer_k0_zts5naive11 (
        .in_buffer_in(in_arg0),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_arg0_sync_buffer_k0_zts5naive11_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_arg0_sync_buffer_k0_zts5naive11_vt_select_63(BITSELECT,38)@4
    assign i_llvm_fpga_sync_buffer_p1024f32_arg0_sync_buffer_k0_zts5naive11_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_arg0_sync_buffer_k0_zts5naive11_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_arg0_sync_buffer_k0_zts5naive11_vt_const_9(CONSTANT,36)
    assign i_llvm_fpga_sync_buffer_p1024f32_arg0_sync_buffer_k0_zts5naive11_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_arg0_sync_buffer_k0_zts5naive11_vt_join(BITJOIN,37)@4
    assign i_llvm_fpga_sync_buffer_p1024f32_arg0_sync_buffer_k0_zts5naive11_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_arg0_sync_buffer_k0_zts5naive11_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_arg0_sync_buffer_k0_zts5naive11_vt_const_9_q};

    // i_unnamed_k0_zts5naive0_add_x(ADD,78)@4
    assign i_unnamed_k0_zts5naive0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_arg0_sync_buffer_k0_zts5naive11_vt_join_q};
    assign i_unnamed_k0_zts5naive0_add_x_b = {1'b0, i_unnamed_k0_zts5naive0_shift_join_x_q};
    assign i_unnamed_k0_zts5naive0_add_x_o = $unsigned(i_unnamed_k0_zts5naive0_add_x_a) + $unsigned(i_unnamed_k0_zts5naive0_add_x_b);
    assign i_unnamed_k0_zts5naive0_add_x_q = i_unnamed_k0_zts5naive0_add_x_o[64:0];

    // i_unnamed_k0_zts5naive0_dupName_0_trunc_sel_x(BITSELECT,83)@4
    assign i_unnamed_k0_zts5naive0_dupName_0_trunc_sel_x_b = i_unnamed_k0_zts5naive0_add_x_q[63:0];

    // i_unnamed_k0_zts5naive12_vt_select_63(BITSELECT,42)@4
    assign i_unnamed_k0_zts5naive12_vt_select_63_b = i_unnamed_k0_zts5naive0_dupName_0_trunc_sel_x_b[63:2];

    // redist9_i_unnamed_k0_zts5naive12_vt_select_63_b_1(DELAY,122)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_i_unnamed_k0_zts5naive12_vt_select_63_b_1_q <= $unsigned(i_unnamed_k0_zts5naive12_vt_select_63_b);
        end
    end

    // i_unnamed_k0_zts5naive12_vt_join(BITJOIN,41)@5
    assign i_unnamed_k0_zts5naive12_vt_join_q = {redist9_i_unnamed_k0_zts5naive12_vt_select_63_b_1_q, i_unnamed_k0_zts5naive12_vt_const_1_q};

    // dupName_0_i_unnamed_k0_zts5naive0_add_x(ADD,87)@5
    assign dupName_0_i_unnamed_k0_zts5naive0_add_x_a = {1'b0, i_unnamed_k0_zts5naive12_vt_join_q};
    assign dupName_0_i_unnamed_k0_zts5naive0_add_x_b = {1'b0, dupName_0_i_unnamed_k0_zts5naive0_shift_join_x_q};
    assign dupName_0_i_unnamed_k0_zts5naive0_add_x_o = $unsigned(dupName_0_i_unnamed_k0_zts5naive0_add_x_a) + $unsigned(dupName_0_i_unnamed_k0_zts5naive0_add_x_b);
    assign dupName_0_i_unnamed_k0_zts5naive0_add_x_q = dupName_0_i_unnamed_k0_zts5naive0_add_x_o[64:0];

    // dupName_0_i_unnamed_k0_zts5naive0_dupName_0_trunc_sel_x(BITSELECT,92)@5
    assign dupName_0_i_unnamed_k0_zts5naive0_dupName_0_trunc_sel_x_b = dupName_0_i_unnamed_k0_zts5naive0_add_x_q[63:0];

    // i_unnamed_k0_zts5naive14_vt_select_63(BITSELECT,45)@5
    assign i_unnamed_k0_zts5naive14_vt_select_63_b = dupName_0_i_unnamed_k0_zts5naive0_dupName_0_trunc_sel_x_b[63:2];

    // i_unnamed_k0_zts5naive12_vt_const_1(CONSTANT,40)
    assign i_unnamed_k0_zts5naive12_vt_const_1_q = $unsigned(2'b00);

    // i_unnamed_k0_zts5naive14_vt_join(BITJOIN,44)@5
    assign i_unnamed_k0_zts5naive14_vt_join_q = {i_unnamed_k0_zts5naive14_vt_select_63_b, i_unnamed_k0_zts5naive12_vt_const_1_q};

    // i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_c_i7_03_x(CONSTANT,63)
    assign i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_c_i7_03_x_q = $unsigned(7'b0000000);

    // i_zts5naive_b1_next_iter_isreal_k0_zts5naive7(LOGICAL,48)@4
    assign i_zts5naive_b1_next_iter_isreal_k0_zts5naive7_q = i_llvm_fpga_pop_coalesce_i1_zts5naive_b1_current_iter_isreal_k0_zts5naive0_i_llvm_fpga_pop_coalesce_i1_zts5naive_b1_current_iter_isreal_k0_zts5naive4_mux_x_q & i_llvm_fpga_pipeline_keep_going_k0_zts5naive6_out_data_out;

    // i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_element_extension2_x(BITJOIN,64)@4
    assign i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_element_extension2_x_q = {i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_c_i7_03_x_q, i_zts5naive_b1_next_iter_isreal_k0_zts5naive7_q};

    // valid_fanout_reg4(REG,97)@0 + 1
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

    // valid_fanout_reg3(REG,96)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist1_sync_together56_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive1_x(FIFODELAY,65)@1 + 5
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive1_x_i_valid = valid_fanout_reg3_q & redist4_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive1_x_i_data = i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(5),
        .WIDTH(8),
        .STYLE("ll"),
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
    ) thei_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive1_x (
        .i_valid(i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_adapt_scalar_trunc4_sel_x(BITSELECT,67)@4
    assign i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive1_x_o_data[0:0];

    // i_llvm_fpga_pop_coalesce_i1_zts5naive_b1_current_iter_isreal_k0_zts5naive0_i_llvm_fpga_pop_coalesce_i1_zts5naive_b1_current_iter_isreal_k0_zts5naive4_mux_x(MUX,59)@4
    assign i_llvm_fpga_pop_coalesce_i1_zts5naive_b1_current_iter_isreal_k0_zts5naive0_i_llvm_fpga_pop_coalesce_i1_zts5naive_b1_current_iter_isreal_k0_zts5naive4_mux_x_s = redist10_i_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_zts5naive_b1_current_iter_isreal_k0_zts5naive0_i_llvm_fpga_pop_coalesce_i1_zts5naive_b1_current_iter_isreal_k0_zts5naive4_mux_x_s or i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_zts5naive_b1_current_iter_isreal_k0_zts5naive0_i_llvm_fpga_pop_coalesce_i1_zts5naive_b1_current_iter_isreal_k0_zts5naive4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_zts5naive_b1_current_iter_isreal_k0_zts5naive0_i_llvm_fpga_pop_coalesce_i1_zts5naive_b1_current_iter_isreal_k0_zts5naive4_mux_x_q = i_llvm_fpga_push_i1_zts5naive_b1_next_iter_isreal_push_k0_zts5naive0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_zts5naive_b1_current_iter_isreal_k0_zts5naive0_i_llvm_fpga_pop_coalesce_i1_zts5naive_b1_current_iter_isreal_k0_zts5naive4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_zts5naive_b1_current_iter_isreal_k0_zts5naive0_i_llvm_fpga_pop_coalesce_i1_zts5naive_b1_current_iter_isreal_k0_zts5naive4_mux_x_q = 1'b0;
        endcase
    end

    // i_zts5naive_b1_current_iter_isspec_k0_zts5naive5(LOGICAL,47)@4 + 1
    assign i_zts5naive_b1_current_iter_isspec_k0_zts5naive5_qi = i_llvm_fpga_pop_coalesce_i1_zts5naive_b1_current_iter_isreal_k0_zts5naive0_i_llvm_fpga_pop_coalesce_i1_zts5naive_b1_current_iter_isreal_k0_zts5naive4_mux_x_q ^ VCC_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_zts5naive_b1_current_iter_isspec_k0_zts5naive5_delay ( .xin(i_zts5naive_b1_current_iter_isspec_k0_zts5naive5_qi), .xout(i_zts5naive_b1_current_iter_isspec_k0_zts5naive5_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,85)@5
    assign out_ZTS5naive_B1_current_iter_isspec = i_zts5naive_b1_current_iter_isspec_k0_zts5naive5_q;
    assign out_c0_exi4_0_tpl = GND_q;
    assign out_c0_exi4_1_tpl = i_unnamed_k0_zts5naive14_vt_join_q;
    assign out_c0_exi4_2_tpl = redist0_i_exitcond_k0_zts5naive17_cmp_nsign_q_1_q;
    assign out_c0_exi4_3_tpl = i_notcmp_k0_zts5naive20_q;
    assign out_c0_exi4_4_tpl = redist11_i_llvm_fpga_forked_zts5naive_b1_forked_k0_zts5naive3_out_buffer_out_5_q;
    assign out_o_valid = valid_fanout_reg0_q;

endmodule
