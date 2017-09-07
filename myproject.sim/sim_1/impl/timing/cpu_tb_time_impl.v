// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
// Date        : Sat Aug 19 20:14:47 2017
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/verilog/myproject/myproject/myproject.sim/sim_1/impl/timing/cpu_tb_time_impl.v
// Design      : cpu
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "51b295e7" *) (* dina = "0" *) (* para1 = "5'b11111" *) 
(* wea = "2'b00" *) 
(* NotValidForBitStream *)
module cpu
   (clk,
    rst,
    pc);
  input clk;
  input rst;
  output [31:0]pc;

  wire [31:0]pc;

initial begin
 $sdf_annotate("cpu_tb_time_impl.sdf",,,,"tool_control");
end
  OBUF \pc_OBUF[0]_inst 
       (.I(1'b0),
        .O(pc[0]));
  OBUF \pc_OBUF[10]_inst 
       (.I(1'b0),
        .O(pc[10]));
  OBUF \pc_OBUF[11]_inst 
       (.I(1'b0),
        .O(pc[11]));
  OBUF \pc_OBUF[12]_inst 
       (.I(1'b0),
        .O(pc[12]));
  OBUF \pc_OBUF[13]_inst 
       (.I(1'b0),
        .O(pc[13]));
  OBUF \pc_OBUF[14]_inst 
       (.I(1'b0),
        .O(pc[14]));
  OBUF \pc_OBUF[15]_inst 
       (.I(1'b0),
        .O(pc[15]));
  OBUF \pc_OBUF[16]_inst 
       (.I(1'b0),
        .O(pc[16]));
  OBUF \pc_OBUF[17]_inst 
       (.I(1'b0),
        .O(pc[17]));
  OBUF \pc_OBUF[18]_inst 
       (.I(1'b0),
        .O(pc[18]));
  OBUF \pc_OBUF[19]_inst 
       (.I(1'b0),
        .O(pc[19]));
  OBUF \pc_OBUF[1]_inst 
       (.I(1'b0),
        .O(pc[1]));
  OBUF \pc_OBUF[20]_inst 
       (.I(1'b0),
        .O(pc[20]));
  OBUF \pc_OBUF[21]_inst 
       (.I(1'b0),
        .O(pc[21]));
  OBUF \pc_OBUF[22]_inst 
       (.I(1'b0),
        .O(pc[22]));
  OBUF \pc_OBUF[23]_inst 
       (.I(1'b0),
        .O(pc[23]));
  OBUF \pc_OBUF[24]_inst 
       (.I(1'b0),
        .O(pc[24]));
  OBUF \pc_OBUF[25]_inst 
       (.I(1'b0),
        .O(pc[25]));
  OBUF \pc_OBUF[26]_inst 
       (.I(1'b0),
        .O(pc[26]));
  OBUF \pc_OBUF[27]_inst 
       (.I(1'b0),
        .O(pc[27]));
  OBUF \pc_OBUF[28]_inst 
       (.I(1'b0),
        .O(pc[28]));
  OBUF \pc_OBUF[29]_inst 
       (.I(1'b0),
        .O(pc[29]));
  OBUF \pc_OBUF[2]_inst 
       (.I(1'b0),
        .O(pc[2]));
  OBUF \pc_OBUF[30]_inst 
       (.I(1'b0),
        .O(pc[30]));
  OBUF \pc_OBUF[31]_inst 
       (.I(1'b0),
        .O(pc[31]));
  OBUF \pc_OBUF[3]_inst 
       (.I(1'b0),
        .O(pc[3]));
  OBUF \pc_OBUF[4]_inst 
       (.I(1'b0),
        .O(pc[4]));
  OBUF \pc_OBUF[5]_inst 
       (.I(1'b0),
        .O(pc[5]));
  OBUF \pc_OBUF[6]_inst 
       (.I(1'b0),
        .O(pc[6]));
  OBUF \pc_OBUF[7]_inst 
       (.I(1'b0),
        .O(pc[7]));
  OBUF \pc_OBUF[8]_inst 
       (.I(1'b0),
        .O(pc[8]));
  OBUF \pc_OBUF[9]_inst 
       (.I(1'b0),
        .O(pc[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
