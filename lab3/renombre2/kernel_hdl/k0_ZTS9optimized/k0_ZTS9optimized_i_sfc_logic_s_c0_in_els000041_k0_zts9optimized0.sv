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

// SystemVerilog created from i_sfc_logic_s_c0_in_elseif106_zts9optimizeds_c0_enter141_k0_zts9optimized0
// Created for function/kernel k0_ZTS9optimized
// SystemVerilog created on Thu Jul 28 16:41:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k0_ZTS9optimized_i_sfc_logic_s_c0_in_els000041_k0_zts9optimized0 (
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_6_0,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_0_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_0_0_3_tpl,
    output wire [0:0] out_ZTS9optimized_B3_current_iter_isspec,
    output wire [0:0] out_c0_exi217_0_tpl,
    output wire [0:0] out_c0_exi217_1_tpl,
    output wire [0:0] out_c0_exi217_2_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni113_0_tpl,
    input wire [0:0] in_c0_eni113_1_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [3:0] c_i4_160_q;
    wire [3:0] c_i4_358_q;
    wire [63:0] c_i64_052_q;
    wire [63:0] c_i64_153_q;
    wire [63:0] c_i64_254_q;
    wire [63:0] c_i64_355_q;
    wire [63:0] c_i64_456_q;
    wire [0:0] comparator_qi;
    reg [0:0] comparator_q;
    wire [4:0] i_fpga_indvars_iv_next_k0_zts9optimized23_a;
    wire [4:0] i_fpga_indvars_iv_next_k0_zts9optimized23_b;
    logic [4:0] i_fpga_indvars_iv_next_k0_zts9optimized23_o;
    wire [4:0] i_fpga_indvars_iv_next_k0_zts9optimized23_q;
    reg [31:0] i_llvm_fpga_case_f32_i64_v4i64_s_case_assign_struct_zts9optimized_fpgaunique_0s_case_stmt_k0_zts9optimized12_q;
    wire [0:0] i_llvm_fpga_dummy_thread_zts9optimized_b3_dummy_k0_zts9optimized2_out_dummy_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized17_k0_zts9optimized10_out_dest_data_out_5_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized18_k0_zts9optimized25_out_intel_reserved_ffwd_6_0;
    wire [0:0] i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts9optimized6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts9optimized6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts9optimized6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts9optimized6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts9optimized6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts9optimized6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_k0_zts9optimized22_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_k0_zts9optimized22_out_feedback_valid_out_2;
    wire [0:0] i_notcmp_k0_zts9optimized21_q;
    wire [31:0] i_unnamed_k0_zts9optimized14_out_primWireOut;
    wire [64:0] i_unnamed_k0_zts9optimized15_a;
    wire [64:0] i_unnamed_k0_zts9optimized15_b;
    logic [64:0] i_unnamed_k0_zts9optimized15_o;
    wire [64:0] i_unnamed_k0_zts9optimized15_q;
    wire [0:0] i_zts9optimized_b3_current_iter_isspec_k0_zts9optimized5_q;
    wire [0:0] i_zts9optimized_b3_next_iter_isreal_k0_zts9optimized7_q;
    wire [3:0] bgTrunc_i_fpga_indvars_iv_next_k0_zts9optimized23_sel_x_b;
    wire [63:0] bgTrunc_i_unnamed_k0_zts9optimized15_sel_x_b;
    wire [0:0] dupName_0_comparator_x_qi;
    reg [0:0] dupName_0_comparator_x_q;
    wire [0:0] dupName_1_comparator_x_qi;
    reg [0:0] dupName_1_comparator_x_q;
    wire [0:0] dupName_2_comparator_x_qi;
    reg [0:0] dupName_2_comparator_x_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_zts9optimized_fpgaunique_0s_case_assign84_k0_zts9optimized9_aunroll_x_out_dest_data_out_0_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_zts9optimized_fpgaunique_0s_case_assign84_k0_zts9optimized9_aunroll_x_out_dest_data_out_0_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_zts9optimized_fpgaunique_0s_case_assign84_k0_zts9optimized9_aunroll_x_out_dest_data_out_0_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_zts9optimized_fpgaunique_0s_case_assign84_k0_zts9optimized9_aunroll_x_out_dest_data_out_0_0_3_tpl;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_f32_acl_027_i72_pop7_k0_zts9optimized0_i_llvm_fpga_pop_f32_acl_027_i72_pop7_k0_zts9optimized13_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_f32_acl_027_i72_pop7_k0_zts9optimized0_i_llvm_fpga_pop_f32_acl_027_i72_pop7_k0_zts9optimized13_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized0_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized16_mux_x_s;
    reg [3:0] i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized0_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized16_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_acl_0_i73_pop6_k0_zts9optimized0_i_llvm_fpga_pop_i64_acl_0_i73_pop6_k0_zts9optimized11_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_acl_0_i73_pop6_k0_zts9optimized0_i_llvm_fpga_pop_i64_acl_0_i73_pop6_k0_zts9optimized11_mux_x_q;
    wire [0:0] i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized1_x_i_valid;
    wire i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized1_x_i_stall;
    wire i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized1_x_i_data;
    wire [31:0] i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized1_x_o_data;
    wire [0:0] i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q;
    wire [6:0] i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized1_x_i_valid;
    wire i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized1_x_i_stall;
    wire i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_adapt_scalar_trunc4_sel_x_b;
    wire [3:0] i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_c_i4_03_x_q;
    wire [7:0] i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized1_x_i_valid;
    wire i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized1_x_i_stall;
    wire i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized1_x_o_data;
    wire [3:0] i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized0_i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized1_x_i_valid;
    wire i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized0_i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized0_i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized1_x_i_stall;
    wire i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized0_i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized0_i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized0_i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized1_x_o_data;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg15_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    wire [31:0] c_float_1_000000e_0057_q_const_q;
    wire [0:0] i_exitcond_k0_zts9optimized17_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond_k0_zts9optimized17_cmp_nsign_q_7_q;
    reg [0:0] redist1_sync_together67_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist1_sync_together67_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist2_sync_together67_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist3_sync_together67_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist4_sync_together67_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist5_sync_together67_aunroll_x_in_i_valid_9_q;
    reg [0:0] redist5_sync_together67_aunroll_x_in_i_valid_9_delay_0;
    reg [0:0] redist5_sync_together67_aunroll_x_in_i_valid_9_delay_1;
    reg [0:0] redist5_sync_together67_aunroll_x_in_i_valid_9_delay_2;
    reg [0:0] redist6_sync_together67_aunroll_x_in_i_valid_10_q;
    reg [0:0] redist7_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_2_q;
    reg [0:0] redist7_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist8_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_3_q;
    reg [0:0] redist9_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_4_q;
    reg [0:0] redist10_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_9_q;
    reg [0:0] redist10_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_9_delay_0;
    reg [0:0] redist10_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_9_delay_1;
    reg [0:0] redist10_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_9_delay_2;
    reg [0:0] redist10_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_9_delay_3;
    reg [3:0] redist11_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized0_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized16_mux_x_q_1_q;
    reg [0:0] redist12_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x_q_5_q;
    reg [0:0] redist12_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x_q_5_delay_0;
    reg [0:0] redist12_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x_q_5_delay_1;
    reg [0:0] redist12_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x_q_5_delay_2;
    reg [0:0] redist12_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x_q_5_delay_3;
    reg [63:0] redist13_bgTrunc_i_unnamed_k0_zts9optimized15_sel_x_b_1_q;
    reg [0:0] redist14_i_llvm_fpga_pipeline_keep_going_k0_zts9optimized6_out_data_out_2_q;
    reg [0:0] redist14_i_llvm_fpga_pipeline_keep_going_k0_zts9optimized6_out_data_out_2_delay_0;
    reg [0:0] redist15_i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out_4_q;
    reg [0:0] redist15_i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out_4_delay_0;
    reg [0:0] redist15_i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out_4_delay_1;
    reg [0:0] redist15_i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out_4_delay_2;
    reg [0:0] redist16_i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out_6_q;
    reg [0:0] redist16_i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out_6_delay_0;
    reg [0:0] redist17_i_llvm_fpga_dummy_thread_zts9optimized_b3_dummy_k0_zts9optimized2_out_dummy_out_4_q;
    reg [0:0] redist17_i_llvm_fpga_dummy_thread_zts9optimized_b3_dummy_k0_zts9optimized2_out_dummy_out_4_delay_0;
    reg [0:0] redist17_i_llvm_fpga_dummy_thread_zts9optimized_b3_dummy_k0_zts9optimized2_out_dummy_out_4_delay_1;
    reg [0:0] redist17_i_llvm_fpga_dummy_thread_zts9optimized_b3_dummy_k0_zts9optimized2_out_dummy_out_4_delay_2;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together67_aunroll_x_in_i_valid_2(DELAY,120)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_sync_together67_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist1_sync_together67_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together67_aunroll_x_in_i_valid_2_q <= redist1_sync_together67_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist2_sync_together67_aunroll_x_in_i_valid_3(DELAY,121)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist2_sync_together67_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist2_sync_together67_aunroll_x_in_i_valid_3_q <= $unsigned(redist1_sync_together67_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg2(REG,96)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist2_sync_together67_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg14(REG,108)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist2_sync_together67_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i4_358(CONSTANT,32)
    assign c_i4_358_q = $unsigned(4'b0011);

    // i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_c_i4_03_x(CONSTANT,83)
    assign i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_c_i4_03_x_q = $unsigned(4'b0000);

    // c_i4_160(CONSTANT,31)
    assign c_i4_160_q = $unsigned(4'b1111);

    // redist11_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized0_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized16_mux_x_q_1(DELAY,130)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized0_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized16_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized0_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized16_mux_x_q);
        end
    end

    // i_fpga_indvars_iv_next_k0_zts9optimized23(ADD,40)@5
    assign i_fpga_indvars_iv_next_k0_zts9optimized23_a = {1'b0, redist11_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized0_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized16_mux_x_q_1_q};
    assign i_fpga_indvars_iv_next_k0_zts9optimized23_b = {1'b0, c_i4_160_q};
    assign i_fpga_indvars_iv_next_k0_zts9optimized23_o = $unsigned(i_fpga_indvars_iv_next_k0_zts9optimized23_a) + $unsigned(i_fpga_indvars_iv_next_k0_zts9optimized23_b);
    assign i_fpga_indvars_iv_next_k0_zts9optimized23_q = i_fpga_indvars_iv_next_k0_zts9optimized23_o[4:0];

    // bgTrunc_i_fpga_indvars_iv_next_k0_zts9optimized23_sel_x(BITSELECT,57)@5
    assign bgTrunc_i_fpga_indvars_iv_next_k0_zts9optimized23_sel_x_b = i_fpga_indvars_iv_next_k0_zts9optimized23_q[3:0];

    // i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_element_extension2_x(BITJOIN,84)@5
    assign i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_element_extension2_x_q = {i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_c_i4_03_x_q, bgTrunc_i_fpga_indvars_iv_next_k0_zts9optimized23_sel_x_b};

    // i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x(LOGICAL,74)@1
    assign i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg16(REG,110)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(in_i_valid);
        end
    end

    // redist7_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_2(DELAY,126)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q);
            redist7_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_2_q <= redist7_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_2_delay_0;
        end
    end

    // redist8_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_3(DELAY,127)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_3_q <= $unsigned(redist7_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_2_q);
        end
    end

    // valid_fanout_reg15(REG,109)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist2_sync_together67_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized1_x(FIFODELAY,85)@1 + 4
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized1_x_i_stall = ~ (valid_fanout_reg16_q & i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q);
    assign i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized1_x_i_valid = valid_fanout_reg15_q & redist8_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized1_x_i_data = i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_element_extension2_x_q;
    assign i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized1_x_i_valid[0];
    assign i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(4),
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
    ) thei_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized1_x (
        .i_valid(i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_adapt_scalar_trunc4_sel_x(BITSELECT,87)@4
    assign i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized1_x_o_data[3:0];

    // i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized0_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized16_mux_x(MUX,70)@4
    assign i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized0_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized16_mux_x_s = redist15_i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized0_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized16_mux_x_s or i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_adapt_scalar_trunc4_sel_x_b or c_i4_358_q)
    begin
        unique case (i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized0_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized16_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized0_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized16_mux_x_q = i_llvm_fpga_push_i4_fpga_indvars_iv_push5_k0_zts9optimized0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized0_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized16_mux_x_q = c_i4_358_q;
            default : i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized0_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized16_mux_x_q = 4'b0;
        endcase
    end

    // i_exitcond_k0_zts9optimized17_cmp_nsign(LOGICAL,118)@4
    assign i_exitcond_k0_zts9optimized17_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized0_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop5_k0_zts9optimized16_mux_x_q[3:3]));

    // i_llvm_fpga_push_i1_notexitcond_k0_zts9optimized22(BLACKBOX,47)@4
    // in in_empty_in@20000000
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    k0_ZTS9optimized_i_llvm_fpga_push_i1_not0000nd_k0_zts9optimized0 thei_llvm_fpga_push_i1_notexitcond_k0_zts9optimized22 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond_k0_zts9optimized17_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_k0_zts9optimized6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_k0_zts9optimized22_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_k0_zts9optimized22_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_zts9optimized_b3_dummy_k0_zts9optimized2(BLACKBOX,42)@0
    // in in_stall_in@20000000
    k0_ZTS9optimized_i_llvm_fpga_dummy_threa0001my_k0_zts9optimized0 thei_llvm_fpga_dummy_thread_zts9optimized_b3_dummy_k0_zts9optimized2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_zts9optimized_b3_dummy_k0_zts9optimized2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_llvm_fpga_dummy_thread_zts9optimized_b3_dummy_k0_zts9optimized2_out_dummy_out_4(DELAY,136)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_llvm_fpga_dummy_thread_zts9optimized_b3_dummy_k0_zts9optimized2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_zts9optimized_b3_dummy_k0_zts9optimized2_out_dummy_out);
            redist17_i_llvm_fpga_dummy_thread_zts9optimized_b3_dummy_k0_zts9optimized2_out_dummy_out_4_delay_1 <= redist17_i_llvm_fpga_dummy_thread_zts9optimized_b3_dummy_k0_zts9optimized2_out_dummy_out_4_delay_0;
            redist17_i_llvm_fpga_dummy_thread_zts9optimized_b3_dummy_k0_zts9optimized2_out_dummy_out_4_delay_2 <= redist17_i_llvm_fpga_dummy_thread_zts9optimized_b3_dummy_k0_zts9optimized2_out_dummy_out_4_delay_1;
            redist17_i_llvm_fpga_dummy_thread_zts9optimized_b3_dummy_k0_zts9optimized2_out_dummy_out_4_q <= redist17_i_llvm_fpga_dummy_thread_zts9optimized_b3_dummy_k0_zts9optimized2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3(BLACKBOX,45)@0
    // in in_stall_in@20000000
    k0_ZTS9optimized_i_llvm_fpga_forked_zts90001ed_k0_zts9optimized0 thei_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out_4(DELAY,134)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out);
            redist15_i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out_4_delay_1 <= redist15_i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out_4_delay_0;
            redist15_i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out_4_delay_2 <= redist15_i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out_4_delay_1;
            redist15_i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out_4_q <= redist15_i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going_k0_zts9optimized6(BLACKBOX,46)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    k0_ZTS9optimized_i_llvm_fpga_pipeline_ke0000ng_k0_zts9optimized0 thei_llvm_fpga_pipeline_keep_going_k0_zts9optimized6 (
        .in_data_in(redist15_i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out_4_q),
        .in_dummy_in(redist17_i_llvm_fpga_dummy_thread_zts9optimized_b3_dummy_k0_zts9optimized2_out_dummy_out_4_q),
        .in_forked_in(redist15_i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_k0_zts9optimized22_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_k0_zts9optimized22_out_feedback_valid_out_2),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_k0_zts9optimized6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_k0_zts9optimized6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_k0_zts9optimized6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going_k0_zts9optimized6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going_k0_zts9optimized6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_k0_zts9optimized6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,55)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_k0_zts9optimized6_out_exiting_valid_out;

    // redist3_sync_together67_aunroll_x_in_i_valid_4(DELAY,122)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together67_aunroll_x_in_i_valid_4_q <= $unsigned(redist2_sync_together67_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist4_sync_together67_aunroll_x_in_i_valid_5(DELAY,123)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist4_sync_together67_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist4_sync_together67_aunroll_x_in_i_valid_5_q <= $unsigned(redist3_sync_together67_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist5_sync_together67_aunroll_x_in_i_valid_9(DELAY,124)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together67_aunroll_x_in_i_valid_9_delay_0 <= $unsigned(redist4_sync_together67_aunroll_x_in_i_valid_5_q);
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist5_sync_together67_aunroll_x_in_i_valid_9_delay_1 <= '0;
        end
        else
        begin
            redist5_sync_together67_aunroll_x_in_i_valid_9_delay_1 <= redist5_sync_together67_aunroll_x_in_i_valid_9_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together67_aunroll_x_in_i_valid_9_delay_2 <= redist5_sync_together67_aunroll_x_in_i_valid_9_delay_1;
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist5_sync_together67_aunroll_x_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist5_sync_together67_aunroll_x_in_i_valid_9_q <= redist5_sync_together67_aunroll_x_in_i_valid_9_delay_2;
        end
    end

    // redist6_sync_together67_aunroll_x_in_i_valid_10(DELAY,125)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together67_aunroll_x_in_i_valid_10_q <= $unsigned(redist5_sync_together67_aunroll_x_in_i_valid_9_q);
        end
    end

    // valid_fanout_reg17(REG,111)@10 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist6_sync_together67_aunroll_x_in_i_valid_10_q);
        end
    end

    // c_float_1_000000e_0057_q_const(CONSTANT,112)
    assign c_float_1_000000e_0057_q_const_q = $unsigned(32'b00111111100000000000000000000000);

    // valid_fanout_reg11(REG,105)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist1_sync_together67_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist9_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_4(DELAY,128)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_4_q <= $unsigned(redist8_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_3_q);
        end
    end

    // redist10_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_9(DELAY,129)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_9_delay_0 <= $unsigned(redist9_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_4_q);
            redist10_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_9_delay_1 <= redist10_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_9_delay_0;
            redist10_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_9_delay_2 <= redist10_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_9_delay_1;
            redist10_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_9_delay_3 <= redist10_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_9_delay_2;
            redist10_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_9_q <= redist10_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_9_delay_3;
        end
    end

    // valid_fanout_reg10(REG,104)@9 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist5_sync_together67_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized1_x(FIFODELAY,73)@3
    // in i_valid@10
    // in i_write_pred@10
    // in i_data@11
    // out o_data@6
    assign i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized1_x_i_stall = ~ (valid_fanout_reg11_q & redist7_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized1_x_i_valid = valid_fanout_reg10_q & redist10_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_9_q;
    assign i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized1_x_i_data = i_unnamed_k0_zts9optimized14_out_primWireOut;
    assign i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized1_x_i_valid[0];
    assign i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized1_x (
        .i_valid(i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized1_x_i_stall_bitsignaltemp),
        .i_data(i_unnamed_k0_zts9optimized14_out_primWireOut),
        .o_data(i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out_6(DELAY,135)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out_6_delay_0 <= $unsigned(redist15_i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out_4_q);
            redist16_i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out_6_q <= redist16_i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out_6_delay_0;
        end
    end

    // i_llvm_fpga_pop_f32_acl_027_i72_pop7_k0_zts9optimized0_i_llvm_fpga_pop_f32_acl_027_i72_pop7_k0_zts9optimized13_mux_x(MUX,69)@6
    assign i_llvm_fpga_pop_f32_acl_027_i72_pop7_k0_zts9optimized0_i_llvm_fpga_pop_f32_acl_027_i72_pop7_k0_zts9optimized13_mux_x_s = redist16_i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_f32_acl_027_i72_pop7_k0_zts9optimized0_i_llvm_fpga_pop_f32_acl_027_i72_pop7_k0_zts9optimized13_mux_x_s or i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized1_x_o_data or c_float_1_000000e_0057_q_const_q)
    begin
        unique case (i_llvm_fpga_pop_f32_acl_027_i72_pop7_k0_zts9optimized0_i_llvm_fpga_pop_f32_acl_027_i72_pop7_k0_zts9optimized13_mux_x_s)
            1'b0 : i_llvm_fpga_pop_f32_acl_027_i72_pop7_k0_zts9optimized0_i_llvm_fpga_pop_f32_acl_027_i72_pop7_k0_zts9optimized13_mux_x_q = i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized1_x_o_data;
            1'b1 : i_llvm_fpga_pop_f32_acl_027_i72_pop7_k0_zts9optimized0_i_llvm_fpga_pop_f32_acl_027_i72_pop7_k0_zts9optimized13_mux_x_q = c_float_1_000000e_0057_q_const_q;
            default : i_llvm_fpga_pop_f32_acl_027_i72_pop7_k0_zts9optimized0_i_llvm_fpga_pop_f32_acl_027_i72_pop7_k0_zts9optimized13_mux_x_q = 32'b0;
        endcase
    end

    // valid_fanout_reg6(REG,100)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist4_sync_together67_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized17_k0_zts9optimized10(BLACKBOX,43)@6
    k0_ZTS9optimized_i_llvm_fpga_ffwd_dest_f000017_k0_zts9optimized0 thei_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized17_k0_zts9optimized10 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized17_k0_zts9optimized10_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i64_456(CONSTANT,37)
    assign c_i64_456_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000100);

    // c_i64_052(CONSTANT,33)
    assign c_i64_052_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // c_i64_153(CONSTANT,34)
    assign c_i64_153_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000001);

    // i_unnamed_k0_zts9optimized15(ADD,50)@5
    assign i_unnamed_k0_zts9optimized15_a = {1'b0, i_llvm_fpga_pop_i64_acl_0_i73_pop6_k0_zts9optimized0_i_llvm_fpga_pop_i64_acl_0_i73_pop6_k0_zts9optimized11_mux_x_q};
    assign i_unnamed_k0_zts9optimized15_b = {1'b0, c_i64_153_q};
    assign i_unnamed_k0_zts9optimized15_o = $unsigned(i_unnamed_k0_zts9optimized15_a) + $unsigned(i_unnamed_k0_zts9optimized15_b);
    assign i_unnamed_k0_zts9optimized15_q = i_unnamed_k0_zts9optimized15_o[64:0];

    // bgTrunc_i_unnamed_k0_zts9optimized15_sel_x(BITSELECT,58)@5
    assign bgTrunc_i_unnamed_k0_zts9optimized15_sel_x_b = i_unnamed_k0_zts9optimized15_q[63:0];

    // redist13_bgTrunc_i_unnamed_k0_zts9optimized15_sel_x_b_1(DELAY,132)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_bgTrunc_i_unnamed_k0_zts9optimized15_sel_x_b_1_q <= $unsigned(bgTrunc_i_unnamed_k0_zts9optimized15_sel_x_b);
        end
    end

    // valid_fanout_reg13(REG,107)@0 + 1
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

    // valid_fanout_reg12(REG,106)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist3_sync_together67_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized0_i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized1_x(FIFODELAY,88)@1 + 3
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    assign i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized0_i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized1_x_i_stall = ~ (valid_fanout_reg13_q & i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized0_i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized1_x_i_valid = valid_fanout_reg12_q & redist9_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized0_i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized1_x_i_data = redist13_bgTrunc_i_unnamed_k0_zts9optimized15_sel_x_b_1_q;
    assign i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized0_i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized0_i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized0_i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized0_i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized0_i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized1_x (
        .i_valid(i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized0_i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized0_i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized1_x_i_stall_bitsignaltemp),
        .i_data(redist13_bgTrunc_i_unnamed_k0_zts9optimized15_sel_x_b_1_q),
        .o_data(i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized0_i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_acl_0_i73_pop6_k0_zts9optimized0_i_llvm_fpga_pop_i64_acl_0_i73_pop6_k0_zts9optimized11_mux_x(MUX,71)@4 + 1
    assign i_llvm_fpga_pop_i64_acl_0_i73_pop6_k0_zts9optimized0_i_llvm_fpga_pop_i64_acl_0_i73_pop6_k0_zts9optimized11_mux_x_s = redist15_i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i64_acl_0_i73_pop6_k0_zts9optimized0_i_llvm_fpga_pop_i64_acl_0_i73_pop6_k0_zts9optimized11_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i64_acl_0_i73_pop6_k0_zts9optimized0_i_llvm_fpga_pop_i64_acl_0_i73_pop6_k0_zts9optimized11_mux_x_q <= i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized0_i_llvm_fpga_push_i64_acl_0_i73_push6_k0_zts9optimized1_x_o_data;
                1'b1 : i_llvm_fpga_pop_i64_acl_0_i73_pop6_k0_zts9optimized0_i_llvm_fpga_pop_i64_acl_0_i73_pop6_k0_zts9optimized11_mux_x_q <= c_i64_052_q;
                default : i_llvm_fpga_pop_i64_acl_0_i73_pop6_k0_zts9optimized0_i_llvm_fpga_pop_i64_acl_0_i73_pop6_k0_zts9optimized11_mux_x_q <= 64'b0;
            endcase
        end
    end

    // dupName_2_comparator_x(LOGICAL,64)@5 + 1
    assign dupName_2_comparator_x_qi = $unsigned(i_llvm_fpga_pop_i64_acl_0_i73_pop6_k0_zts9optimized0_i_llvm_fpga_pop_i64_acl_0_i73_pop6_k0_zts9optimized11_mux_x_q == c_i64_456_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_2_comparator_x_delay ( .xin(dupName_2_comparator_x_qi), .xout(dupName_2_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_355(CONSTANT,36)
    assign c_i64_355_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000011);

    // dupName_1_comparator_x(LOGICAL,62)@5 + 1
    assign dupName_1_comparator_x_qi = $unsigned(i_llvm_fpga_pop_i64_acl_0_i73_pop6_k0_zts9optimized0_i_llvm_fpga_pop_i64_acl_0_i73_pop6_k0_zts9optimized11_mux_x_q == c_i64_355_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_1_comparator_x_delay ( .xin(dupName_1_comparator_x_qi), .xout(dupName_1_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_254(CONSTANT,35)
    assign c_i64_254_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000010);

    // dupName_0_comparator_x(LOGICAL,60)@5 + 1
    assign dupName_0_comparator_x_qi = $unsigned(i_llvm_fpga_pop_i64_acl_0_i73_pop6_k0_zts9optimized0_i_llvm_fpga_pop_i64_acl_0_i73_pop6_k0_zts9optimized11_mux_x_q == c_i64_254_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_0_comparator_x_delay ( .xin(dupName_0_comparator_x_qi), .xout(dupName_0_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg5(REG,99)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist4_sync_together67_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_s_case_assign_struct_zts9optimized_fpgaunique_0s_case_assign84_k0_zts9optimized9_aunroll_x(BLACKBOX,67)@6
    k0_ZTS9optimized_i_llvm_fpga_ffwd_dest_s000084_k0_zts9optimized0 thei_llvm_fpga_ffwd_dest_s_case_assign_struct_zts9optimized_fpgaunique_0s_case_assign84_k0_zts9optimized9_aunroll_x (
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(in_intel_reserved_ffwd_0_0_2_tpl),
        .in_intel_reserved_ffwd_0_0_3_tpl(in_intel_reserved_ffwd_0_0_3_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .out_dest_data_out_0_0_0_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_zts9optimized_fpgaunique_0s_case_assign84_k0_zts9optimized9_aunroll_x_out_dest_data_out_0_0_0_tpl),
        .out_dest_data_out_0_0_1_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_zts9optimized_fpgaunique_0s_case_assign84_k0_zts9optimized9_aunroll_x_out_dest_data_out_0_0_1_tpl),
        .out_dest_data_out_0_0_2_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_zts9optimized_fpgaunique_0s_case_assign84_k0_zts9optimized9_aunroll_x_out_dest_data_out_0_0_2_tpl),
        .out_dest_data_out_0_0_3_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_zts9optimized_fpgaunique_0s_case_assign84_k0_zts9optimized9_aunroll_x_out_dest_data_out_0_0_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // comparator(LOGICAL,38)@5 + 1
    assign comparator_qi = $unsigned(i_llvm_fpga_pop_i64_acl_0_i73_pop6_k0_zts9optimized0_i_llvm_fpga_pop_i64_acl_0_i73_pop6_k0_zts9optimized11_mux_x_q == c_i64_153_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    comparator_delay ( .xin(comparator_qi), .xout(comparator_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_f32_i64_v4i64_s_case_assign_struct_zts9optimized_fpgaunique_0s_case_stmt_k0_zts9optimized12(SELECTOR,41)@6
    always @(comparator_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_zts9optimized_fpgaunique_0s_case_assign84_k0_zts9optimized9_aunroll_x_out_dest_data_out_0_0_0_tpl or dupName_0_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_zts9optimized_fpgaunique_0s_case_assign84_k0_zts9optimized9_aunroll_x_out_dest_data_out_0_0_1_tpl or dupName_1_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_zts9optimized_fpgaunique_0s_case_assign84_k0_zts9optimized9_aunroll_x_out_dest_data_out_0_0_2_tpl or dupName_2_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_zts9optimized_fpgaunique_0s_case_assign84_k0_zts9optimized9_aunroll_x_out_dest_data_out_0_0_3_tpl or i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized17_k0_zts9optimized10_out_dest_data_out_5_0)
    begin
        i_llvm_fpga_case_f32_i64_v4i64_s_case_assign_struct_zts9optimized_fpgaunique_0s_case_stmt_k0_zts9optimized12_q = $unsigned(i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized17_k0_zts9optimized10_out_dest_data_out_5_0);
        if (dupName_2_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_f32_i64_v4i64_s_case_assign_struct_zts9optimized_fpgaunique_0s_case_stmt_k0_zts9optimized12_q = $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_zts9optimized_fpgaunique_0s_case_assign84_k0_zts9optimized9_aunroll_x_out_dest_data_out_0_0_3_tpl);
        end
        if (dupName_1_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_f32_i64_v4i64_s_case_assign_struct_zts9optimized_fpgaunique_0s_case_stmt_k0_zts9optimized12_q = $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_zts9optimized_fpgaunique_0s_case_assign84_k0_zts9optimized9_aunroll_x_out_dest_data_out_0_0_2_tpl);
        end
        if (dupName_0_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_f32_i64_v4i64_s_case_assign_struct_zts9optimized_fpgaunique_0s_case_stmt_k0_zts9optimized12_q = $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_zts9optimized_fpgaunique_0s_case_assign84_k0_zts9optimized9_aunroll_x_out_dest_data_out_0_0_1_tpl);
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_f32_i64_v4i64_s_case_assign_struct_zts9optimized_fpgaunique_0s_case_stmt_k0_zts9optimized12_q = $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_zts9optimized_fpgaunique_0s_case_assign84_k0_zts9optimized9_aunroll_x_out_dest_data_out_0_0_0_tpl);
        end
    end

    // i_unnamed_k0_zts9optimized14(BLACKBOX,49)@6
    // out out_primWireOut@11
    k0_ZTS9optimized_flt_i_sfc_logic_s_c0_in0000b0c2463a0054c2a6355y thei_unnamed_k0_zts9optimized14 (
        .in_0(i_llvm_fpga_case_f32_i64_v4i64_s_case_assign_struct_zts9optimized_fpgaunique_0s_case_stmt_k0_zts9optimized12_q),
        .in_1(i_llvm_fpga_pop_f32_acl_027_i72_pop7_k0_zts9optimized0_i_llvm_fpga_pop_f32_acl_027_i72_pop7_k0_zts9optimized13_mux_x_q),
        .out_primWireOut(i_unnamed_k0_zts9optimized14_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_c_i7_03_x(CONSTANT,77)
    assign i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_c_i7_03_x_q = $unsigned(7'b0000000);

    // redist14_i_llvm_fpga_pipeline_keep_going_k0_zts9optimized6_out_data_out_2(DELAY,133)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_i_llvm_fpga_pipeline_keep_going_k0_zts9optimized6_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going_k0_zts9optimized6_out_data_out);
            redist14_i_llvm_fpga_pipeline_keep_going_k0_zts9optimized6_out_data_out_2_q <= redist14_i_llvm_fpga_pipeline_keep_going_k0_zts9optimized6_out_data_out_2_delay_0;
        end
    end

    // i_zts9optimized_b3_next_iter_isreal_k0_zts9optimized7(LOGICAL,52)@6
    assign i_zts9optimized_b3_next_iter_isreal_k0_zts9optimized7_q = i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x_q & redist14_i_llvm_fpga_pipeline_keep_going_k0_zts9optimized6_out_data_out_2_q;

    // i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_element_extension2_x(BITJOIN,78)@6
    assign i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_element_extension2_x_q = {i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_c_i7_03_x_q, i_zts9optimized_b3_next_iter_isreal_k0_zts9optimized7_q};

    // valid_fanout_reg4(REG,98)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist1_sync_together67_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg3(REG,97)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist3_sync_together67_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized1_x(FIFODELAY,79)@3 + 5
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized1_x_i_stall = ~ (valid_fanout_reg4_q & redist7_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized1_x_i_valid = valid_fanout_reg3_q & redist9_i_llvm_fpga_push_f32_acl_027_i72_push7_k0_zts9optimized0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized1_x_i_data = i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized1_x (
        .i_valid(i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_adapt_scalar_trunc4_sel_x(BITSELECT,81)@6
    assign i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized1_x_o_data[0:0];

    // i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x(MUX,68)@6
    assign i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x_s = redist16_i_llvm_fpga_forked_zts9optimized_b3_forked_k0_zts9optimized3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x_s or i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x_q = i_llvm_fpga_push_i1_zts9optimized_b3_next_iter_isreal_push_k0_zts9optimized0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x_q = 1'b0;
        endcase
    end

    // redist12_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x_q_5(DELAY,131)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x_q_5_delay_0 <= $unsigned(i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x_q);
            redist12_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x_q_5_delay_1 <= redist12_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x_q_5_delay_0;
            redist12_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x_q_5_delay_2 <= redist12_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x_q_5_delay_1;
            redist12_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x_q_5_delay_3 <= redist12_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x_q_5_delay_2;
            redist12_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x_q_5_q <= redist12_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x_q_5_delay_3;
        end
    end

    // i_zts9optimized_b3_current_iter_isspec_k0_zts9optimized5(LOGICAL,51)@11
    assign i_zts9optimized_b3_current_iter_isspec_k0_zts9optimized5_q = redist12_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized0_i_llvm_fpga_pop_coalesce_i1_zts9optimized_b3_current_iter_isreal_k0_zts9optimized4_mux_x_q_5_q ^ VCC_q;

    // i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized18_k0_zts9optimized25(BLACKBOX,44)@11
    // out out_intel_reserved_ffwd_6_0@20000000
    k0_ZTS9optimized_i_llvm_fpga_ffwd_source000018_k0_zts9optimized0 thei_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized18_k0_zts9optimized25 (
        .in_predicate_in(i_zts9optimized_b3_current_iter_isspec_k0_zts9optimized5_q),
        .in_src_data_in_6_0(i_unnamed_k0_zts9optimized14_out_primWireOut),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized18_k0_zts9optimized25_out_intel_reserved_ffwd_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,61)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts9optimized18_k0_zts9optimized25_out_intel_reserved_ffwd_6_0;

    // dupName_1_regfree_osync_x(GPOUT,63)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going_k0_zts9optimized6_out_pipeline_dummy_out;

    // dupName_2_regfree_osync_x(GPOUT,65)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going_k0_zts9optimized6_out_pipeline_forked_out;

    // dupName_3_regfree_osync_x(GPOUT,66)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_k0_zts9optimized6_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,94)@10 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist6_sync_together67_aunroll_x_in_i_valid_10_q);
        end
    end

    // i_notcmp_k0_zts9optimized21(LOGICAL,48)@11
    assign i_notcmp_k0_zts9optimized21_q = redist0_i_exitcond_k0_zts9optimized17_cmp_nsign_q_7_q ^ VCC_q;

    // redist0_i_exitcond_k0_zts9optimized17_cmp_nsign_q_7(DELAY,119)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist0_i_exitcond_k0_zts9optimized17_cmp_nsign_q_7 ( .xin(i_exitcond_k0_zts9optimized17_cmp_nsign_q), .xout(redist0_i_exitcond_k0_zts9optimized17_cmp_nsign_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,92)@11
    assign out_ZTS9optimized_B3_current_iter_isspec = i_zts9optimized_b3_current_iter_isspec_k0_zts9optimized5_q;
    assign out_c0_exi217_0_tpl = GND_q;
    assign out_c0_exi217_1_tpl = redist0_i_exitcond_k0_zts9optimized17_cmp_nsign_q_7_q;
    assign out_c0_exi217_2_tpl = i_notcmp_k0_zts9optimized21_q;
    assign out_o_valid = valid_fanout_reg0_q;

endmodule
