// ============================================================================
// Copyright (c) 2013 by Terasic Technologies Inc.
// ============================================================================
//
// Permission:
//
//   Terasic grants permission to use and modify this code for use
//   in synthesis for all Terasic Development Boards and Altera Development
//   Kits made by Terasic.  Other use of this code, including the selling
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Terasic provides no warranty regarding the use
//   or functionality of this code.
//
// ============================================================================
//
//  Terasic Technologies Inc
//  9F., No.176, Sec.2, Gongdao 5th Rd, East Dist, Hsinchu City, 30070. Taiwan
//
//
//                     web: http://www.terasic.com/
//                     email: support@terasic.com
//
// ============================================================================
//Date:  Thu Jul 11 11:26:45 2013
// ============================================================================

//`define ENABLE_HPS

module DE1_SoC(

      ///////// ADC /////////
      output             ADC_CONVST,
      output             ADC_DIN,
      input              ADC_DOUT,
      output             ADC_SCLK,

      ///////// AUD /////////
      input              AUD_ADCDAT,
      inout              AUD_ADCLRCK,
      inout              AUD_BCLK,
      output             AUD_DACDAT,
      inout              AUD_DACLRCK,
      output             AUD_XCK,

      ///////// CLOCK2 /////////
      input              CLOCK2_50,

      ///////// CLOCK3 /////////
      input              CLOCK3_50,

      ///////// CLOCK4 /////////
      input              CLOCK4_50,

      ///////// CLOCK /////////
      input              CLOCK_50,

      ///////// DRAM /////////
      output      [12:0] DRAM_ADDR,
      output      [1:0]  DRAM_BA,
      output             DRAM_CAS_N,
      output             DRAM_CKE,
      output             DRAM_CLK,
      output             DRAM_CS_N,
      inout       [15:0] DRAM_DQ,
      output             DRAM_LDQM,
      output             DRAM_RAS_N,
      output             DRAM_UDQM,
      output             DRAM_WE_N,

      ///////// FAN /////////
      output             FAN_CTRL,

      ///////// FPGA /////////
      output             FPGA_I2C_SCLK,
      inout              FPGA_I2C_SDAT,

      ///////// GPIO /////////
      inout     [35:0]         GPIO_0,
      inout     [35:0]         GPIO_1,


      ///////// HEX0 /////////
      output      [6:0]  HEX0,

      ///////// HEX1 /////////
      output      [6:0]  HEX1,

      ///////// HEX2 /////////
      output      [6:0]  HEX2,

      ///////// HEX3 /////////
      output      [6:0]  HEX3,

      ///////// HEX4 /////////
      output      [6:0]  HEX4,

      ///////// HEX5 /////////
      output      [6:0]  HEX5,

`ifdef ENABLE_HPS
      ///////// HPS /////////
      inout              HPS_CONV_USB_N,
      output      [14:0] HPS_DDR3_ADDR,
      output      [2:0]  HPS_DDR3_BA,
      output             HPS_DDR3_CAS_N,
      output             HPS_DDR3_CKE,
      output             HPS_DDR3_CK_N,
      output             HPS_DDR3_CK_P,
      output             HPS_DDR3_CS_N,
      output      [3:0]  HPS_DDR3_DM,
      inout       [31:0] HPS_DDR3_DQ,
      inout       [3:0]  HPS_DDR3_DQS_N,
      inout       [3:0]  HPS_DDR3_DQS_P,
      output             HPS_DDR3_ODT,
      output             HPS_DDR3_RAS_N,
      output             HPS_DDR3_RESET_N,
      input              HPS_DDR3_RZQ,
      output             HPS_DDR3_WE_N,
      output             HPS_ENET_GTX_CLK,
      inout              HPS_ENET_INT_N,
      output             HPS_ENET_MDC,
      inout              HPS_ENET_MDIO,
      input              HPS_ENET_RX_CLK,
      input       [3:0]  HPS_ENET_RX_DATA,
      input              HPS_ENET_RX_DV,
      output      [3:0]  HPS_ENET_TX_DATA,
      output             HPS_ENET_TX_EN,
      inout       [3:0]  HPS_FLASH_DATA,
      output             HPS_FLASH_DCLK,
      output             HPS_FLASH_NCSO,
      inout              HPS_GSENSOR_INT,
      inout              HPS_I2C1_SCLK,
      inout              HPS_I2C1_SDAT,
      inout              HPS_I2C2_SCLK,
      inout              HPS_I2C2_SDAT,
      inout              HPS_I2C_CONTROL,
      inout              HPS_KEY,
      inout              HPS_LED,
      inout              HPS_LTC_GPIO,
      output             HPS_SD_CLK,
      inout              HPS_SD_CMD,
      inout       [3:0]  HPS_SD_DATA,
      output             HPS_SPIM_CLK,
      input              HPS_SPIM_MISO,
      output             HPS_SPIM_MOSI,
      inout              HPS_SPIM_SS,
      input              HPS_UART_RX,
      output             HPS_UART_TX,
      input              HPS_USB_CLKOUT,
      inout       [7:0]  HPS_USB_DATA,
      input              HPS_USB_DIR,
      input              HPS_USB_NXT,
      output             HPS_USB_STP,
`endif /*ENABLE_HPS*/

      ///////// IRDA /////////
      input              IRDA_RXD,
      output             IRDA_TXD,

      ///////// KEY /////////
      input       [3:0]  KEY,

      ///////// LEDR /////////
      output      [9:0]  LEDR,

      ///////// PS2 /////////
      inout              PS2_CLK,
      inout              PS2_CLK2,
      inout              PS2_DAT,
      inout              PS2_DAT2,

      ///////// SW /////////
      input       [9:0]  SW,

      ///////// TD /////////
      input              TD_CLK27,
      input      [7:0]  TD_DATA,
      input             TD_HS,
      output             TD_RESET_N,
      input             TD_VS,

      ///////// VGA /////////
      output      [7:0]  VGA_B,
      output             VGA_BLANK_N,
      output             VGA_CLK,
      output      [7:0]  VGA_G,
      output             VGA_HS,
      output      [7:0]  VGA_R,
      output             VGA_SYNC_N,
      output             VGA_VS
);


//=======================================================
//  REG/WIRE declarations
//=======================================================
import all_hm3_cores_cfg::*;

function int get_string_length(string name);
	get_string_length = name.len();
endfunction

function int get_max_string_array_length(string str[total_num_hm3_cores], int str_size);
	int get_max_string_array_length = 0, length = 0;
	for(int i=0;i<str_size;i++) begin
		length = str.len();
		if(length>get_max_string_array_length) get_max_string_array_length = length;
	end
endfunction

function int get_max_array_length(bit [0:15] [7:0] arr[total_num_hm3_cores], int str_size);
	int get_max_string_array_length = 0, length = 0;
	string str;
	for(int i=0;i<str_size;i++) begin
		str = string' (arr[i]);
		length = str.len();
		if(length>get_max_array_length) get_max_string_array_length = length;
	end
endfunction

parameter core_cfg_t VERBOSE_CORE1 = '{ 01, 00, 16'h0200, 02, "ADC", "DE1-SoC" };
parameter core_cfg_t VERBOSE_CORE2 = '{ 01, 04, 16'h0300, 02, "CAPSENSE", "" };
parameter all_core_cfgs_t VERBOSE_CORES = '{
VERBOSE_CORE1,
VERBOSE_CORE2 };

    parameter ADC_TYPE               = "DE1-SoC";
//    parameter ADC_TYPE             = "DE0-Nano-SoC";

// ADC
    parameter ADC_STATUS_REG = 16'h0000;
    parameter ADC_DATA_REG = 16'h0004;
// CAPSENSOR:
    parameter CAPSENSE_DATA_REG = 16'h0000;
    parameter CAPSENSE_HYSTERESIS_REG = 16'h0004;

function int get_core_fieldnum(string name);
	int result = -1;
	for(int i=0;i<num_fields_pr_hm3_core_cfg_t;i++) begin
		if(CORE_FIELD[i] == name) begin
			result = i;
		end
	end
	get_core_fieldnum = result;
endfunction

function int get_num_avtive_cores_in_config ;
	int number = 0;
	for(int i=0;i<total_num_hm3_cores;i++) begin
		if(VERBOSE_CORES[i].num_inst>0) number++;
	end
	get_num_avtive_cores_in_config = number;
endfunction

enum int unsigned { ADC = 1, CAPSENSE = 2} core_types;

parameter NUM_CORETYPES = core_types.num();

//parameter max_corename_length = get_max_string_array_length(VERBOSE_CORES[total_num_hm3_cores].core_name, total_num_hm3_cores);
parameter max_corename_length = 9;

typedef bit [0:15] [7:0] name_arr_t;

typedef int pad_length_t[total_num_hm3_cores];

function pad_length_t set_pad_length;
	int length[total_num_hm3_cores];
	for(int j=0;j<2;j++) begin
		length[j] = (9 - get_string_length(string' (VERBOSE_CORES[j].core_name)));
//		length[j] = (9 - get_string_length(string' (name_arr[j] )));
	end
	return length;
endfunction

parameter int pad_length[total_num_hm3_cores] = set_pad_length();



//=======================================================
//  Structural coding
//=======================================================

initial begin
	name_arr_t name_arr;
// 	for(j=0;j<total_num_hm3_cores;j++) begin
// 		name_arr[j] = VERBOSE_CORES[j].core_name;
// 	end


//	parameter int pad_length[total_num_hm3_cores] = set_pad_length();

// 	parameter int pad_length[total_num_hm3_cores] =
// 	set_pad_length( '{ VERBOSE_CORES[total_num_hm3_cores-1].core_name, VERBOSE_CORES[total_num_hm3_cores-1].core_name} );

	$display("%0d active cores in config", get_num_avtive_cores_in_config());
	for(int i=0;i<2;i++) begin
		name_arr = VERBOSE_CORES[i].core_name;
		$display("(): name_arr = %s<--", name_arr);
		$display("Name_LEN: %0d Core: %s Instances: %0d Sub instances: %0d Base Address: 0x0%0h  Num regs: %0d",
//			{ VERBOSE_CORES[i].core_name, '{length[i]{8'h20}} },
			pad_length[i],
			{ VERBOSE_CORES[i].core_name, '{pad_length[i]{8'h20}} },  // pad corenames with variable spaces to generate pretty aligned output;
			VERBOSE_CORES[i].num_inst,
			VERBOSE_CORES[i].num_subs,
			VERBOSE_CORES[i].base_addr,
			VERBOSE_CORES[i].num_regs);
	end
end
/*
led_blinker #(.COUNT_MAX (24999999)) led_blinker_inst
(
	.clk(CLOCK2_50) ,	// input  clk_sig
	.reset_n(1'b1) ,	// input  reset_n_sig
	.LED(LEDR[0]) 	// output  LED_sig
);
*/
//defparam led_blinker_inst.COUNT_MAX = 24999999;




endmodule
