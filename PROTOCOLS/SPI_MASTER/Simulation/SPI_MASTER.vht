-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "02/09/2020 19:46:15"
                                                            
-- Vhdl Test Bench template for design  :  SPI_MASTER
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SPI_MASTER_vhd_tst IS
END SPI_MASTER_vhd_tst;
ARCHITECTURE SPI_MASTER_arch OF SPI_MASTER_vhd_tst IS
-- constants                                                 
-- signals 
CONSTANT CLK_PERIOD: time := 20 ns; 
CONSTANT CLK_PERIOD5: time := 200 ns;                                                 
SIGNAL clk_50_Mhz : STD_LOGIC;
SIGNAL register_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL register_out: std_Logic_Vector(7 DOWNTO 0);
SIGNAL SCLK : STD_LOGIC;
SIGNAL MOSI : STD_LOGIC;
SIGNAL MISO	: STD_LOGIC;
SIGNAL SPI_MODE : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL ss : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT SPI_MASTER
	PORT (
	clk_50_Mhz : IN STD_LOGIC;
	register_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	register_out: out std_logic_vector(7 downto 0);
	SCLK : inOUT STD_LOGIC;
	MOSI : OUT STD_LOGIC;
	MISO: IN STD_LOGIC;
	SPI_MODE : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	ss : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : SPI_MASTER
	PORT MAP (
-- list connections between master ports and signals
	clk_50_Mhz => clk_50_Mhz,
	register_in => register_in,
	register_out => register_out,
	SCLK => SCLK,
	MOSI => MOSI,
	MISO => MISO,
	SPI_MODE => SPI_MODE,
	ss => ss
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;   

cl_process: process
begin
	
	clk_50_Mhz <= '0';
	wait for CLK_PERIOD/2;
	
	clk_50_Mhz <= '1';
	wait for CLK_PERIOD/2;
	
end process;
                                        
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
		  
		  ss <= "1110";
		  SPI_MODE <= "11";
		  register_in <= "01011111";
		--  wait for 17*CLK_PERIOD5;
		  
		  MISO <= '0';
		  WAIT FOR 2*CLK_PERIOD5;
		  
		  MISO <= '1';
		  WAIT FOR 2*CLK_PERIOD5;
		  
		  MISO <= '0';
		  WAIT FOR 2*CLK_PERIOD5;
		  
		  MISO <= '0';
		  WAIT FOR 2*CLK_PERIOD5;
		
		  MISO <= '1';
		  WAIT FOR 2*CLK_PERIOD5;
		  
		  MISO <= '0';
		  WAIT FOR 2*CLK_PERIOD5;
		  
		  
		  MISO <= '1';
		  WAIT FOR 2*CLK_PERIOD5;
		  
		  MISO <= '0';
		  WAIT FOR 2*CLK_PERIOD5;
WAIT;                                                        
END PROCESS always;                                          
END SPI_MASTER_arch;
