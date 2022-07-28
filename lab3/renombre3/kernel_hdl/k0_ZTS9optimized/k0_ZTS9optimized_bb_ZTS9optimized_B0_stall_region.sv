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

// SystemVerilog created from bb_ZTS9optimized_B0_stall_region
// Created for function/kernel k0_ZTS9optimized
// SystemVerilog created on Thu Jul 28 16:45:00 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k0_ZTS9optimized_bb_ZTS9optimized_B0_stall_region (
    input wire [511:0] in_memdep_k0_ZTS9optimized_avm_readdata,
    input wire [0:0] in_memdep_k0_ZTS9optimized_avm_writeack,
    input wire [0:0] in_memdep_k0_ZTS9optimized_avm_waitrequest,
    input wire [0:0] in_memdep_k0_ZTS9optimized_avm_readdatavalid,
    output wire [34:0] out_memdep_k0_ZTS9optimized_avm_address,
    output wire [0:0] out_memdep_k0_ZTS9optimized_avm_enable,
    output wire [0:0] out_memdep_k0_ZTS9optimized_avm_read,
    output wire [0:0] out_memdep_k0_ZTS9optimized_avm_write,
    output wire [511:0] out_memdep_k0_ZTS9optimized_avm_writedata,
    output wire [63:0] out_memdep_k0_ZTS9optimized_avm_byteenable,
    output wire [4:0] out_memdep_k0_ZTS9optimized_avm_burstcount,
    input wire [63:0] in_arg4,
    input wire [0:0] in_flush,
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
    wire [0:0] i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_lsu_memdep_o_active;
    wire [34:0] i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_memdep_k0_ZTS9optimized_avm_address;
    wire [4:0] i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_memdep_k0_ZTS9optimized_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_memdep_k0_ZTS9optimized_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_memdep_k0_ZTS9optimized_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_memdep_k0_ZTS9optimized_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_memdep_k0_ZTS9optimized_avm_write;
    wire [511:0] i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_memdep_k0_ZTS9optimized_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_almost_empty;
    wire [0:0] i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_empty;
    wire [0:0] i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_writeack;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_feedback_stall_out_0;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_valid_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_empty_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_feedback_almost_empty_out_0;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_feedback_data_out_0;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_feedback_empty_out_0;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_empty_out;
    wire [0:0] i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_c0_exit_1_tpl;
    wire [31:0] c_float_0_000000e_008_q_const_q;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_k0_zts9optimized3_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_b;
    wire [63:0] bubble_join_i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_b;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_temp_back_stall;
    wire [0:0] bubble_out_stall_entry_1_reg_i_valid;
    wire bubble_out_stall_entry_1_reg_i_valid_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_i_stall;
    wire bubble_out_stall_entry_1_reg_i_stall_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_i_empty;
    wire bubble_out_stall_entry_1_reg_i_empty_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_o_valid;
    wire bubble_out_stall_entry_1_reg_o_valid_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_o_stall;
    wire bubble_out_stall_entry_1_reg_o_stall_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_o_empty;
    wire bubble_out_stall_entry_1_reg_o_empty_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_o_almost_empty;
    wire bubble_out_stall_entry_1_reg_o_almost_empty_bitsignaltemp;
    wire [0:0] merged_in_SE_stall_entry_backStall;
    wire [0:0] merged_in_SE_stall_entry_V0;
    wire [0:0] merged_in_SE_stall_entry_V2;
    wire [0:0] merged_in_SE_stall_entry_V4;
    wire [0:0] merged_in_SE_stall_entry_V1;
    wire [0:0] merged_in_SE_stall_entry_V3;
    wire [0:0] merged_in_SE_stall_entry_V5;
    wire [0:0] merged_in_SE_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_out_bubble_out_stall_entry_1_backStall;
    wire [0:0] merged_in_SE_out_bubble_out_stall_entry_1_V0;
    wire [0:0] merged_in_SE_out_bubble_out_stall_entry_1_V1;
    wire [0:0] merged_in_SE_out_bubble_out_stall_entry_1_V2;
    wire [0:0] merged_in_SE_out_bubble_out_stall_entry_1_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V1;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V2;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_can_fast_read;
    wire can_fast_read_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_can_slow_read;
    wire can_slow_read_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_no_space_for_result;
    wire no_space_for_result_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_forced_read;
    wire forced_read_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_V0;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_V2;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_V4;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_V1;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_V3;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_V5;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_temp_back_stall;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_in_stall_in_sync_balance_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg0_q;
    reg [0:0] i_llvm_fpga_mem_memdep_k0_zts9optimized3_in_i_stall_reg0_q;
    reg [0:0] i_llvm_fpga_mem_memdep_k0_zts9optimized3_in_i_stall_reg1_q;
    reg [0:0] i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_almost_empty_reg1_q;
    reg [0:0] i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_almost_empty_reg0_q;
    reg [0:0] i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_empty_reg1_q;
    reg [0:0] i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_empty_reg0_q;
    reg [0:0] i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_valid_reg1_q;
    reg [0:0] i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_valid_reg0_q;
    reg [0:0] i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_writeack_reg1_q;
    reg [0:0] i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_writeack_reg0_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_data_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_valid_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_valid_out_reg0_q;
    reg [0:0] stall_entry_frontStall_reg0_q;
    reg [0:0] stall_entry_frontStall_reg1_q;
    reg [0:0] stall_entry_frontValid_reg1_q;
    reg [0:0] stall_entry_frontValid_reg0_q;
    reg [0:0] stall_entry_frontEmpty_reg1_q;
    reg [0:0] stall_entry_frontEmpty_reg0_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg1_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg0_q;
    reg [0:0] i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_o_valid_reg0_q;
    reg [63:0] i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_c0_exit_1_tpl_reg1_q;
    reg [63:0] i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_c0_exit_1_tpl_reg0_q;
    reg [0:0] bubble_out_stall_entry_1_reg_i_stall_reg0_q;
    reg [0:0] bubble_out_stall_entry_1_reg_i_stall_reg1_q;
    reg [0:0] bubble_out_stall_entry_1_reg_o_valid_reg1_q;
    reg [0:0] bubble_out_stall_entry_1_reg_o_valid_reg0_q;
    reg [0:0] bubble_out_stall_entry_1_reg_o_empty_reg1_q;
    reg [0:0] bubble_out_stall_entry_1_reg_o_empty_reg0_q;
    reg [0:0] bubble_out_stall_entry_1_reg_o_almost_empty_reg1_q;
    reg [0:0] bubble_out_stall_entry_1_reg_o_almost_empty_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // c_float_0_000000e_008_q_const(CONSTANT,31)
    assign c_float_0_000000e_008_q_const_q = $unsigned(32'b00000000000000000000000000000000);

    // merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg0(REG,86)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0);
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg1(REG,85)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg1_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg2(REG,84)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg2_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg1_q);
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg3(REG,83)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg3_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg2_q);
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg4(REG,82)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg4_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg3_q);
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg5(REG,81)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg5_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg4_q);
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg6(REG,80)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg6_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg5_q);
        end
    end

    // i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_almost_empty_reg0(REG,90)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_almost_empty_reg0_q <= $unsigned(i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_almost_empty);
        end
    end

    // i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_almost_empty_reg1(REG,89)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_almost_empty_reg1_q <= $unsigned(i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_almost_empty_reg0_q);
        end
    end

    // i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_empty_reg0(REG,92)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_empty_reg0_q <= $unsigned(i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_empty);
        end
    end

    // i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_empty_reg1(REG,91)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_empty_reg1_q <= $unsigned(i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_empty_reg0_q);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_almost_empty_out_reg0(REG,110)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_almost_empty_out_reg0_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_almost_empty_out);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_almost_empty_out_reg1(REG,109)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_almost_empty_out_reg1_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_almost_empty_out_reg0_q);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_empty_out_reg0(REG,112)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_empty_out_reg0_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_empty_out);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_empty_out_reg1(REG,111)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_empty_out_reg1_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_empty_out_reg0_q);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_valid_out_reg0(REG,114)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_valid_out_reg0_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_valid_out);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_valid_out_reg1(REG,113)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_valid_out_reg1_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_valid_out_reg0_q);
        end
    end

    // SE_out_i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4(STALLENABLE,49)
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_in_stall_in_reg0(REG,107)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_in_stall_in_reg0_q <= $unsigned(SE_out_i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_backStall);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_in_stall_in_reg1(REG,108)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_in_stall_in_reg1_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_in_stall_in_reg0_q);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_in_stall_in_sync_balance_reg0(REG,77)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_in_stall_in_sync_balance_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_backStall);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_in_stall_in_sync_balance_reg1(REG,78)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_in_stall_in_sync_balance_reg1_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_in_stall_in_sync_balance_reg0_q);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_in_stall_in_sync_balance_reg2(REG,79)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_in_stall_in_sync_balance_reg2_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_in_stall_in_sync_balance_reg1_q);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_in_stall_in_reg0(REG,97)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_in_stall_in_reg0_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_in_stall_in_sync_balance_reg2_q);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_in_stall_in_reg1(REG,98)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_in_stall_in_reg1_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_in_stall_in_reg0_q);
        end
    end

    // bubble_out_stall_entry_1_reg_i_stall_reg0(REG,133)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            bubble_out_stall_entry_1_reg_i_stall_reg0_q <= $unsigned(merged_in_SE_out_bubble_out_stall_entry_1_backStall);
        end
    end

    // bubble_out_stall_entry_1_reg_i_stall_reg1(REG,134)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            bubble_out_stall_entry_1_reg_i_stall_reg1_q <= $unsigned(bubble_out_stall_entry_1_reg_i_stall_reg0_q);
        end
    end

    // stall_entry_frontAlmostEmpty_reg0(REG,122)
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

    // stall_entry_frontAlmostEmpty_reg1(REG,121)
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

    // stall_entry_frontEmpty_reg0(REG,120)
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

    // stall_entry_frontEmpty_reg1(REG,119)
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

    // i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_in_i_stall_reg0(REG,123)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_backStall);
        end
    end

    // i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_in_i_stall_reg1(REG,124)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x(BLACKBOX,29)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@32
    // out out_empty_out@32
    // out out_o_stall@20000000
    // out out_o_valid@32
    // out out_c0_exit_0_tpl@32
    // out out_c0_exit_1_tpl@32
    k0_ZTS9optimized_i_sfc_s_c0_in_zn2cl4syc0000er_k0_zts9optimized1 thei_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x (
        .in_almost_empty_in(merged_in_SE_stall_entry_V4),
        .in_arg4(in_arg4),
        .in_empty_in(merged_in_SE_stall_entry_V2),
        .in_i_stall(i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_stall_entry_V0),
        .in_arg7_0_tpl(in_arg7_0_tpl),
        .in_unnamed_k0_ZTS9optimized0_0_tpl(GND_q),
        .out_almost_empty_out(i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_empty_out),
        .out_o_stall(i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_o_valid),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_c0_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // stall_entry_frontValid_reg0(REG,118)
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

    // stall_entry_frontValid_reg1(REG,117)
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

    // merged_in_SE_stall_entry(STALLENABLE,73)
    // Desync
    assign merged_in_SE_stall_entry_temp_back_stall = i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_o_stall | bubble_out_stall_entry_1_reg_o_stall;
    assign merged_in_SE_stall_entry_backStall = merged_in_SE_stall_entry_temp_back_stall;
    assign merged_in_SE_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_stall_entry_V2 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_stall_entry_V4 = stall_entry_frontAlmostEmpty_reg1_q;
    assign merged_in_SE_stall_entry_V1 = merged_in_SE_stall_entry_V0;
    assign merged_in_SE_stall_entry_V3 = merged_in_SE_stall_entry_V2;
    assign merged_in_SE_stall_entry_V5 = merged_in_SE_stall_entry_V4;

    // bubble_out_stall_entry_1_reg(STALLFIFO,72)
    assign bubble_out_stall_entry_1_reg_i_valid = merged_in_SE_stall_entry_V1;
    assign bubble_out_stall_entry_1_reg_i_stall = bubble_out_stall_entry_1_reg_i_stall_reg1_q;
    assign bubble_out_stall_entry_1_reg_i_empty = merged_in_SE_stall_entry_V3;
    assign bubble_out_stall_entry_1_reg_i_valid_bitsignaltemp = bubble_out_stall_entry_1_reg_i_valid[0];
    assign bubble_out_stall_entry_1_reg_i_stall_bitsignaltemp = bubble_out_stall_entry_1_reg_i_stall[0];
    assign bubble_out_stall_entry_1_reg_o_valid[0] = bubble_out_stall_entry_1_reg_o_valid_bitsignaltemp;
    assign bubble_out_stall_entry_1_reg_o_stall[0] = bubble_out_stall_entry_1_reg_o_stall_bitsignaltemp;
    assign bubble_out_stall_entry_1_reg_o_empty[0] = bubble_out_stall_entry_1_reg_o_empty_bitsignaltemp;
    assign bubble_out_stall_entry_1_reg_o_almost_empty[0] = bubble_out_stall_entry_1_reg_o_almost_empty_bitsignaltemp;
    hld_fifo_zero_width #(
        .DEPTH(33),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(4),
        .ALMOST_EMPTY_CUTOFF(7),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) thebubble_out_stall_entry_1_reg (
        .i_valid(bubble_out_stall_entry_1_reg_i_valid_bitsignaltemp),
        .i_stall(bubble_out_stall_entry_1_reg_i_stall_bitsignaltemp),
        .o_valid(bubble_out_stall_entry_1_reg_o_valid_bitsignaltemp),
        .o_stall(bubble_out_stall_entry_1_reg_o_stall_bitsignaltemp),
        .o_empty(bubble_out_stall_entry_1_reg_o_empty_bitsignaltemp),
        .o_almost_empty(bubble_out_stall_entry_1_reg_o_almost_empty_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_stall_entry_1_reg_o_almost_empty_reg0(REG,140)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            bubble_out_stall_entry_1_reg_o_almost_empty_reg0_q <= $unsigned(bubble_out_stall_entry_1_reg_o_almost_empty);
        end
    end

    // bubble_out_stall_entry_1_reg_o_almost_empty_reg1(REG,139)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            bubble_out_stall_entry_1_reg_o_almost_empty_reg1_q <= $unsigned(bubble_out_stall_entry_1_reg_o_almost_empty_reg0_q);
        end
    end

    // bubble_out_stall_entry_1_reg_o_empty_reg0(REG,138)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            bubble_out_stall_entry_1_reg_o_empty_reg0_q <= $unsigned(bubble_out_stall_entry_1_reg_o_empty);
        end
    end

    // bubble_out_stall_entry_1_reg_o_empty_reg1(REG,137)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            bubble_out_stall_entry_1_reg_o_empty_reg1_q <= $unsigned(bubble_out_stall_entry_1_reg_o_empty_reg0_q);
        end
    end

    // bubble_out_stall_entry_1_reg_o_valid_reg0(REG,136)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            bubble_out_stall_entry_1_reg_o_valid_reg0_q <= $unsigned(bubble_out_stall_entry_1_reg_o_valid);
        end
    end

    // bubble_out_stall_entry_1_reg_o_valid_reg1(REG,135)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            bubble_out_stall_entry_1_reg_o_valid_reg1_q <= $unsigned(bubble_out_stall_entry_1_reg_o_valid_reg0_q);
        end
    end

    // merged_in_SE_out_bubble_out_stall_entry_1(STALLENABLE,74)
    assign merged_in_SE_out_bubble_out_stall_entry_1_backStall = i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_stall_out;
    assign merged_in_SE_out_bubble_out_stall_entry_1_V0 = bubble_out_stall_entry_1_reg_o_valid_reg1_q;
    assign merged_in_SE_out_bubble_out_stall_entry_1_V1 = bubble_out_stall_entry_1_reg_o_empty_reg1_q;
    assign merged_in_SE_out_bubble_out_stall_entry_1_V2 = bubble_out_stall_entry_1_reg_o_almost_empty_reg1_q;

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0(BLACKBOX,10)@15
    // in in_stall_in@20000000
    // out out_almost_empty_out@32
    // out out_data_out@32
    // out out_empty_out@32
    // out out_feedback_stall_out_0@20000000
    // out out_stall_out@20000000
    // out out_valid_out@32
    k0_ZTS9optimized_i_llvm_fpga_pop_throttl0000op_k0_zts9optimized0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0 (
        .in_almost_empty_in(merged_in_SE_out_bubble_out_stall_entry_1_V2),
        .in_data_in(GND_q),
        .in_dir_in(GND_q),
        .in_empty_in(merged_in_SE_out_bubble_out_stall_entry_1_V1),
        .in_feedback_almost_empty_in_0(i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_feedback_almost_empty_out_0),
        .in_feedback_data_in_0(i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_feedback_data_out_0),
        .in_feedback_empty_in_0(i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_feedback_empty_out_0),
        .in_stall_in(i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_out_bubble_out_stall_entry_1_V0),
        .out_almost_empty_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_empty_out),
        .out_feedback_stall_out_0(i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_feedback_stall_out_0),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_writeack_reg0(REG,96)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_writeack_reg0_q <= $unsigned(i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_writeack);
        end
    end

    // i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_writeack_reg1(REG,95)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_writeack_reg1_q <= $unsigned(i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_writeack_reg0_q);
        end
    end

    // bubble_join_i_llvm_fpga_mem_memdep_k0_zts9optimized3(BITJOIN,33)
    assign bubble_join_i_llvm_fpga_mem_memdep_k0_zts9optimized3_q = i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_writeack_reg1_q;

    // bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3(BITSELECT,34)
    assign bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_k0_zts9optimized3_q[0:0]);

    // i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4(BLACKBOX,11)@33
    // in in_stall_in@20000000
    // out out_almost_empty_out@50
    // out out_data_out@50
    // out out_empty_out@50
    // out out_feedback_almost_empty_out_0@20000000
    // out out_feedback_data_out_0@20000000
    // out out_feedback_empty_out_0@20000000
    // out out_stall_out@20000000
    // out out_valid_out@50
    k0_ZTS9optimized_i_llvm_fpga_push_token_0000sh_k0_zts9optimized0 thei_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_V5),
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_b),
        .in_empty_in(merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_V3),
        .in_feedback_stall_in_0(i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_feedback_stall_out_0),
        .in_stall_in(i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_V1),
        .out_almost_empty_out(i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_empty_out),
        .out_feedback_almost_empty_out_0(i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_feedback_almost_empty_out_0),
        .out_feedback_data_out_0(i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_feedback_data_out_0),
        .out_feedback_empty_out_0(i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_feedback_empty_out_0),
        .out_stall_out(i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_valid_reg0(REG,94)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_valid_reg0_q <= $unsigned(i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_valid);
        end
    end

    // i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_valid_reg1(REG,93)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_valid_reg1_q <= $unsigned(i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3(STALLENABLE,76)
    // Desync
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_temp_back_stall = in_stall_in | i_llvm_fpga_push_token_i1_throttle_push_k0_zts9optimized4_out_stall_out;
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_backStall = merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_temp_back_stall;
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_V0 = i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_valid_reg1_q;
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_V2 = i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_empty_reg1_q;
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_V4 = i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_almost_empty_reg1_q;
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_V1 = merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_V0;
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_V3 = merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_V2;
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_V5 = merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_V4;

    // i_llvm_fpga_mem_memdep_k0_zts9optimized3_in_i_stall_reg0(REG,87)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_memdep_k0_zts9optimized3_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_backStall);
        end
    end

    // i_llvm_fpga_mem_memdep_k0_zts9optimized3_in_i_stall_reg1(REG,88)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_memdep_k0_zts9optimized3_in_i_stall_reg1_q <= $unsigned(i_llvm_fpga_mem_memdep_k0_zts9optimized3_in_i_stall_reg0_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_data_out_reg0(REG,102)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_data_out_reg0_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_data_out);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_data_out_reg1(REG,101)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_data_out_reg1_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_data_out_reg0_q);
        end
    end

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0(BITJOIN,37)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0(BITSELECT,38)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_q[0:0]);

    // i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_c0_exit_1_tpl_reg0(REG,132)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_c0_exit_1_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_c0_exit_1_tpl);
        end
    end

    // i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_c0_exit_1_tpl_reg1(REG,131)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_c0_exit_1_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_c0_exit_1_tpl_reg0_q);
        end
    end

    // bubble_join_i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x(BITJOIN,42)
    assign bubble_join_i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_q = i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_c0_exit_1_tpl_reg1_q;

    // bubble_select_i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x(BITSELECT,43)
    assign bubble_select_i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_q[63:0]);

    // i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_almost_empty_out_reg0(REG,126)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_almost_empty_out_reg1(REG,125)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_almost_empty_out_reg0(REG,100)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_almost_empty_out_reg0_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_almost_empty_out);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_almost_empty_out_reg1(REG,99)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_almost_empty_out_reg1_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_almost_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_empty_out_reg0(REG,128)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_empty_out_reg1(REG,127)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_empty_out_reg0(REG,104)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_empty_out_reg0_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_empty_out);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_empty_out_reg1(REG,103)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_empty_out_reg1_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_o_valid_reg0(REG,130)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_o_valid_reg1(REG,129)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_valid_out_reg0(REG,106)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_valid_out_reg0_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_valid_out);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_valid_out_reg1(REG,105)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_valid_out_reg1_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_valid_out_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0(STALLENABLE,75)
    // Sync
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_temp_back_stall = i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_stall;
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_can_fast_read = ~ ((i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_almost_empty_out_reg1_q | i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_almost_empty_out_reg1_q));
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_can_slow_read = ~ ((i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_out_empty_out_reg1_q | i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_out_empty_out_reg1_q));
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_backStall = ~ (merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_forced_read);
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_no_space_for_result = merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_temp_back_stall;
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0 = merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_forced_read;
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V1 = $unsigned(1'b0);
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V2 = $unsigned(1'b0);
    assign can_fast_read_bitsignaltemp = merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_can_fast_read[0];
    assign can_slow_read_bitsignaltemp = merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_can_slow_read[0];
    assign no_space_for_result_bitsignaltemp = merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_no_space_for_result[0];
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_forced_read[0] = forced_read_bitsignaltemp;
    acl_sync_stall_latency #(
        .EMPTY_PLUS_STALL_LATENCY(7),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1),
        .RESET_EVERYTHING(0)
    ) themerged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0 (
        .can_fast_read(can_fast_read_bitsignaltemp),
        .can_slow_read(can_slow_read_bitsignaltemp),
        .no_space_for_result(no_space_for_result_bitsignaltemp),
        .forced_read(forced_read_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_memdep_k0_zts9optimized3(BLACKBOX,9)@32
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_k0_ZTS9optimized_avm_address@20000000
    // out out_memdep_k0_ZTS9optimized_avm_burstcount@20000000
    // out out_memdep_k0_ZTS9optimized_avm_byteenable@20000000
    // out out_memdep_k0_ZTS9optimized_avm_enable@20000000
    // out out_memdep_k0_ZTS9optimized_avm_read@20000000
    // out out_memdep_k0_ZTS9optimized_avm_write@20000000
    // out out_memdep_k0_ZTS9optimized_avm_writedata@20000000
    // out out_o_almost_empty@33
    // out out_o_empty@33
    // out out_o_stall@20000000
    // out out_o_valid@33
    // out out_o_writeack@33
    k0_ZTS9optimized_i_llvm_fpga_mem_memdep_k0_zts9optimized0 thei_llvm_fpga_mem_memdep_k0_zts9optimized3 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V2),
        .in_empty_in(merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V1),
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_zn2cl4sycl8accessorifli1elns0_6access4modee1024elns2_6targete2014elns2_11placeholdere0ens0_3ext6oneapi22accessor_property_listijeeee6_initepu3as5fns0_5rangeili1eeese_ns0_2idili1eee_exit_zts9optimizeds_c0_enter_k0_zts9optimized1_aunroll_x_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_b),
        .in_i_predicate(GND_q),
        .in_i_stall(i_llvm_fpga_mem_memdep_k0_zts9optimized3_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_k0_zts9optimized0_V0_sync_valid_reg6_q),
        .in_i_writedata(c_float_0_000000e_008_q_const_q),
        .in_memdep_k0_ZTS9optimized_avm_readdata(in_memdep_k0_ZTS9optimized_avm_readdata),
        .in_memdep_k0_ZTS9optimized_avm_readdatavalid(in_memdep_k0_ZTS9optimized_avm_readdatavalid),
        .in_memdep_k0_ZTS9optimized_avm_waitrequest(in_memdep_k0_ZTS9optimized_avm_waitrequest),
        .in_memdep_k0_ZTS9optimized_avm_writeack(in_memdep_k0_ZTS9optimized_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_lsu_memdep_o_active),
        .out_memdep_k0_ZTS9optimized_avm_address(i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_memdep_k0_ZTS9optimized_avm_address),
        .out_memdep_k0_ZTS9optimized_avm_burstcount(i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_memdep_k0_ZTS9optimized_avm_burstcount),
        .out_memdep_k0_ZTS9optimized_avm_byteenable(i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_memdep_k0_ZTS9optimized_avm_byteenable),
        .out_memdep_k0_ZTS9optimized_avm_enable(i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_memdep_k0_ZTS9optimized_avm_enable),
        .out_memdep_k0_ZTS9optimized_avm_read(i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_memdep_k0_ZTS9optimized_avm_read),
        .out_memdep_k0_ZTS9optimized_avm_write(i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_memdep_k0_ZTS9optimized_avm_write),
        .out_memdep_k0_ZTS9optimized_avm_writedata(i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_memdep_k0_ZTS9optimized_avm_writedata),
        .out_o_almost_empty(i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_almost_empty),
        .out_o_empty(i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_empty),
        .out_o_stall(i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_memdep_k0_ZTS9optimized_avm_address = i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_memdep_k0_ZTS9optimized_avm_address;
    assign out_memdep_k0_ZTS9optimized_avm_enable = i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_memdep_k0_ZTS9optimized_avm_enable;
    assign out_memdep_k0_ZTS9optimized_avm_read = i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_memdep_k0_ZTS9optimized_avm_read;
    assign out_memdep_k0_ZTS9optimized_avm_write = i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_memdep_k0_ZTS9optimized_avm_write;
    assign out_memdep_k0_ZTS9optimized_avm_writedata = i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_memdep_k0_ZTS9optimized_avm_writedata;
    assign out_memdep_k0_ZTS9optimized_avm_byteenable = i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_memdep_k0_ZTS9optimized_avm_byteenable;
    assign out_memdep_k0_ZTS9optimized_avm_burstcount = i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_memdep_k0_ZTS9optimized_avm_burstcount;

    // stall_entry_frontStall_reg0(REG,115)
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

    // stall_entry_frontStall_reg1(REG,116)
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
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_k0_zts9optimized3_out_lsu_memdep_o_active;

    // dupName_0_sync_out_x(GPOUT,28)@33
    assign out_almost_empty_out = merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_V4;
    assign out_empty_out = merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_V2;
    assign out_valid_out = merged_in_SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9optimized3_V0;

    // rst_sync(RESETSYNC,141)
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
