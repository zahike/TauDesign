`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2021 08:12:35 AM
// Design Name: 
// Module Name: TauDesignRx_Top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TauDesignRx_Top(
input  sysclk,

  output      hdmi_tx_clk_n   ,
  output      hdmi_tx_clk_p   ,
  output [2:0]hdmi_tx_data_n  ,
  output [2:0]hdmi_tx_data_p  ,
  
  input  SCLK,
  input  MOSI,
  output MISO,
  input  CS_n
  
    );
    
TauDesignRx_BD TauDesignRx_BD_inst
(
.sysclk(sysclk),        //input  sysclk
.TMDS_Clk_n_0 (hdmi_tx_clk_n ),		//output  TMDS_Clk_n
.TMDS_Clk_p_0 (hdmi_tx_clk_p ),        //output  TMDS_Clk_p
.TMDS_Data_n_0(hdmi_tx_data_n),        //output [2:0] TMDS_Data_n
.TMDS_Data_p_0(hdmi_tx_data_p),        //output [2:0] TMDS_Data_p

.SCLK_0(SCLK),   //  input  SCLK,
.MOSI_0(MOSI),   //  input  MOSI,
.MISO_0(MISO),   //  output MISO,
.CS_n_0(CS_n)   //  input  CS_n


);    
endmodule
