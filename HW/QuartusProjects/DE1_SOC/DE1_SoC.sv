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
parameter all_device_cfgs_t ALL_DEVICE_CFGS = VERBOSE_DEVICES;
parameter all_core_cfgs_t ALL_CORE_CFGS = VERBOSE_CORES;

//#-------------------------------------------------------------------------------------------------------------------#

parameter active_cfg_t ADC_DEVICE               = '{ '{ 01, 00 }, "H","ADC_DE1_SOC" };
parameter active_cfg_t CAPSENSE_CORE        = '{ '{ 01, 04 }, "C", "CAPSENSE"       };
parameter num_active_cfgs = 2;
typedef active_cfg_t active_cfgs_t[num_active_cfgs];
parameter active_cfgs_t ACTIVE_CONFIGS = '{
   ADC_DEVICE,
   CAPSENSE_CORE };

//#-------------------------------------------------------------------------------------------------------------------#

function int get_string_length(string name);
	get_string_length = name.len();
endfunction

function int get_num_active_devices_in_config(active_cfgs_t cfg, int cfg_size, string dev_type) ;
	int result = 0;
 	for(int i=0;i<cfg_size;i++) if( string' (cfg[i].func_type) == dev_type ) result++;
 	return result;
 endfunction


parameter int num_active_host_devices = get_num_active_devices_in_config(ACTIVE_CONFIGS, num_active_cfgs, "H");
parameter int num_active_hm3_cores = get_num_active_devices_in_config(ACTIVE_CONFIGS, num_active_cfgs, "C");

typedef run_cfg_t all_enabled_devices_run_cfg_t[num_active_host_devices];
typedef run_cfg_t all_enabled_cores_cfgs_t[num_active_hm3_cores];

//parameter max_corename_display_width = get_max_string_array_length(VERBOSE_CORES[total_num_hm3_cores]., total_num_hm3_cores);
parameter max_corename_display_width = 14;

typedef int host_device_pad_lengths_t[num_active_host_devices];
typedef int core_pad_lengths_t[num_active_hm3_cores];

function host_device_pad_lengths_t set_host_device_pad_lengths(all_enabled_devices_run_cfg_t cfg, int cfg_size);
	for(int i=0;i<cfg_size;i++) begin
		set_host_device_pad_lengths[i] = (max_corename_display_width - get_string_length(string' (cfg[i].func_cfg.id_name)));
	end
endfunction

function core_pad_lengths_t set_core_pad_lengths(all_enabled_cores_cfgs_t cfg, int cfg_size);
	for(int i=0;i<cfg_size;i++) begin
 		set_core_pad_lengths[i] = (max_corename_display_width - get_string_length(string' (cfg[i].func_cfg.id_name)));
	end
endfunction

function string get_act_func_name(active_cfg_t cfg);
    get_act_func_name = string' (cfg.func_name);
endfunction

function string get_dev_cfg_name(func_cfg_t cfg);
    get_dev_cfg_name = string' (cfg.id_name);
endfunction

function all_enabled_devices_run_cfg_t get_active_dev_cfgs(active_cfgs_t cfg , int cfg_size);
    string dev_type = "H";
    run_cfg_t result[num_active_cfgs];
    int inx = 0;
    for(int i=0;i<cfg_size;i++) begin
         if( string' (cfg[i].func_type) == dev_type ) begin
             for(int j=0;j<total_num_host_devices;j++) begin
                if( string' (ALL_DEVICE_CFGS[j].func_cfg.id_name) == string' (get_act_func_name(cfg[i])) ) begin
                    result[inx] = run_cfg_t' (ALL_DEVICE_CFGS[j]);
                    result[inx].numof.insts = cfg[i].numof.insts;
                    result[inx].numof.subs = cfg[i].numof.subs;
                    get_active_dev_cfgs[i] =  run_cfg_t' (result[inx++]);
                 end
             end
         end
    end
endfunction

function all_enabled_cores_cfgs_t get_active_core_cfgs(active_cfgs_t cfg , int cfg_size);
    string dev_type = "C";
    int inx = 0;
    for(int i=0;i<cfg_size;i++) begin
         if( string' (cfg[i].func_type) == dev_type ) begin
             for(int j=0;j<total_num_host_devices;j++) begin
                if( string' (ALL_CORE_CFGS[j].id_name) == string' (get_act_func_name(cfg[i])) ) begin
                    get_active_core_cfgs[inx] = run_cfg_t' (ALL_CORE_CFGS[j]);
                    get_active_core_cfgs[inx].numof.insts = cfg[i].numof.insts;
                    get_active_core_cfgs[inx++].numof.subs = cfg[i].numof.subs;
                 end
             end
         end
    end
endfunction

parameter all_enabled_devices_run_cfg_t ACTIVE_DEVICE_CFGS = get_active_dev_cfgs(ACTIVE_CONFIGS, num_active_cfgs);
parameter all_enabled_cores_cfgs_t ACTIVE_CORE_CFGS = get_active_core_cfgs(ACTIVE_CONFIGS, num_active_cfgs);

parameter int host_device_pad_lengths[num_active_host_devices] = set_host_device_pad_lengths(ACTIVE_DEVICE_CFGS, num_active_host_devices);
parameter int core_pad_lengths[num_active_hm3_cores] = set_core_pad_lengths(ACTIVE_CORE_CFGS, num_active_hm3_cores);


function int get_max_string_array_length(string str[total_num_hm3_cores], int str_size);
	int get_max_string_array_length = 0, length = 0;
	for(int i=0;i<str_size;i++) begin
		length = str.len();
		if(length>get_max_string_array_length) get_max_string_array_length = length;
	end
endfunction

function int get_max_array_length(bit [0:15] [7:0] arr[total_num_hm3_cores], int str_size);
	int get_max_array_length = 0, length = 0;
	string str;
	for(int i=0;i<str_size;i++) begin
		str = string' (arr[i]);
		length = str.len();
		if(length>get_max_array_length) get_max_array_length = length;
	end
endfunction



//enum int unsigned { ADC = 1, CAPSENSE = 2} core_types;

//parameter NUM_CORETYPES = core_types.num();

//parameter int CFG_NAME_LENGTH = $bits (func_cfg_t.);
//parameter int CFG_NAME_CHARS = $bits (func_cfg_t.)/8;

//parameter func_cfg_t  ADC_DEVICE_C = ADC_DEVICE_CFG;
//parameter int ADC_DEVICE_C_LENGTH = $bits (ADC_DEVICE_C);

//parameter all_device_cfgs_t DEV_NAME = ALL_DEVICE_CFGS;



//=======================================================
//  Structural coding
//=======================================================

initial begin

	$display("%0d active host_devices in config", num_active_host_devices);
	$display("%0d active cores in config", num_active_hm3_cores);
	for(int i=0;i<num_active_host_devices;i++) begin
		$display("Device: %s Instances: %0d Sub instances: %0d Base Address: 0x0%0h  Num regs: %0d",
			{ ACTIVE_DEVICE_CFGS[i].func_cfg.id_name, '{host_device_pad_lengths[i]{8'h20}} },  // pad corenames with variable spaces to generate pretty aligned output;
			ACTIVE_DEVICE_CFGS[i].numof.insts,
			ACTIVE_DEVICE_CFGS[i].numof.subs,
			ACTIVE_DEVICE_CFGS[i].func_cfg.base_addr,
			ACTIVE_DEVICE_CFGS[i].func_cfg.num_regs);
	end


    for(int i=0;i<num_active_hm3_cores;i++) begin
		$display("Core:   %s Instances: %0d Sub instances: %0d Base Address: 0x0%0h  Num regs: %0d",
			{ ACTIVE_CORE_CFGS[i].func_cfg.id_name, '{core_pad_lengths[i]{8'h20}} },  // pad corenames with variable spaces to generate pretty aligned output;
			ACTIVE_CORE_CFGS[i].numof.insts,
			ACTIVE_CORE_CFGS[i].numof.subs,
			ACTIVE_CORE_CFGS[i].func_cfg.base_addr,
			ACTIVE_CORE_CFGS[i].func_cfg.num_regs);
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
