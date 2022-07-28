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
// SystemVerilog created on Thu Jul 28 16:46:50 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k0_ZTS9optimized_i_sfc_logic_s_c0_in_pre0000er_k0_zts9optimized0 (
    input wire [63:0] in_arg4,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [0:0] in_i_valid,
    input wire [63:0] in_arg7_0_tpl,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [31:0] out_c0_exi2_1_tpl,
    output wire [63:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_k0_ZTS9optimized3,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_sroa_0_04_k0_zts9optimized5_out_dest_data_out_3_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_sroa_12_01_k0_zts9optimized1_out_dest_data_out_0_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_sroa_6_03_k0_zts9optimized4_out_dest_data_out_2_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_sroa_9_02_k0_zts9optimized2_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized1_k0_zts9optimized8_out_dest_data_out_4_0;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized12_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized12_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized12_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized12_vt_select_63_b;
    wire [31:0] i_reduction_zts9optimized_0_k0_zts9optimized3_out_primWireOut;
    wire [31:0] i_reduction_zts9optimized_1_k0_zts9optimized6_out_primWireOut;
    wire [31:0] i_reduction_zts9optimized_2_k0_zts9optimized7_out_primWireOut;
    wire [31:0] i_reduction_zts9optimized_3_k0_zts9optimized9_out_primWireOut;
    wire [1:0] i_unnamed_k0_zts9optimized13_vt_const_1_q;
    wire [63:0] i_unnamed_k0_zts9optimized13_vt_join_q;
    wire [61:0] i_unnamed_k0_zts9optimized13_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_s_class_cl_sycl_ranges_arg7_sync_buffer_k0_zts9optimized10_aunroll_x_out_buffer_out_0_tpl;
    wire [64:0] i_unnamed_k0_zts9optimized0_add_x_a;
    wire [64:0] i_unnamed_k0_zts9optimized0_add_x_b;
    logic [64:0] i_unnamed_k0_zts9optimized0_add_x_o;
    wire [64:0] i_unnamed_k0_zts9optimized0_add_x_q;
    wire [61:0] i_unnamed_k0_zts9optimized0_narrow_x_b;
    wire [63:0] i_unnamed_k0_zts9optimized0_shift_join_x_q;
    wire [63:0] i_unnamed_k0_zts9optimized0_dupName_0_trunc_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    reg [0:0] redist0_sync_together32_in_i_valid_12_q;
    reg [0:0] redist1_sync_together32_in_i_valid_17_q;
    reg [0:0] redist1_sync_together32_in_i_valid_17_delay_0;
    reg [0:0] redist1_sync_together32_in_i_valid_17_delay_1;
    reg [0:0] redist1_sync_together32_in_i_valid_17_delay_2;
    reg [0:0] redist1_sync_together32_in_i_valid_17_delay_3;
    reg [31:0] redist2_i_reduction_zts9optimized_2_k0_zts9optimized7_out_primWireOut_1_q;
    reg [31:0] redist3_i_reduction_zts9optimized_1_k0_zts9optimized6_out_primWireOut_1_q;
    reg [31:0] redist4_i_reduction_zts9optimized_0_k0_zts9optimized3_out_primWireOut_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist0_sync_together32_in_i_valid_12(DELAY,50)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("SYNC"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist0_sync_together32_in_i_valid_12 ( .xin(in_i_valid), .xout(redist0_sync_together32_in_i_valid_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist1_sync_together32_in_i_valid_17(DELAY,51)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_sync_together32_in_i_valid_17_delay_0 <= '0;
        end
        else
        begin
            redist1_sync_together32_in_i_valid_17_delay_0 <= $unsigned(redist0_sync_together32_in_i_valid_12_q);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together32_in_i_valid_17_delay_1 <= redist1_sync_together32_in_i_valid_17_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_sync_together32_in_i_valid_17_delay_2 <= '0;
        end
        else
        begin
            redist1_sync_together32_in_i_valid_17_delay_2 <= redist1_sync_together32_in_i_valid_17_delay_1;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together32_in_i_valid_17_delay_3 <= redist1_sync_together32_in_i_valid_17_delay_2;
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_sync_together32_in_i_valid_17_q <= '0;
        end
        else
        begin
            redist1_sync_together32_in_i_valid_17_q <= redist1_sync_together32_in_i_valid_17_delay_3;
        end
    end

    // valid_fanout_reg0(REG,42)@17 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together32_in_i_valid_17_q);
        end
    end

    // valid_fanout_reg6(REG,48)@17 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist1_sync_together32_in_i_valid_17_q);
        end
    end

    // i_llvm_fpga_sync_buffer_s_class_cl_sycl_ranges_arg7_sync_buffer_k0_zts9optimized10_aunroll_x(BLACKBOX,33)@0
    // in in_i_dependence@18
    // in in_valid_in@18
    // out out_valid_out@18
    // out out_buffer_out_0_tpl@18
    k0_ZTS9optimized_i_llvm_fpga_sync_buffer0001er_k0_zts9optimized0 thei_llvm_fpga_sync_buffer_s_class_cl_sycl_ranges_arg7_sync_buffer_k0_zts9optimized10_aunroll_x (
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .in_buffer_in_0_tpl(in_arg7_0_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .out_buffer_out_0_tpl(i_llvm_fpga_sync_buffer_s_class_cl_sycl_ranges_arg7_sync_buffer_k0_zts9optimized10_aunroll_x_out_buffer_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_k0_zts9optimized0_narrow_x(BITSELECT,36)@18
    assign i_unnamed_k0_zts9optimized0_narrow_x_b = i_llvm_fpga_sync_buffer_s_class_cl_sycl_ranges_arg7_sync_buffer_k0_zts9optimized10_aunroll_x_out_buffer_out_0_tpl[61:0];

    // i_unnamed_k0_zts9optimized0_shift_join_x(BITJOIN,37)@18
    assign i_unnamed_k0_zts9optimized0_shift_join_x_q = {i_unnamed_k0_zts9optimized0_narrow_x_b, i_unnamed_k0_zts9optimized13_vt_const_1_q};

    // valid_fanout_reg7(REG,49)@17 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist1_sync_together32_in_i_valid_17_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized12(BLACKBOX,14)@0
    // in in_i_dependence@18
    // in in_valid_in@18
    // out out_buffer_out@18
    // out out_valid_out@18
    k0_ZTS9optimized_i_llvm_fpga_sync_buffer0000er_k0_zts9optimized0 thei_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized12 (
        .in_buffer_in(in_arg4),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized12_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized12_vt_select_63(BITSELECT,17)@18
    assign i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized12_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized12_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized12_vt_const_9(CONSTANT,15)
    assign i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized12_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized12_vt_join(BITJOIN,16)@18
    assign i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized12_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized12_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized12_vt_const_9_q};

    // i_unnamed_k0_zts9optimized0_add_x(ADD,34)@18
    assign i_unnamed_k0_zts9optimized0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_arg4_sync_buffer_k0_zts9optimized12_vt_join_q};
    assign i_unnamed_k0_zts9optimized0_add_x_b = {1'b0, i_unnamed_k0_zts9optimized0_shift_join_x_q};
    assign i_unnamed_k0_zts9optimized0_add_x_o = $unsigned(i_unnamed_k0_zts9optimized0_add_x_a) + $unsigned(i_unnamed_k0_zts9optimized0_add_x_b);
    assign i_unnamed_k0_zts9optimized0_add_x_q = i_unnamed_k0_zts9optimized0_add_x_o[64:0];

    // i_unnamed_k0_zts9optimized0_dupName_0_trunc_sel_x(BITSELECT,39)@18
    assign i_unnamed_k0_zts9optimized0_dupName_0_trunc_sel_x_b = i_unnamed_k0_zts9optimized0_add_x_q[63:0];

    // i_unnamed_k0_zts9optimized13_vt_select_63(BITSELECT,24)@18
    assign i_unnamed_k0_zts9optimized13_vt_select_63_b = i_unnamed_k0_zts9optimized0_dupName_0_trunc_sel_x_b[63:2];

    // i_unnamed_k0_zts9optimized13_vt_const_1(CONSTANT,22)
    assign i_unnamed_k0_zts9optimized13_vt_const_1_q = $unsigned(2'b00);

    // i_unnamed_k0_zts9optimized13_vt_join(BITJOIN,23)@18
    assign i_unnamed_k0_zts9optimized13_vt_join_q = {i_unnamed_k0_zts9optimized13_vt_select_63_b, i_unnamed_k0_zts9optimized13_vt_const_1_q};

    // valid_fanout_reg4(REG,46)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_sroa_0_04_k0_zts9optimized5(BLACKBOX,9)@1
    k0_ZTS9optimized_i_llvm_fpga_ffwd_dest_f000004_k0_zts9optimized0 thei_llvm_fpga_ffwd_dest_f32_sroa_0_04_k0_zts9optimized5 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_f32_sroa_0_04_k0_zts9optimized5_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,45)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_sroa_6_03_k0_zts9optimized4(BLACKBOX,11)@1
    k0_ZTS9optimized_i_llvm_fpga_ffwd_dest_f000003_k0_zts9optimized0 thei_llvm_fpga_ffwd_dest_f32_sroa_6_03_k0_zts9optimized4 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_f32_sroa_6_03_k0_zts9optimized4_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_reduction_zts9optimized_1_k0_zts9optimized6(BLACKBOX,19)@1
    // out out_primWireOut@6
    k0_ZTS9optimized_flt_i_sfc_logic_s_c0_in0000b0c2463a0054c2a6355y thei_reduction_zts9optimized_1_k0_zts9optimized6 (
        .in_0(i_llvm_fpga_ffwd_dest_f32_sroa_6_03_k0_zts9optimized4_out_dest_data_out_2_0),
        .in_1(i_llvm_fpga_ffwd_dest_f32_sroa_0_04_k0_zts9optimized5_out_dest_data_out_3_0),
        .out_primWireOut(i_reduction_zts9optimized_1_k0_zts9optimized6_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_i_reduction_zts9optimized_1_k0_zts9optimized6_out_primWireOut_1(DELAY,53)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_reduction_zts9optimized_1_k0_zts9optimized6_out_primWireOut_1_q <= $unsigned(i_reduction_zts9optimized_1_k0_zts9optimized6_out_primWireOut);
        end
    end

    // valid_fanout_reg2(REG,44)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_sroa_9_02_k0_zts9optimized2(BLACKBOX,12)@1
    k0_ZTS9optimized_i_llvm_fpga_ffwd_dest_f000002_k0_zts9optimized0 thei_llvm_fpga_ffwd_dest_f32_sroa_9_02_k0_zts9optimized2 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_f32_sroa_9_02_k0_zts9optimized2_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,43)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_sroa_12_01_k0_zts9optimized1(BLACKBOX,10)@1
    k0_ZTS9optimized_i_llvm_fpga_ffwd_dest_f000001_k0_zts9optimized0 thei_llvm_fpga_ffwd_dest_f32_sroa_12_01_k0_zts9optimized1 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_f32_sroa_12_01_k0_zts9optimized1_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_reduction_zts9optimized_0_k0_zts9optimized3(BLACKBOX,18)@1
    // out out_primWireOut@6
    k0_ZTS9optimized_flt_i_sfc_logic_s_c0_in0000b0c2463a0054c2a6355y thei_reduction_zts9optimized_0_k0_zts9optimized3 (
        .in_0(i_llvm_fpga_ffwd_dest_f32_sroa_12_01_k0_zts9optimized1_out_dest_data_out_0_0),
        .in_1(i_llvm_fpga_ffwd_dest_f32_sroa_9_02_k0_zts9optimized2_out_dest_data_out_1_0),
        .out_primWireOut(i_reduction_zts9optimized_0_k0_zts9optimized3_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_reduction_zts9optimized_0_k0_zts9optimized3_out_primWireOut_1(DELAY,54)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_reduction_zts9optimized_0_k0_zts9optimized3_out_primWireOut_1_q <= $unsigned(i_reduction_zts9optimized_0_k0_zts9optimized3_out_primWireOut);
        end
    end

    // i_reduction_zts9optimized_2_k0_zts9optimized7(BLACKBOX,20)@7
    // out out_primWireOut@12
    k0_ZTS9optimized_flt_i_sfc_logic_s_c0_in0000b0c2463a0054c2a6355y thei_reduction_zts9optimized_2_k0_zts9optimized7 (
        .in_0(redist4_i_reduction_zts9optimized_0_k0_zts9optimized3_out_primWireOut_1_q),
        .in_1(redist3_i_reduction_zts9optimized_1_k0_zts9optimized6_out_primWireOut_1_q),
        .out_primWireOut(i_reduction_zts9optimized_2_k0_zts9optimized7_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_i_reduction_zts9optimized_2_k0_zts9optimized7_out_primWireOut_1(DELAY,52)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_reduction_zts9optimized_2_k0_zts9optimized7_out_primWireOut_1_q <= $unsigned(i_reduction_zts9optimized_2_k0_zts9optimized7_out_primWireOut);
        end
    end

    // valid_fanout_reg5(REG,47)@12 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist0_sync_together32_in_i_valid_12_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized1_k0_zts9optimized8(BLACKBOX,13)@13
    k0_ZTS9optimized_i_llvm_fpga_ffwd_dest_f0000d1_k0_zts9optimized0 thei_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized1_k0_zts9optimized8 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized1_k0_zts9optimized8_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_reduction_zts9optimized_3_k0_zts9optimized9(BLACKBOX,21)@13
    // out out_primWireOut@18
    k0_ZTS9optimized_flt_i_sfc_logic_s_c0_in0000b0c2463a0054c2a6355y thei_reduction_zts9optimized_3_k0_zts9optimized9 (
        .in_0(i_llvm_fpga_ffwd_dest_f32_unnamed_k0_zts9optimized1_k0_zts9optimized8_out_dest_data_out_4_0),
        .in_1(redist2_i_reduction_zts9optimized_2_k0_zts9optimized7_out_primWireOut_1_q),
        .out_primWireOut(i_reduction_zts9optimized_3_k0_zts9optimized9_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,41)@18
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = i_reduction_zts9optimized_3_k0_zts9optimized9_out_primWireOut;
    assign out_c0_exi2_2_tpl = i_unnamed_k0_zts9optimized13_vt_join_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_k0_ZTS9optimized3 = GND_q;

endmodule
