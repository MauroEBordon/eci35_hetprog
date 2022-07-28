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

// SystemVerilog created from i_sfc_logic_s_c1_in_zts5naives_c1_enter_k0_zts5naive0
// Created for function/kernel k0_ZTS5naive
// SystemVerilog created on Thu Jul 28 16:26:54 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k0_ZTS5naive_i_sfc_logic_s_c1_in_zts5nai0000_enter_k0_zts5naive0 (
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_k0_ZTS5naive4_0_tpl,
    output wire [0:0] out_unnamed_k0_ZTS5naive5,
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
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts5naive3_k0_zts5naive5_out_intel_reserved_ffwd_0_0;
    wire [31:0] i_unnamed_k0_zts5naive3_out_primWireOut;
    wire [0:0] i_llvm_fpga_pop_f32_acl_011_i72_pop5_k0_zts5naive0_i_llvm_fpga_pop_f32_acl_011_i72_pop5_k0_zts5naive2_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_f32_acl_011_i72_pop5_k0_zts5naive0_i_llvm_fpga_pop_f32_acl_011_i72_pop5_k0_zts5naive2_mux_x_q;
    wire [0:0] i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive1_x_i_valid;
    wire i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive1_x_i_stall;
    wire i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive1_x_i_data;
    wire [31:0] i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive1_x_o_data;
    wire [0:0] i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_inv_pred_x_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    wire [31:0] c_float_1_000000e_0012_q_const_q;
    reg [0:0] redist0_sync_together13_aunroll_x_in_c1_eni3_1_tpl_4_q;
    reg [0:0] redist0_sync_together13_aunroll_x_in_c1_eni3_1_tpl_4_delay_0;
    reg [0:0] redist0_sync_together13_aunroll_x_in_c1_eni3_1_tpl_4_delay_1;
    reg [0:0] redist0_sync_together13_aunroll_x_in_c1_eni3_1_tpl_4_delay_2;
    reg [31:0] redist1_sync_together13_aunroll_x_in_c1_eni3_2_tpl_4_q;
    reg [31:0] redist1_sync_together13_aunroll_x_in_c1_eni3_2_tpl_4_delay_0;
    reg [31:0] redist1_sync_together13_aunroll_x_in_c1_eni3_2_tpl_4_delay_1;
    reg [0:0] redist2_sync_together13_aunroll_x_in_i_valid_7_q;
    reg [0:0] redist3_sync_together13_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist4_i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_inv_pred_x_q_7_q;
    reg [31:0] redist1_sync_together13_aunroll_x_in_c1_eni3_2_tpl_4_inputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together13_aunroll_x_in_i_valid_7(DELAY,27)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("SYNC"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist2_sync_together13_aunroll_x_in_i_valid_7 ( .xin(in_i_valid), .xout(redist2_sync_together13_aunroll_x_in_i_valid_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist3_sync_together13_aunroll_x_in_i_valid_8(DELAY,28)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together13_aunroll_x_in_i_valid_8_q <= $unsigned(redist2_sync_together13_aunroll_x_in_i_valid_7_q);
        end
    end

    // valid_fanout_reg4(REG,23)@849 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist3_sync_together13_aunroll_x_in_i_valid_8_q);
        end
    end

    // c_float_1_000000e_0012_q_const(CONSTANT,24)
    assign c_float_1_000000e_0012_q_const_q = $unsigned(32'b00111111100000000000000000000000);

    // i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_inv_pred_x(LOGICAL,15)@842
    assign i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg3(REG,22)@841 + 1
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

    // redist4_i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_inv_pred_x_q_7(DELAY,29)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist4_i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_inv_pred_x_q_7 ( .xin(i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_inv_pred_x_q), .xout(redist4_i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_inv_pred_x_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg2(REG,21)@848 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist2_sync_together13_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive1_x(FIFODELAY,14)@842
    // in i_valid@849
    // in i_write_pred@849
    // in i_data@850
    // out o_data@845
    assign i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive1_x_i_stall = ~ (valid_fanout_reg3_q & i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_inv_pred_x_q);
    assign i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive1_x_i_valid = valid_fanout_reg2_q & redist4_i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_inv_pred_x_q_7_q;
    assign i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive1_x_i_data = i_unnamed_k0_zts5naive3_out_primWireOut;
    assign i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive1_x_i_valid[0];
    assign i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive1_x (
        .i_valid(i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive1_x_i_stall_bitsignaltemp),
        .i_data(i_unnamed_k0_zts5naive3_out_primWireOut),
        .o_data(i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together13_aunroll_x_in_c1_eni3_1_tpl_4(DELAY,25)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together13_aunroll_x_in_c1_eni3_1_tpl_4_delay_0 <= $unsigned(in_c1_eni3_1_tpl);
            redist0_sync_together13_aunroll_x_in_c1_eni3_1_tpl_4_delay_1 <= redist0_sync_together13_aunroll_x_in_c1_eni3_1_tpl_4_delay_0;
            redist0_sync_together13_aunroll_x_in_c1_eni3_1_tpl_4_delay_2 <= redist0_sync_together13_aunroll_x_in_c1_eni3_1_tpl_4_delay_1;
            redist0_sync_together13_aunroll_x_in_c1_eni3_1_tpl_4_q <= redist0_sync_together13_aunroll_x_in_c1_eni3_1_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_f32_acl_011_i72_pop5_k0_zts5naive0_i_llvm_fpga_pop_f32_acl_011_i72_pop5_k0_zts5naive2_mux_x(MUX,12)@845
    assign i_llvm_fpga_pop_f32_acl_011_i72_pop5_k0_zts5naive0_i_llvm_fpga_pop_f32_acl_011_i72_pop5_k0_zts5naive2_mux_x_s = redist0_sync_together13_aunroll_x_in_c1_eni3_1_tpl_4_q;
    always @(i_llvm_fpga_pop_f32_acl_011_i72_pop5_k0_zts5naive0_i_llvm_fpga_pop_f32_acl_011_i72_pop5_k0_zts5naive2_mux_x_s or i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive1_x_o_data or c_float_1_000000e_0012_q_const_q)
    begin
        unique case (i_llvm_fpga_pop_f32_acl_011_i72_pop5_k0_zts5naive0_i_llvm_fpga_pop_f32_acl_011_i72_pop5_k0_zts5naive2_mux_x_s)
            1'b0 : i_llvm_fpga_pop_f32_acl_011_i72_pop5_k0_zts5naive0_i_llvm_fpga_pop_f32_acl_011_i72_pop5_k0_zts5naive2_mux_x_q = i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive0_i_llvm_fpga_push_f32_acl_011_i72_push5_k0_zts5naive1_x_o_data;
            1'b1 : i_llvm_fpga_pop_f32_acl_011_i72_pop5_k0_zts5naive0_i_llvm_fpga_pop_f32_acl_011_i72_pop5_k0_zts5naive2_mux_x_q = c_float_1_000000e_0012_q_const_q;
            default : i_llvm_fpga_pop_f32_acl_011_i72_pop5_k0_zts5naive0_i_llvm_fpga_pop_f32_acl_011_i72_pop5_k0_zts5naive2_mux_x_q = 32'b0;
        endcase
    end

    // redist1_sync_together13_aunroll_x_in_c1_eni3_2_tpl_4_inputreg0(DELAY,30)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together13_aunroll_x_in_c1_eni3_2_tpl_4_inputreg0_q <= $unsigned(in_c1_eni3_2_tpl);
        end
    end

    // redist1_sync_together13_aunroll_x_in_c1_eni3_2_tpl_4(DELAY,26)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together13_aunroll_x_in_c1_eni3_2_tpl_4_delay_0 <= $unsigned(redist1_sync_together13_aunroll_x_in_c1_eni3_2_tpl_4_inputreg0_q);
            redist1_sync_together13_aunroll_x_in_c1_eni3_2_tpl_4_delay_1 <= redist1_sync_together13_aunroll_x_in_c1_eni3_2_tpl_4_delay_0;
            redist1_sync_together13_aunroll_x_in_c1_eni3_2_tpl_4_q <= redist1_sync_together13_aunroll_x_in_c1_eni3_2_tpl_4_delay_1;
        end
    end

    // i_unnamed_k0_zts5naive3(BLACKBOX,9)@845
    // out out_primWireOut@850
    k0_ZTS5naive_flt_i_sfc_logic_s_c1_in_zts0000742c246j22644ck2975u thei_unnamed_k0_zts5naive3 (
        .in_0(redist1_sync_together13_aunroll_x_in_c1_eni3_2_tpl_4_q),
        .in_1(i_llvm_fpga_pop_f32_acl_011_i72_pop5_k0_zts5naive0_i_llvm_fpga_pop_f32_acl_011_i72_pop5_k0_zts5naive2_mux_x_q),
        .out_primWireOut(i_unnamed_k0_zts5naive3_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts5naive3_k0_zts5naive5(BLACKBOX,8)@850
    // out out_intel_reserved_ffwd_0_0@20000000
    k0_ZTS5naive_i_llvm_fpga_ffwd_source_f320000naive3_k0_zts5naive0 thei_llvm_fpga_ffwd_source_f32_unnamed_k0_zts5naive3_k0_zts5naive5 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(i_unnamed_k0_zts5naive3_out_primWireOut),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts5naive3_k0_zts5naive5_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,10)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_f32_unnamed_k0_zts5naive3_k0_zts5naive5_out_intel_reserved_ffwd_0_0;

    // valid_fanout_reg0(REG,19)@849 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together13_aunroll_x_in_i_valid_8_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,17)@850
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_k0_ZTS5naive4_0_tpl = GND_q;
    assign out_unnamed_k0_ZTS5naive5 = GND_q;

endmodule
