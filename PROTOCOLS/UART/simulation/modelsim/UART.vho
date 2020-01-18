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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "01/17/2020 21:10:09"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	UART IS
    PORT (
	clk : IN std_logic;
	SerialIn : IN std_logic;
	ParallelIN : IN std_logic_vector(0 TO 7);
	SerialOut : OUT std_logic;
	TX : IN std_logic;
	ParallelOut : OUT std_logic_vector(0 TO 7)
	);
END UART;

-- Design Ports Information
-- SerialOut	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ParallelOut[7]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ParallelOut[6]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ParallelOut[5]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ParallelOut[4]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ParallelOut[3]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ParallelOut[2]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ParallelOut[1]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ParallelOut[0]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ParallelIN[5]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ParallelIN[6]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ParallelIN[2]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ParallelIN[1]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ParallelIN[4]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ParallelIN[3]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ParallelIN[7]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ParallelIN[0]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SerialIn	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UART IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_SerialIn : std_logic;
SIGNAL ww_ParallelIN : std_logic_vector(0 TO 7);
SIGNAL ww_SerialOut : std_logic;
SIGNAL ww_TX : std_logic;
SIGNAL ww_ParallelOut : std_logic_vector(0 TO 7);
SIGNAL \clk_gen|P1|G1:11:T|S2~reg0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_gen|P3|OUTPUT~reg0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_gen|P1|G1:10:T|S2~reg0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_gen|P1|G1:0:T|S2~reg0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_gen|P1|G1:13:T|S2~reg0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_gen|P1|G1:12:T|S2~reg0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_gen|P1|G1:16:T|S2~reg0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_gen|P1|G1:15:T|S2~reg0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_gen|P1|G1:14:T|S2~reg0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SerialOut~output_o\ : std_logic;
SIGNAL \ParallelOut[7]~output_o\ : std_logic;
SIGNAL \ParallelOut[6]~output_o\ : std_logic;
SIGNAL \ParallelOut[5]~output_o\ : std_logic;
SIGNAL \ParallelOut[4]~output_o\ : std_logic;
SIGNAL \ParallelOut[3]~output_o\ : std_logic;
SIGNAL \ParallelOut[2]~output_o\ : std_logic;
SIGNAL \ParallelOut[1]~output_o\ : std_logic;
SIGNAL \ParallelOut[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_gen|P1|T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:23:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:23:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:23:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:24:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:24:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:24:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:25:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:25:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:25:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:26:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:26:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:26:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:27:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:27:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:27:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:28:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:28:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:28:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:29:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:29:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:29:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:29:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:29:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:30:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:30:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:27:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:27:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:28:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:28:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P2|Equal0~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:9:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:9:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:3:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:3:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:4:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:4:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:2:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:2:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:1:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:1:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P2|LessThan0~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:7:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:7:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:5:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:5:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:6:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:6:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P2|Equal0~6_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:8:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:8:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P2|LessThan0~1_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:10:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:10:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P2|LessThan0~2_combout\ : std_logic;
SIGNAL \clk_gen|P1|T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:0:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:0:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:0:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:0:T|S2~reg0clkctrl_outclk\ : std_logic;
SIGNAL \clk_gen|P1|G1:1:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:1:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:1:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:2:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:2:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:2:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:3:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:3:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:3:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:4:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:4:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:5:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:5:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:5:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:6:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:6:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:6:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:7:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:7:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:7:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:8:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:8:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:8:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:9:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:9:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:9:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:10:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:10:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:10:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:10:T|S2~reg0clkctrl_outclk\ : std_logic;
SIGNAL \clk_gen|P1|G1:11:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:11:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:11:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:11:T|S2~reg0clkctrl_outclk\ : std_logic;
SIGNAL \clk_gen|P1|G1:12:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:12:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:12:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:12:T|S2~reg0clkctrl_outclk\ : std_logic;
SIGNAL \clk_gen|P1|G1:13:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:13:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:13:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:13:T|S2~reg0clkctrl_outclk\ : std_logic;
SIGNAL \clk_gen|P1|G1:14:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:14:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:14:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:14:T|S2~reg0clkctrl_outclk\ : std_logic;
SIGNAL \clk_gen|P1|G1:15:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:15:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:15:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:15:T|S2~reg0clkctrl_outclk\ : std_logic;
SIGNAL \clk_gen|P1|G1:16:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:16:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:16:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:16:T|S2~reg0clkctrl_outclk\ : std_logic;
SIGNAL \clk_gen|P1|G1:17:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:17:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:17:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:18:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:18:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:18:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:19:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:19:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:19:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:20:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:20:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:20:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:21:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:21:T|S2~reg0feeder_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:21:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:22:T|S2~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:22:T|S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:23:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:23:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:24:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:24:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:25:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:25:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:26:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:26:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P2|Equal0~4_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:22:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:22:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:19:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:19:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:20:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:20:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:21:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:21:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P2|Equal0~3_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:18:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:18:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:17:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:17:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:15:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:15:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:16:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:16:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P2|Equal0~2_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:13:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:13:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:12:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:12:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:11:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:11:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:14:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:14:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P2|Equal0~1_combout\ : std_logic;
SIGNAL \clk_gen|P2|Equal0~5_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:0:T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:0:T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P2|Equal0~7_combout\ : std_logic;
SIGNAL \clk_gen|P2|Equal0~8_combout\ : std_logic;
SIGNAL \clk_gen|P1|T|S1~0_combout\ : std_logic;
SIGNAL \clk_gen|P1|T|S1~reg0_q\ : std_logic;
SIGNAL \clk_gen|P2|Equal0~9_combout\ : std_logic;
SIGNAL \clk_gen|P3|OUTPUT~0_combout\ : std_logic;
SIGNAL \clk_gen|P3|OUTPUT~reg0_q\ : std_logic;
SIGNAL \clk_gen|P3|OUTPUT~reg0clkctrl_outclk\ : std_logic;
SIGNAL \TX~input_o\ : std_logic;
SIGNAL \CVSET|P_S|control[0]~3_combout\ : std_logic;
SIGNAL \CVSET|P_S|control~0_combout\ : std_logic;
SIGNAL \CVSET|P_S|control~1_combout\ : std_logic;
SIGNAL \CVSET|P_S|control[2]~2_combout\ : std_logic;
SIGNAL \ParallelIN[6]~input_o\ : std_logic;
SIGNAL \ParallelIN[5]~input_o\ : std_logic;
SIGNAL \CVSET|P_S|data_out~0_combout\ : std_logic;
SIGNAL \ParallelIN[2]~input_o\ : std_logic;
SIGNAL \ParallelIN[1]~input_o\ : std_logic;
SIGNAL \CVSET|P_S|data_out~1_combout\ : std_logic;
SIGNAL \CVSET|P_S|data_out~2_combout\ : std_logic;
SIGNAL \ParallelIN[4]~input_o\ : std_logic;
SIGNAL \ParallelIN[3]~input_o\ : std_logic;
SIGNAL \CVSET|P_S|data_out~3_combout\ : std_logic;
SIGNAL \ParallelIN[0]~input_o\ : std_logic;
SIGNAL \ParallelIN[7]~input_o\ : std_logic;
SIGNAL \CVSET|P_S|data_out~4_combout\ : std_logic;
SIGNAL \CVSET|P_S|data_out~5_combout\ : std_logic;
SIGNAL \CVSET|P_S|data_out~6_combout\ : std_logic;
SIGNAL \CVSET|P_S|data_out~q\ : std_logic;
SIGNAL \SerialIn~input_o\ : std_logic;
SIGNAL \CVSET|S_P|Add0~0_combout\ : std_logic;
SIGNAL \CVSET|S_P|Add0~2_combout\ : std_logic;
SIGNAL \CVSET|S_P|Equal1~0_combout\ : std_logic;
SIGNAL \CVSET|S_P|cont~0_combout\ : std_logic;
SIGNAL \CVSET|S_P|start_enable~0_combout\ : std_logic;
SIGNAL \CVSET|S_P|start_enable~1_combout\ : std_logic;
SIGNAL \CVSET|S_P|start_enable~2_combout\ : std_logic;
SIGNAL \CVSET|S_P|start_enable~q\ : std_logic;
SIGNAL \CVSET|S_P|Add0~1_combout\ : std_logic;
SIGNAL \CVSET|S_P|Decoder0~0_combout\ : std_logic;
SIGNAL \CVSET|S_P|data[7]~0_combout\ : std_logic;
SIGNAL \CVSET|S_P|Decoder0~1_combout\ : std_logic;
SIGNAL \CVSET|S_P|data[6]~1_combout\ : std_logic;
SIGNAL \CVSET|S_P|Decoder0~2_combout\ : std_logic;
SIGNAL \CVSET|S_P|data[5]~2_combout\ : std_logic;
SIGNAL \CVSET|S_P|Decoder0~3_combout\ : std_logic;
SIGNAL \CVSET|S_P|data[4]~3_combout\ : std_logic;
SIGNAL \CVSET|S_P|Decoder0~4_combout\ : std_logic;
SIGNAL \CVSET|S_P|data[3]~4_combout\ : std_logic;
SIGNAL \CVSET|S_P|Decoder0~5_combout\ : std_logic;
SIGNAL \CVSET|S_P|data[2]~5_combout\ : std_logic;
SIGNAL \CVSET|S_P|Decoder0~6_combout\ : std_logic;
SIGNAL \CVSET|S_P|data[1]~6_combout\ : std_logic;
SIGNAL \CVSET|S_P|Decoder0~7_combout\ : std_logic;
SIGNAL \CVSET|S_P|data[0]~7_combout\ : std_logic;
SIGNAL \CVSET|S_P|data\ : std_logic_vector(0 TO 7);
SIGNAL \CVSET|P_S|control\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CVSET|S_P|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_gen|P1|G1:14:T|ALT_INV_S2~reg0clkctrl_outclk\ : std_logic;
SIGNAL \clk_gen|P1|G1:15:T|ALT_INV_S2~reg0clkctrl_outclk\ : std_logic;
SIGNAL \clk_gen|P1|G1:16:T|ALT_INV_S2~reg0clkctrl_outclk\ : std_logic;
SIGNAL \clk_gen|P1|G1:12:T|ALT_INV_S2~reg0clkctrl_outclk\ : std_logic;
SIGNAL \clk_gen|P1|G1:13:T|ALT_INV_S2~reg0clkctrl_outclk\ : std_logic;
SIGNAL \clk_gen|P1|G1:0:T|ALT_INV_S2~reg0clkctrl_outclk\ : std_logic;
SIGNAL \clk_gen|P1|G1:10:T|ALT_INV_S2~reg0clkctrl_outclk\ : std_logic;
SIGNAL \clk_gen|P1|G1:11:T|ALT_INV_S2~reg0clkctrl_outclk\ : std_logic;
SIGNAL \clk_gen|P1|G1:8:T|ALT_INV_S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:2:T|ALT_INV_S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:3:T|ALT_INV_S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:1:T|ALT_INV_S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|T|ALT_INV_S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:9:T|ALT_INV_S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:7:T|ALT_INV_S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:6:T|ALT_INV_S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:5:T|ALT_INV_S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:4:T|ALT_INV_S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:25:T|ALT_INV_S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:24:T|ALT_INV_S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:23:T|ALT_INV_S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:22:T|ALT_INV_S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:21:T|ALT_INV_S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:20:T|ALT_INV_S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:19:T|ALT_INV_S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:18:T|ALT_INV_S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:17:T|ALT_INV_S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:29:T|ALT_INV_S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:28:T|ALT_INV_S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P1|G1:27:T|ALT_INV_S2~reg0_q\ : std_logic;
SIGNAL \clk_gen|P2|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \clk_gen|P1|G1:26:T|ALT_INV_S2~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_SerialIn <= SerialIn;
ww_ParallelIN <= ParallelIN;
SerialOut <= ww_SerialOut;
ww_TX <= TX;
ParallelOut <= ww_ParallelOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_gen|P1|G1:11:T|S2~reg0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_gen|P1|G1:11:T|S2~reg0_q\);

\clk_gen|P3|OUTPUT~reg0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_gen|P3|OUTPUT~reg0_q\);

\clk_gen|P1|G1:10:T|S2~reg0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_gen|P1|G1:10:T|S2~reg0_q\);

\clk_gen|P1|G1:0:T|S2~reg0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_gen|P1|G1:0:T|S2~reg0_q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\clk_gen|P1|G1:13:T|S2~reg0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_gen|P1|G1:13:T|S2~reg0_q\);

\clk_gen|P1|G1:12:T|S2~reg0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_gen|P1|G1:12:T|S2~reg0_q\);

\clk_gen|P1|G1:16:T|S2~reg0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_gen|P1|G1:16:T|S2~reg0_q\);

\clk_gen|P1|G1:15:T|S2~reg0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_gen|P1|G1:15:T|S2~reg0_q\);

\clk_gen|P1|G1:14:T|S2~reg0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_gen|P1|G1:14:T|S2~reg0_q\);
\clk_gen|P1|G1:14:T|ALT_INV_S2~reg0clkctrl_outclk\ <= NOT \clk_gen|P1|G1:14:T|S2~reg0clkctrl_outclk\;
\clk_gen|P1|G1:15:T|ALT_INV_S2~reg0clkctrl_outclk\ <= NOT \clk_gen|P1|G1:15:T|S2~reg0clkctrl_outclk\;
\clk_gen|P1|G1:16:T|ALT_INV_S2~reg0clkctrl_outclk\ <= NOT \clk_gen|P1|G1:16:T|S2~reg0clkctrl_outclk\;
\clk_gen|P1|G1:12:T|ALT_INV_S2~reg0clkctrl_outclk\ <= NOT \clk_gen|P1|G1:12:T|S2~reg0clkctrl_outclk\;
\clk_gen|P1|G1:13:T|ALT_INV_S2~reg0clkctrl_outclk\ <= NOT \clk_gen|P1|G1:13:T|S2~reg0clkctrl_outclk\;
\clk_gen|P1|G1:0:T|ALT_INV_S2~reg0clkctrl_outclk\ <= NOT \clk_gen|P1|G1:0:T|S2~reg0clkctrl_outclk\;
\clk_gen|P1|G1:10:T|ALT_INV_S2~reg0clkctrl_outclk\ <= NOT \clk_gen|P1|G1:10:T|S2~reg0clkctrl_outclk\;
\clk_gen|P1|G1:11:T|ALT_INV_S2~reg0clkctrl_outclk\ <= NOT \clk_gen|P1|G1:11:T|S2~reg0clkctrl_outclk\;
\clk_gen|P1|G1:8:T|ALT_INV_S2~reg0_q\ <= NOT \clk_gen|P1|G1:8:T|S2~reg0_q\;
\clk_gen|P1|G1:2:T|ALT_INV_S2~reg0_q\ <= NOT \clk_gen|P1|G1:2:T|S2~reg0_q\;
\clk_gen|P1|G1:3:T|ALT_INV_S2~reg0_q\ <= NOT \clk_gen|P1|G1:3:T|S2~reg0_q\;
\clk_gen|P1|G1:1:T|ALT_INV_S2~reg0_q\ <= NOT \clk_gen|P1|G1:1:T|S2~reg0_q\;
\clk_gen|P1|T|ALT_INV_S2~reg0_q\ <= NOT \clk_gen|P1|T|S2~reg0_q\;
\clk_gen|P1|G1:9:T|ALT_INV_S2~reg0_q\ <= NOT \clk_gen|P1|G1:9:T|S2~reg0_q\;
\clk_gen|P1|G1:7:T|ALT_INV_S2~reg0_q\ <= NOT \clk_gen|P1|G1:7:T|S2~reg0_q\;
\clk_gen|P1|G1:6:T|ALT_INV_S2~reg0_q\ <= NOT \clk_gen|P1|G1:6:T|S2~reg0_q\;
\clk_gen|P1|G1:5:T|ALT_INV_S2~reg0_q\ <= NOT \clk_gen|P1|G1:5:T|S2~reg0_q\;
\clk_gen|P1|G1:4:T|ALT_INV_S2~reg0_q\ <= NOT \clk_gen|P1|G1:4:T|S2~reg0_q\;
\clk_gen|P1|G1:25:T|ALT_INV_S2~reg0_q\ <= NOT \clk_gen|P1|G1:25:T|S2~reg0_q\;
\clk_gen|P1|G1:24:T|ALT_INV_S2~reg0_q\ <= NOT \clk_gen|P1|G1:24:T|S2~reg0_q\;
\clk_gen|P1|G1:23:T|ALT_INV_S2~reg0_q\ <= NOT \clk_gen|P1|G1:23:T|S2~reg0_q\;
\clk_gen|P1|G1:22:T|ALT_INV_S2~reg0_q\ <= NOT \clk_gen|P1|G1:22:T|S2~reg0_q\;
\clk_gen|P1|G1:21:T|ALT_INV_S2~reg0_q\ <= NOT \clk_gen|P1|G1:21:T|S2~reg0_q\;
\clk_gen|P1|G1:20:T|ALT_INV_S2~reg0_q\ <= NOT \clk_gen|P1|G1:20:T|S2~reg0_q\;
\clk_gen|P1|G1:19:T|ALT_INV_S2~reg0_q\ <= NOT \clk_gen|P1|G1:19:T|S2~reg0_q\;
\clk_gen|P1|G1:18:T|ALT_INV_S2~reg0_q\ <= NOT \clk_gen|P1|G1:18:T|S2~reg0_q\;
\clk_gen|P1|G1:17:T|ALT_INV_S2~reg0_q\ <= NOT \clk_gen|P1|G1:17:T|S2~reg0_q\;
\clk_gen|P1|G1:29:T|ALT_INV_S2~reg0_q\ <= NOT \clk_gen|P1|G1:29:T|S2~reg0_q\;
\clk_gen|P1|G1:28:T|ALT_INV_S2~reg0_q\ <= NOT \clk_gen|P1|G1:28:T|S2~reg0_q\;
\clk_gen|P1|G1:27:T|ALT_INV_S2~reg0_q\ <= NOT \clk_gen|P1|G1:27:T|S2~reg0_q\;
\clk_gen|P2|ALT_INV_LessThan0~2_combout\ <= NOT \clk_gen|P2|LessThan0~2_combout\;
\clk_gen|P1|G1:26:T|ALT_INV_S2~reg0_q\ <= NOT \clk_gen|P1|G1:26:T|S2~reg0_q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X32_Y0_N9
\SerialOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CVSET|P_S|data_out~q\,
	devoe => ww_devoe,
	o => \SerialOut~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\ParallelOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CVSET|S_P|data\(7),
	devoe => ww_devoe,
	o => \ParallelOut[7]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\ParallelOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CVSET|S_P|data\(6),
	devoe => ww_devoe,
	o => \ParallelOut[6]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\ParallelOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CVSET|S_P|data\(5),
	devoe => ww_devoe,
	o => \ParallelOut[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\ParallelOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CVSET|S_P|data\(4),
	devoe => ww_devoe,
	o => \ParallelOut[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\ParallelOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CVSET|S_P|data\(3),
	devoe => ww_devoe,
	o => \ParallelOut[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\ParallelOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CVSET|S_P|data\(2),
	devoe => ww_devoe,
	o => \ParallelOut[2]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\ParallelOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CVSET|S_P|data\(1),
	devoe => ww_devoe,
	o => \ParallelOut[1]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\ParallelOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CVSET|S_P|data\(0),
	devoe => ww_devoe,
	o => \ParallelOut[0]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X24_Y11_N20
\clk_gen|P1|T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|T|S2~0_combout\ = !\clk_gen|P1|T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_gen|P1|T|S2~reg0_q\,
	combout => \clk_gen|P1|T|S2~0_combout\);

-- Location: LCCOMB_X24_Y11_N24
\clk_gen|P1|T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|T|S2~reg0feeder_combout\ = \clk_gen|P1|T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|T|S2~0_combout\,
	combout => \clk_gen|P1|T|S2~reg0feeder_combout\);

-- Location: LCCOMB_X24_Y13_N16
\clk_gen|P1|G1:23:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:23:T|S2~0_combout\ = !\clk_gen|P1|G1:23:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:23:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:23:T|S2~0_combout\);

-- Location: LCCOMB_X24_Y13_N14
\clk_gen|P1|G1:23:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:23:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:23:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:23:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:23:T|S2~reg0feeder_combout\);

-- Location: FF_X24_Y13_N15
\clk_gen|P1|G1:23:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:22:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:23:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:23:T|S2~reg0_q\);

-- Location: LCCOMB_X25_Y13_N22
\clk_gen|P1|G1:24:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:24:T|S2~0_combout\ = !\clk_gen|P1|G1:24:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:24:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:24:T|S2~0_combout\);

-- Location: LCCOMB_X25_Y13_N20
\clk_gen|P1|G1:24:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:24:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:24:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:24:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:24:T|S2~reg0feeder_combout\);

-- Location: FF_X25_Y13_N21
\clk_gen|P1|G1:24:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:23:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:24:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:24:T|S2~reg0_q\);

-- Location: LCCOMB_X25_Y13_N4
\clk_gen|P1|G1:25:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:25:T|S2~0_combout\ = !\clk_gen|P1|G1:25:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_gen|P1|G1:25:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:25:T|S2~0_combout\);

-- Location: LCCOMB_X25_Y13_N10
\clk_gen|P1|G1:25:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:25:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:25:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:25:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:25:T|S2~reg0feeder_combout\);

-- Location: FF_X25_Y13_N11
\clk_gen|P1|G1:25:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:24:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:25:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:25:T|S2~reg0_q\);

-- Location: LCCOMB_X29_Y11_N28
\clk_gen|P1|G1:26:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:26:T|S2~0_combout\ = !\clk_gen|P1|G1:26:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:26:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:26:T|S2~0_combout\);

-- Location: LCCOMB_X29_Y11_N30
\clk_gen|P1|G1:26:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:26:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:26:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:26:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:26:T|S2~reg0feeder_combout\);

-- Location: FF_X29_Y11_N31
\clk_gen|P1|G1:26:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:25:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:26:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:26:T|S2~reg0_q\);

-- Location: LCCOMB_X29_Y11_N14
\clk_gen|P1|G1:27:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:27:T|S2~0_combout\ = !\clk_gen|P1|G1:27:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:27:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:27:T|S2~0_combout\);

-- Location: LCCOMB_X29_Y11_N6
\clk_gen|P1|G1:27:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:27:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:27:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:27:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:27:T|S2~reg0feeder_combout\);

-- Location: FF_X29_Y11_N7
\clk_gen|P1|G1:27:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:26:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:27:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:27:T|S2~reg0_q\);

-- Location: LCCOMB_X28_Y11_N18
\clk_gen|P1|G1:28:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:28:T|S2~0_combout\ = !\clk_gen|P1|G1:28:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:28:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:28:T|S2~0_combout\);

-- Location: LCCOMB_X28_Y11_N26
\clk_gen|P1|G1:28:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:28:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:28:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:28:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:28:T|S2~reg0feeder_combout\);

-- Location: FF_X28_Y11_N27
\clk_gen|P1|G1:28:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:27:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:28:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:28:T|S2~reg0_q\);

-- Location: LCCOMB_X28_Y11_N8
\clk_gen|P1|G1:29:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:29:T|S1~0_combout\ = !\clk_gen|P1|G1:29:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:29:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:29:T|S1~0_combout\);

-- Location: FF_X28_Y11_N9
\clk_gen|P1|G1:29:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:28:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:29:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:29:T|S1~reg0_q\);

-- Location: LCCOMB_X28_Y11_N10
\clk_gen|P1|G1:29:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:29:T|S2~0_combout\ = !\clk_gen|P1|G1:29:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_gen|P1|G1:29:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:29:T|S2~0_combout\);

-- Location: LCCOMB_X28_Y11_N2
\clk_gen|P1|G1:29:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:29:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:29:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_gen|P1|G1:29:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:29:T|S2~reg0feeder_combout\);

-- Location: FF_X28_Y11_N3
\clk_gen|P1|G1:29:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:28:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:29:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:29:T|S2~reg0_q\);

-- Location: LCCOMB_X24_Y11_N2
\clk_gen|P1|G1:30:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:30:T|S1~0_combout\ = !\clk_gen|P1|G1:30:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:30:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:30:T|S1~0_combout\);

-- Location: FF_X24_Y11_N3
\clk_gen|P1|G1:30:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:29:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:30:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:30:T|S1~reg0_q\);

-- Location: LCCOMB_X29_Y11_N24
\clk_gen|P1|G1:27:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:27:T|S1~0_combout\ = !\clk_gen|P1|G1:27:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:27:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:27:T|S1~0_combout\);

-- Location: FF_X29_Y11_N25
\clk_gen|P1|G1:27:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:26:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:27:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:27:T|S1~reg0_q\);

-- Location: LCCOMB_X28_Y11_N14
\clk_gen|P1|G1:28:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:28:T|S1~0_combout\ = !\clk_gen|P1|G1:28:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:28:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:28:T|S1~0_combout\);

-- Location: FF_X28_Y11_N15
\clk_gen|P1|G1:28:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:27:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:28:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:28:T|S1~reg0_q\);

-- Location: LCCOMB_X24_Y11_N0
\clk_gen|P2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P2|Equal0~0_combout\ = (!\clk_gen|P1|G1:29:T|S1~reg0_q\ & (!\clk_gen|P1|G1:30:T|S1~reg0_q\ & (!\clk_gen|P1|G1:27:T|S1~reg0_q\ & !\clk_gen|P1|G1:28:T|S1~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:29:T|S1~reg0_q\,
	datab => \clk_gen|P1|G1:30:T|S1~reg0_q\,
	datac => \clk_gen|P1|G1:27:T|S1~reg0_q\,
	datad => \clk_gen|P1|G1:28:T|S1~reg0_q\,
	combout => \clk_gen|P2|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y11_N10
\clk_gen|P1|G1:9:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:9:T|S1~0_combout\ = !\clk_gen|P1|G1:9:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:9:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:9:T|S1~0_combout\);

-- Location: FF_X19_Y11_N11
\clk_gen|P1|G1:9:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:8:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:9:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:9:T|S1~reg0_q\);

-- Location: LCCOMB_X25_Y10_N0
\clk_gen|P1|G1:3:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:3:T|S1~0_combout\ = !\clk_gen|P1|G1:3:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:3:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:3:T|S1~0_combout\);

-- Location: FF_X25_Y10_N1
\clk_gen|P1|G1:3:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:2:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:3:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:3:T|S1~reg0_q\);

-- Location: LCCOMB_X25_Y11_N0
\clk_gen|P1|G1:4:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:4:T|S1~0_combout\ = !\clk_gen|P1|G1:4:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:4:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:4:T|S1~0_combout\);

-- Location: FF_X25_Y11_N1
\clk_gen|P1|G1:4:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:3:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:4:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:4:T|S1~reg0_q\);

-- Location: LCCOMB_X24_Y10_N2
\clk_gen|P1|G1:2:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:2:T|S1~0_combout\ = !\clk_gen|P1|G1:2:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:2:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:2:T|S1~0_combout\);

-- Location: FF_X24_Y10_N3
\clk_gen|P1|G1:2:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:1:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:2:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:2:T|S1~reg0_q\);

-- Location: LCCOMB_X24_Y10_N0
\clk_gen|P1|G1:1:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:1:T|S1~0_combout\ = !\clk_gen|P1|G1:1:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:1:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:1:T|S1~0_combout\);

-- Location: FF_X24_Y10_N1
\clk_gen|P1|G1:1:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:0:T|ALT_INV_S2~reg0clkctrl_outclk\,
	d => \clk_gen|P1|G1:1:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:1:T|S1~reg0_q\);

-- Location: LCCOMB_X24_Y11_N28
\clk_gen|P2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P2|LessThan0~0_combout\ = (\clk_gen|P1|G1:4:T|S1~reg0_q\ & ((\clk_gen|P1|G1:3:T|S1~reg0_q\) # ((\clk_gen|P1|G1:2:T|S1~reg0_q\ & \clk_gen|P1|G1:1:T|S1~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:3:T|S1~reg0_q\,
	datab => \clk_gen|P1|G1:4:T|S1~reg0_q\,
	datac => \clk_gen|P1|G1:2:T|S1~reg0_q\,
	datad => \clk_gen|P1|G1:1:T|S1~reg0_q\,
	combout => \clk_gen|P2|LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y11_N24
\clk_gen|P1|G1:7:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:7:T|S1~0_combout\ = !\clk_gen|P1|G1:7:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:7:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:7:T|S1~0_combout\);

-- Location: FF_X26_Y11_N25
\clk_gen|P1|G1:7:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:6:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:7:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:7:T|S1~reg0_q\);

-- Location: LCCOMB_X25_Y11_N8
\clk_gen|P1|G1:5:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:5:T|S1~0_combout\ = !\clk_gen|P1|G1:5:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:5:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:5:T|S1~0_combout\);

-- Location: FF_X25_Y11_N9
\clk_gen|P1|G1:5:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:4:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:5:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:5:T|S1~reg0_q\);

-- Location: LCCOMB_X26_Y11_N28
\clk_gen|P1|G1:6:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:6:T|S1~0_combout\ = !\clk_gen|P1|G1:6:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:6:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:6:T|S1~0_combout\);

-- Location: FF_X26_Y11_N29
\clk_gen|P1|G1:6:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:5:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:6:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:6:T|S1~reg0_q\);

-- Location: LCCOMB_X24_Y11_N8
\clk_gen|P2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P2|Equal0~6_combout\ = (!\clk_gen|P1|G1:7:T|S1~reg0_q\ & (!\clk_gen|P1|G1:5:T|S1~reg0_q\ & !\clk_gen|P1|G1:6:T|S1~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:7:T|S1~reg0_q\,
	datac => \clk_gen|P1|G1:5:T|S1~reg0_q\,
	datad => \clk_gen|P1|G1:6:T|S1~reg0_q\,
	combout => \clk_gen|P2|Equal0~6_combout\);

-- Location: LCCOMB_X19_Y11_N16
\clk_gen|P1|G1:8:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:8:T|S1~0_combout\ = !\clk_gen|P1|G1:8:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:8:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:8:T|S1~0_combout\);

-- Location: FF_X19_Y11_N17
\clk_gen|P1|G1:8:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:7:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:8:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:8:T|S1~reg0_q\);

-- Location: LCCOMB_X24_Y11_N12
\clk_gen|P2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P2|LessThan0~1_combout\ = (\clk_gen|P1|G1:9:T|S1~reg0_q\) # ((\clk_gen|P1|G1:8:T|S1~reg0_q\ & ((\clk_gen|P2|LessThan0~0_combout\) # (!\clk_gen|P2|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:9:T|S1~reg0_q\,
	datab => \clk_gen|P2|LessThan0~0_combout\,
	datac => \clk_gen|P2|Equal0~6_combout\,
	datad => \clk_gen|P1|G1:8:T|S1~reg0_q\,
	combout => \clk_gen|P2|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y12_N28
\clk_gen|P1|G1:10:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:10:T|S1~0_combout\ = !\clk_gen|P1|G1:10:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:10:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:10:T|S1~0_combout\);

-- Location: FF_X23_Y12_N29
\clk_gen|P1|G1:10:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:9:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:10:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:10:T|S1~reg0_q\);

-- Location: LCCOMB_X24_Y11_N30
\clk_gen|P2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P2|LessThan0~2_combout\ = (((\clk_gen|P2|LessThan0~1_combout\ & \clk_gen|P1|G1:10:T|S1~reg0_q\)) # (!\clk_gen|P2|Equal0~5_combout\)) # (!\clk_gen|P2|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P2|Equal0~0_combout\,
	datab => \clk_gen|P2|LessThan0~1_combout\,
	datac => \clk_gen|P1|G1:10:T|S1~reg0_q\,
	datad => \clk_gen|P2|Equal0~5_combout\,
	combout => \clk_gen|P2|LessThan0~2_combout\);

-- Location: FF_X24_Y11_N25
\clk_gen|P1|T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_gen|P1|T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|T|S2~reg0_q\);

-- Location: LCCOMB_X30_Y11_N18
\clk_gen|P1|G1:0:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:0:T|S2~0_combout\ = !\clk_gen|P1|G1:0:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:0:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:0:T|S2~0_combout\);

-- Location: LCCOMB_X30_Y11_N20
\clk_gen|P1|G1:0:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:0:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:0:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:0:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:0:T|S2~reg0feeder_combout\);

-- Location: FF_X30_Y11_N21
\clk_gen|P1|G1:0:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:0:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:0:T|S2~reg0_q\);

-- Location: CLKCTRL_G9
\clk_gen|P1|G1:0:T|S2~reg0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_gen|P1|G1:0:T|S2~reg0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_gen|P1|G1:0:T|S2~reg0clkctrl_outclk\);

-- Location: LCCOMB_X24_Y10_N30
\clk_gen|P1|G1:1:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:1:T|S2~0_combout\ = !\clk_gen|P1|G1:1:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_gen|P1|G1:1:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:1:T|S2~0_combout\);

-- Location: LCCOMB_X24_Y10_N6
\clk_gen|P1|G1:1:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:1:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:1:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:1:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:1:T|S2~reg0feeder_combout\);

-- Location: FF_X24_Y10_N7
\clk_gen|P1|G1:1:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:0:T|ALT_INV_S2~reg0clkctrl_outclk\,
	d => \clk_gen|P1|G1:1:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:1:T|S2~reg0_q\);

-- Location: LCCOMB_X25_Y10_N24
\clk_gen|P1|G1:2:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:2:T|S2~0_combout\ = !\clk_gen|P1|G1:2:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:2:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:2:T|S2~0_combout\);

-- Location: LCCOMB_X25_Y10_N26
\clk_gen|P1|G1:2:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:2:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:2:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:2:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:2:T|S2~reg0feeder_combout\);

-- Location: FF_X25_Y10_N27
\clk_gen|P1|G1:2:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:1:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:2:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:2:T|S2~reg0_q\);

-- Location: LCCOMB_X25_Y10_N16
\clk_gen|P1|G1:3:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:3:T|S2~0_combout\ = !\clk_gen|P1|G1:3:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_gen|P1|G1:3:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:3:T|S2~0_combout\);

-- Location: LCCOMB_X25_Y10_N30
\clk_gen|P1|G1:3:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:3:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:3:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:3:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:3:T|S2~reg0feeder_combout\);

-- Location: FF_X25_Y10_N31
\clk_gen|P1|G1:3:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:2:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:3:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:3:T|S2~reg0_q\);

-- Location: LCCOMB_X25_Y11_N24
\clk_gen|P1|G1:4:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:4:T|S2~0_combout\ = !\clk_gen|P1|G1:4:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:4:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:4:T|S2~0_combout\);

-- Location: FF_X25_Y11_N11
\clk_gen|P1|G1:4:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:3:T|ALT_INV_S2~reg0_q\,
	asdata => \clk_gen|P1|G1:4:T|S2~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:4:T|S2~reg0_q\);

-- Location: LCCOMB_X25_Y11_N26
\clk_gen|P1|G1:5:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:5:T|S2~0_combout\ = !\clk_gen|P1|G1:5:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:5:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:5:T|S2~0_combout\);

-- Location: LCCOMB_X25_Y11_N16
\clk_gen|P1|G1:5:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:5:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:5:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_gen|P1|G1:5:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:5:T|S2~reg0feeder_combout\);

-- Location: FF_X25_Y11_N17
\clk_gen|P1|G1:5:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:4:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:5:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:5:T|S2~reg0_q\);

-- Location: LCCOMB_X26_Y11_N26
\clk_gen|P1|G1:6:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:6:T|S2~0_combout\ = !\clk_gen|P1|G1:6:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:6:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:6:T|S2~0_combout\);

-- Location: LCCOMB_X26_Y11_N12
\clk_gen|P1|G1:6:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:6:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:6:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen|P1|G1:6:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:6:T|S2~reg0feeder_combout\);

-- Location: FF_X26_Y11_N13
\clk_gen|P1|G1:6:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:5:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:6:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:6:T|S2~reg0_q\);

-- Location: LCCOMB_X26_Y11_N30
\clk_gen|P1|G1:7:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:7:T|S2~0_combout\ = !\clk_gen|P1|G1:7:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_gen|P1|G1:7:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:7:T|S2~0_combout\);

-- Location: LCCOMB_X26_Y11_N2
\clk_gen|P1|G1:7:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:7:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:7:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_gen|P1|G1:7:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:7:T|S2~reg0feeder_combout\);

-- Location: FF_X26_Y11_N3
\clk_gen|P1|G1:7:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:6:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:7:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:7:T|S2~reg0_q\);

-- Location: LCCOMB_X19_Y11_N22
\clk_gen|P1|G1:8:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:8:T|S2~0_combout\ = !\clk_gen|P1|G1:8:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:8:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:8:T|S2~0_combout\);

-- Location: LCCOMB_X19_Y11_N24
\clk_gen|P1|G1:8:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:8:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:8:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen|P1|G1:8:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:8:T|S2~reg0feeder_combout\);

-- Location: FF_X19_Y11_N25
\clk_gen|P1|G1:8:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:7:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:8:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:8:T|S2~reg0_q\);

-- Location: LCCOMB_X19_Y11_N20
\clk_gen|P1|G1:9:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:9:T|S2~0_combout\ = !\clk_gen|P1|G1:9:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_gen|P1|G1:9:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:9:T|S2~0_combout\);

-- Location: LCCOMB_X19_Y11_N6
\clk_gen|P1|G1:9:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:9:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:9:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:9:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:9:T|S2~reg0feeder_combout\);

-- Location: FF_X19_Y11_N7
\clk_gen|P1|G1:9:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:8:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:9:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:9:T|S2~reg0_q\);

-- Location: LCCOMB_X23_Y12_N14
\clk_gen|P1|G1:10:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:10:T|S2~0_combout\ = !\clk_gen|P1|G1:10:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_gen|P1|G1:10:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:10:T|S2~0_combout\);

-- Location: LCCOMB_X23_Y12_N16
\clk_gen|P1|G1:10:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:10:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:10:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_gen|P1|G1:10:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:10:T|S2~reg0feeder_combout\);

-- Location: FF_X23_Y12_N17
\clk_gen|P1|G1:10:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:9:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:10:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:10:T|S2~reg0_q\);

-- Location: CLKCTRL_G7
\clk_gen|P1|G1:10:T|S2~reg0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_gen|P1|G1:10:T|S2~reg0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_gen|P1|G1:10:T|S2~reg0clkctrl_outclk\);

-- Location: LCCOMB_X23_Y11_N14
\clk_gen|P1|G1:11:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:11:T|S2~0_combout\ = !\clk_gen|P1|G1:11:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_gen|P1|G1:11:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:11:T|S2~0_combout\);

-- Location: LCCOMB_X23_Y11_N4
\clk_gen|P1|G1:11:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:11:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:11:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:11:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:11:T|S2~reg0feeder_combout\);

-- Location: FF_X23_Y11_N5
\clk_gen|P1|G1:11:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:10:T|ALT_INV_S2~reg0clkctrl_outclk\,
	d => \clk_gen|P1|G1:11:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:11:T|S2~reg0_q\);

-- Location: CLKCTRL_G0
\clk_gen|P1|G1:11:T|S2~reg0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_gen|P1|G1:11:T|S2~reg0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_gen|P1|G1:11:T|S2~reg0clkctrl_outclk\);

-- Location: LCCOMB_X23_Y9_N30
\clk_gen|P1|G1:12:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:12:T|S2~0_combout\ = !\clk_gen|P1|G1:12:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen|P1|G1:12:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:12:T|S2~0_combout\);

-- Location: LCCOMB_X23_Y9_N28
\clk_gen|P1|G1:12:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:12:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:12:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_gen|P1|G1:12:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:12:T|S2~reg0feeder_combout\);

-- Location: FF_X23_Y9_N29
\clk_gen|P1|G1:12:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:11:T|ALT_INV_S2~reg0clkctrl_outclk\,
	d => \clk_gen|P1|G1:12:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:12:T|S2~reg0_q\);

-- Location: CLKCTRL_G6
\clk_gen|P1|G1:12:T|S2~reg0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_gen|P1|G1:12:T|S2~reg0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_gen|P1|G1:12:T|S2~reg0clkctrl_outclk\);

-- Location: LCCOMB_X23_Y11_N10
\clk_gen|P1|G1:13:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:13:T|S2~0_combout\ = !\clk_gen|P1|G1:13:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:13:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:13:T|S2~0_combout\);

-- Location: LCCOMB_X23_Y11_N16
\clk_gen|P1|G1:13:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:13:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:13:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:13:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:13:T|S2~reg0feeder_combout\);

-- Location: FF_X23_Y11_N17
\clk_gen|P1|G1:13:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:12:T|ALT_INV_S2~reg0clkctrl_outclk\,
	d => \clk_gen|P1|G1:13:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:13:T|S2~reg0_q\);

-- Location: CLKCTRL_G1
\clk_gen|P1|G1:13:T|S2~reg0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_gen|P1|G1:13:T|S2~reg0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_gen|P1|G1:13:T|S2~reg0clkctrl_outclk\);

-- Location: LCCOMB_X23_Y10_N18
\clk_gen|P1|G1:14:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:14:T|S2~0_combout\ = !\clk_gen|P1|G1:14:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:14:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:14:T|S2~0_combout\);

-- Location: LCCOMB_X23_Y10_N6
\clk_gen|P1|G1:14:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:14:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:14:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_gen|P1|G1:14:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:14:T|S2~reg0feeder_combout\);

-- Location: FF_X23_Y10_N7
\clk_gen|P1|G1:14:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:13:T|ALT_INV_S2~reg0clkctrl_outclk\,
	d => \clk_gen|P1|G1:14:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:14:T|S2~reg0_q\);

-- Location: CLKCTRL_G8
\clk_gen|P1|G1:14:T|S2~reg0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_gen|P1|G1:14:T|S2~reg0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_gen|P1|G1:14:T|S2~reg0clkctrl_outclk\);

-- Location: LCCOMB_X22_Y11_N30
\clk_gen|P1|G1:15:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:15:T|S2~0_combout\ = !\clk_gen|P1|G1:15:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:15:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:15:T|S2~0_combout\);

-- Location: LCCOMB_X22_Y11_N2
\clk_gen|P1|G1:15:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:15:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:15:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_gen|P1|G1:15:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:15:T|S2~reg0feeder_combout\);

-- Location: FF_X22_Y11_N3
\clk_gen|P1|G1:15:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:14:T|ALT_INV_S2~reg0clkctrl_outclk\,
	d => \clk_gen|P1|G1:15:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:15:T|S2~reg0_q\);

-- Location: CLKCTRL_G4
\clk_gen|P1|G1:15:T|S2~reg0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_gen|P1|G1:15:T|S2~reg0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_gen|P1|G1:15:T|S2~reg0clkctrl_outclk\);

-- Location: LCCOMB_X22_Y11_N18
\clk_gen|P1|G1:16:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:16:T|S2~0_combout\ = !\clk_gen|P1|G1:16:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:16:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:16:T|S2~0_combout\);

-- Location: LCCOMB_X22_Y11_N24
\clk_gen|P1|G1:16:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:16:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:16:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:16:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:16:T|S2~reg0feeder_combout\);

-- Location: FF_X22_Y11_N25
\clk_gen|P1|G1:16:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:15:T|ALT_INV_S2~reg0clkctrl_outclk\,
	d => \clk_gen|P1|G1:16:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:16:T|S2~reg0_q\);

-- Location: CLKCTRL_G3
\clk_gen|P1|G1:16:T|S2~reg0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_gen|P1|G1:16:T|S2~reg0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_gen|P1|G1:16:T|S2~reg0clkctrl_outclk\);

-- Location: LCCOMB_X21_Y11_N18
\clk_gen|P1|G1:17:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:17:T|S2~0_combout\ = !\clk_gen|P1|G1:17:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:17:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:17:T|S2~0_combout\);

-- Location: LCCOMB_X21_Y11_N30
\clk_gen|P1|G1:17:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:17:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:17:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:17:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:17:T|S2~reg0feeder_combout\);

-- Location: FF_X21_Y11_N31
\clk_gen|P1|G1:17:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:16:T|ALT_INV_S2~reg0clkctrl_outclk\,
	d => \clk_gen|P1|G1:17:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:17:T|S2~reg0_q\);

-- Location: LCCOMB_X21_Y11_N10
\clk_gen|P1|G1:18:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:18:T|S2~0_combout\ = !\clk_gen|P1|G1:18:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:18:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:18:T|S2~0_combout\);

-- Location: LCCOMB_X21_Y11_N20
\clk_gen|P1|G1:18:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:18:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:18:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_gen|P1|G1:18:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:18:T|S2~reg0feeder_combout\);

-- Location: FF_X21_Y11_N21
\clk_gen|P1|G1:18:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:17:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:18:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:18:T|S2~reg0_q\);

-- Location: LCCOMB_X25_Y12_N12
\clk_gen|P1|G1:19:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:19:T|S2~0_combout\ = !\clk_gen|P1|G1:19:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:19:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:19:T|S2~0_combout\);

-- Location: LCCOMB_X25_Y12_N22
\clk_gen|P1|G1:19:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:19:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:19:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:19:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:19:T|S2~reg0feeder_combout\);

-- Location: FF_X25_Y12_N23
\clk_gen|P1|G1:19:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:18:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:19:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:19:T|S2~reg0_q\);

-- Location: LCCOMB_X25_Y12_N8
\clk_gen|P1|G1:20:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:20:T|S2~0_combout\ = !\clk_gen|P1|G1:20:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_gen|P1|G1:20:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:20:T|S2~0_combout\);

-- Location: LCCOMB_X25_Y12_N6
\clk_gen|P1|G1:20:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:20:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:20:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:20:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:20:T|S2~reg0feeder_combout\);

-- Location: FF_X25_Y12_N7
\clk_gen|P1|G1:20:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:19:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:20:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:20:T|S2~reg0_q\);

-- Location: LCCOMB_X24_Y12_N18
\clk_gen|P1|G1:21:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:21:T|S2~0_combout\ = !\clk_gen|P1|G1:21:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:21:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:21:T|S2~0_combout\);

-- Location: LCCOMB_X24_Y12_N0
\clk_gen|P1|G1:21:T|S2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:21:T|S2~reg0feeder_combout\ = \clk_gen|P1|G1:21:T|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:21:T|S2~0_combout\,
	combout => \clk_gen|P1|G1:21:T|S2~reg0feeder_combout\);

-- Location: FF_X24_Y12_N1
\clk_gen|P1|G1:21:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:20:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:21:T|S2~reg0feeder_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:21:T|S2~reg0_q\);

-- Location: LCCOMB_X24_Y13_N30
\clk_gen|P1|G1:22:T|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:22:T|S2~0_combout\ = !\clk_gen|P1|G1:22:T|S2~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:22:T|S2~reg0_q\,
	combout => \clk_gen|P1|G1:22:T|S2~0_combout\);

-- Location: FF_X24_Y13_N23
\clk_gen|P1|G1:22:T|S2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:21:T|ALT_INV_S2~reg0_q\,
	asdata => \clk_gen|P1|G1:22:T|S2~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:22:T|S2~reg0_q\);

-- Location: LCCOMB_X24_Y13_N18
\clk_gen|P1|G1:23:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:23:T|S1~0_combout\ = !\clk_gen|P1|G1:23:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:23:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:23:T|S1~0_combout\);

-- Location: FF_X24_Y13_N19
\clk_gen|P1|G1:23:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:22:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:23:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:23:T|S1~reg0_q\);

-- Location: LCCOMB_X25_Y13_N6
\clk_gen|P1|G1:24:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:24:T|S1~0_combout\ = !\clk_gen|P1|G1:24:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:24:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:24:T|S1~0_combout\);

-- Location: FF_X25_Y13_N7
\clk_gen|P1|G1:24:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:23:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:24:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:24:T|S1~reg0_q\);

-- Location: LCCOMB_X25_Y13_N2
\clk_gen|P1|G1:25:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:25:T|S1~0_combout\ = !\clk_gen|P1|G1:25:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:25:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:25:T|S1~0_combout\);

-- Location: FF_X25_Y13_N3
\clk_gen|P1|G1:25:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:24:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:25:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:25:T|S1~reg0_q\);

-- Location: LCCOMB_X29_Y11_N22
\clk_gen|P1|G1:26:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:26:T|S1~0_combout\ = !\clk_gen|P1|G1:26:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:26:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:26:T|S1~0_combout\);

-- Location: FF_X29_Y11_N23
\clk_gen|P1|G1:26:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:25:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:26:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:26:T|S1~reg0_q\);

-- Location: LCCOMB_X24_Y11_N10
\clk_gen|P2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P2|Equal0~4_combout\ = (!\clk_gen|P1|G1:23:T|S1~reg0_q\ & (!\clk_gen|P1|G1:24:T|S1~reg0_q\ & (!\clk_gen|P1|G1:25:T|S1~reg0_q\ & !\clk_gen|P1|G1:26:T|S1~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:23:T|S1~reg0_q\,
	datab => \clk_gen|P1|G1:24:T|S1~reg0_q\,
	datac => \clk_gen|P1|G1:25:T|S1~reg0_q\,
	datad => \clk_gen|P1|G1:26:T|S1~reg0_q\,
	combout => \clk_gen|P2|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y12_N12
\clk_gen|P1|G1:22:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:22:T|S1~0_combout\ = !\clk_gen|P1|G1:22:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:22:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:22:T|S1~0_combout\);

-- Location: FF_X24_Y12_N13
\clk_gen|P1|G1:22:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:21:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:22:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:22:T|S1~reg0_q\);

-- Location: LCCOMB_X25_Y12_N20
\clk_gen|P1|G1:19:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:19:T|S1~0_combout\ = !\clk_gen|P1|G1:19:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:19:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:19:T|S1~0_combout\);

-- Location: FF_X25_Y12_N21
\clk_gen|P1|G1:19:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:18:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:19:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:19:T|S1~reg0_q\);

-- Location: LCCOMB_X25_Y12_N2
\clk_gen|P1|G1:20:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:20:T|S1~0_combout\ = !\clk_gen|P1|G1:20:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:20:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:20:T|S1~0_combout\);

-- Location: FF_X25_Y12_N3
\clk_gen|P1|G1:20:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:19:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:20:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:20:T|S1~reg0_q\);

-- Location: LCCOMB_X24_Y12_N30
\clk_gen|P1|G1:21:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:21:T|S1~0_combout\ = !\clk_gen|P1|G1:21:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:21:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:21:T|S1~0_combout\);

-- Location: FF_X24_Y12_N31
\clk_gen|P1|G1:21:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:20:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:21:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:21:T|S1~reg0_q\);

-- Location: LCCOMB_X24_Y11_N14
\clk_gen|P2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P2|Equal0~3_combout\ = (!\clk_gen|P1|G1:22:T|S1~reg0_q\ & (!\clk_gen|P1|G1:19:T|S1~reg0_q\ & (!\clk_gen|P1|G1:20:T|S1~reg0_q\ & !\clk_gen|P1|G1:21:T|S1~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:22:T|S1~reg0_q\,
	datab => \clk_gen|P1|G1:19:T|S1~reg0_q\,
	datac => \clk_gen|P1|G1:20:T|S1~reg0_q\,
	datad => \clk_gen|P1|G1:21:T|S1~reg0_q\,
	combout => \clk_gen|P2|Equal0~3_combout\);

-- Location: LCCOMB_X21_Y11_N16
\clk_gen|P1|G1:18:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:18:T|S1~0_combout\ = !\clk_gen|P1|G1:18:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:18:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:18:T|S1~0_combout\);

-- Location: FF_X21_Y11_N17
\clk_gen|P1|G1:18:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:17:T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:18:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:18:T|S1~reg0_q\);

-- Location: LCCOMB_X21_Y11_N6
\clk_gen|P1|G1:17:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:17:T|S1~0_combout\ = !\clk_gen|P1|G1:17:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:17:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:17:T|S1~0_combout\);

-- Location: FF_X21_Y11_N7
\clk_gen|P1|G1:17:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:16:T|ALT_INV_S2~reg0clkctrl_outclk\,
	d => \clk_gen|P1|G1:17:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:17:T|S1~reg0_q\);

-- Location: LCCOMB_X22_Y11_N22
\clk_gen|P1|G1:15:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:15:T|S1~0_combout\ = !\clk_gen|P1|G1:15:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:15:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:15:T|S1~0_combout\);

-- Location: FF_X22_Y11_N23
\clk_gen|P1|G1:15:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:14:T|ALT_INV_S2~reg0clkctrl_outclk\,
	d => \clk_gen|P1|G1:15:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:15:T|S1~reg0_q\);

-- Location: LCCOMB_X22_Y11_N20
\clk_gen|P1|G1:16:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:16:T|S1~0_combout\ = !\clk_gen|P1|G1:16:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:16:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:16:T|S1~0_combout\);

-- Location: FF_X22_Y11_N21
\clk_gen|P1|G1:16:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:15:T|ALT_INV_S2~reg0clkctrl_outclk\,
	d => \clk_gen|P1|G1:16:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:16:T|S1~reg0_q\);

-- Location: LCCOMB_X22_Y11_N14
\clk_gen|P2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P2|Equal0~2_combout\ = (!\clk_gen|P1|G1:18:T|S1~reg0_q\ & (!\clk_gen|P1|G1:17:T|S1~reg0_q\ & (!\clk_gen|P1|G1:15:T|S1~reg0_q\ & !\clk_gen|P1|G1:16:T|S1~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:18:T|S1~reg0_q\,
	datab => \clk_gen|P1|G1:17:T|S1~reg0_q\,
	datac => \clk_gen|P1|G1:15:T|S1~reg0_q\,
	datad => \clk_gen|P1|G1:16:T|S1~reg0_q\,
	combout => \clk_gen|P2|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y11_N22
\clk_gen|P1|G1:13:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:13:T|S1~0_combout\ = !\clk_gen|P1|G1:13:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:13:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:13:T|S1~0_combout\);

-- Location: FF_X23_Y11_N23
\clk_gen|P1|G1:13:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:12:T|ALT_INV_S2~reg0clkctrl_outclk\,
	d => \clk_gen|P1|G1:13:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:13:T|S1~reg0_q\);

-- Location: LCCOMB_X23_Y9_N14
\clk_gen|P1|G1:12:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:12:T|S1~0_combout\ = !\clk_gen|P1|G1:12:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:12:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:12:T|S1~0_combout\);

-- Location: FF_X23_Y9_N15
\clk_gen|P1|G1:12:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:11:T|ALT_INV_S2~reg0clkctrl_outclk\,
	d => \clk_gen|P1|G1:12:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:12:T|S1~reg0_q\);

-- Location: LCCOMB_X23_Y11_N30
\clk_gen|P1|G1:11:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:11:T|S1~0_combout\ = !\clk_gen|P1|G1:11:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:11:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:11:T|S1~0_combout\);

-- Location: FF_X23_Y11_N31
\clk_gen|P1|G1:11:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:10:T|ALT_INV_S2~reg0clkctrl_outclk\,
	d => \clk_gen|P1|G1:11:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:11:T|S1~reg0_q\);

-- Location: LCCOMB_X23_Y10_N0
\clk_gen|P1|G1:14:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:14:T|S1~0_combout\ = !\clk_gen|P1|G1:14:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:14:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:14:T|S1~0_combout\);

-- Location: FF_X23_Y10_N1
\clk_gen|P1|G1:14:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|G1:13:T|ALT_INV_S2~reg0clkctrl_outclk\,
	d => \clk_gen|P1|G1:14:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:14:T|S1~reg0_q\);

-- Location: LCCOMB_X23_Y11_N8
\clk_gen|P2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P2|Equal0~1_combout\ = (!\clk_gen|P1|G1:13:T|S1~reg0_q\ & (!\clk_gen|P1|G1:12:T|S1~reg0_q\ & (!\clk_gen|P1|G1:11:T|S1~reg0_q\ & !\clk_gen|P1|G1:14:T|S1~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:13:T|S1~reg0_q\,
	datab => \clk_gen|P1|G1:12:T|S1~reg0_q\,
	datac => \clk_gen|P1|G1:11:T|S1~reg0_q\,
	datad => \clk_gen|P1|G1:14:T|S1~reg0_q\,
	combout => \clk_gen|P2|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y11_N22
\clk_gen|P2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P2|Equal0~5_combout\ = (\clk_gen|P2|Equal0~4_combout\ & (\clk_gen|P2|Equal0~3_combout\ & (\clk_gen|P2|Equal0~2_combout\ & \clk_gen|P2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P2|Equal0~4_combout\,
	datab => \clk_gen|P2|Equal0~3_combout\,
	datac => \clk_gen|P2|Equal0~2_combout\,
	datad => \clk_gen|P2|Equal0~1_combout\,
	combout => \clk_gen|P2|Equal0~5_combout\);

-- Location: LCCOMB_X30_Y11_N16
\clk_gen|P1|G1:0:T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|G1:0:T|S1~0_combout\ = !\clk_gen|P1|G1:0:T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|G1:0:T|S1~reg0_q\,
	combout => \clk_gen|P1|G1:0:T|S1~0_combout\);

-- Location: FF_X30_Y11_N17
\clk_gen|P1|G1:0:T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P1|T|ALT_INV_S2~reg0_q\,
	d => \clk_gen|P1|G1:0:T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|G1:0:T|S1~reg0_q\);

-- Location: LCCOMB_X24_Y11_N26
\clk_gen|P2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P2|Equal0~7_combout\ = (\clk_gen|P1|G1:8:T|S1~reg0_q\ & (\clk_gen|P1|G1:0:T|S1~reg0_q\ & (\clk_gen|P1|G1:10:T|S1~reg0_q\ & !\clk_gen|P1|G1:1:T|S1~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:8:T|S1~reg0_q\,
	datab => \clk_gen|P1|G1:0:T|S1~reg0_q\,
	datac => \clk_gen|P1|G1:10:T|S1~reg0_q\,
	datad => \clk_gen|P1|G1:1:T|S1~reg0_q\,
	combout => \clk_gen|P2|Equal0~7_combout\);

-- Location: LCCOMB_X24_Y11_N4
\clk_gen|P2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P2|Equal0~8_combout\ = (!\clk_gen|P1|G1:3:T|S1~reg0_q\ & (!\clk_gen|P1|G1:9:T|S1~reg0_q\ & (\clk_gen|P1|G1:4:T|S1~reg0_q\ & \clk_gen|P1|G1:2:T|S1~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P1|G1:3:T|S1~reg0_q\,
	datab => \clk_gen|P1|G1:9:T|S1~reg0_q\,
	datac => \clk_gen|P1|G1:4:T|S1~reg0_q\,
	datad => \clk_gen|P1|G1:2:T|S1~reg0_q\,
	combout => \clk_gen|P2|Equal0~8_combout\);

-- Location: LCCOMB_X24_Y11_N16
\clk_gen|P1|T|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P1|T|S1~0_combout\ = !\clk_gen|P1|T|S1~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_gen|P1|T|S1~reg0_q\,
	combout => \clk_gen|P1|T|S1~0_combout\);

-- Location: FF_X24_Y11_N17
\clk_gen|P1|T|S1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_gen|P1|T|S1~0_combout\,
	clrn => \clk_gen|P2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P1|T|S1~reg0_q\);

-- Location: LCCOMB_X24_Y11_N6
\clk_gen|P2|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P2|Equal0~9_combout\ = (\clk_gen|P2|Equal0~7_combout\ & (\clk_gen|P2|Equal0~8_combout\ & (\clk_gen|P2|Equal0~6_combout\ & \clk_gen|P1|T|S1~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P2|Equal0~7_combout\,
	datab => \clk_gen|P2|Equal0~8_combout\,
	datac => \clk_gen|P2|Equal0~6_combout\,
	datad => \clk_gen|P1|T|S1~reg0_q\,
	combout => \clk_gen|P2|Equal0~9_combout\);

-- Location: LCCOMB_X24_Y11_N18
\clk_gen|P3|OUTPUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_gen|P3|OUTPUT~0_combout\ = \clk_gen|P3|OUTPUT~reg0_q\ $ (((\clk_gen|P2|Equal0~5_combout\ & (\clk_gen|P2|Equal0~0_combout\ & \clk_gen|P2|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen|P2|Equal0~5_combout\,
	datab => \clk_gen|P2|Equal0~0_combout\,
	datac => \clk_gen|P3|OUTPUT~reg0_q\,
	datad => \clk_gen|P2|Equal0~9_combout\,
	combout => \clk_gen|P3|OUTPUT~0_combout\);

-- Location: FF_X24_Y11_N21
\clk_gen|P3|OUTPUT~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clk_gen|P3|OUTPUT~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen|P3|OUTPUT~reg0_q\);

-- Location: CLKCTRL_G5
\clk_gen|P3|OUTPUT~reg0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_gen|P3|OUTPUT~reg0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_gen|P3|OUTPUT~reg0clkctrl_outclk\);

-- Location: IOIBUF_X34_Y3_N22
\TX~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX,
	o => \TX~input_o\);

-- Location: LCCOMB_X33_Y2_N18
\CVSET|P_S|control[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|P_S|control[0]~3_combout\ = !\CVSET|P_S|control\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CVSET|P_S|control\(0),
	combout => \CVSET|P_S|control[0]~3_combout\);

-- Location: FF_X33_Y2_N19
\CVSET|P_S|control[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P3|OUTPUT~reg0clkctrl_outclk\,
	d => \CVSET|P_S|control[0]~3_combout\,
	ena => \TX~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CVSET|P_S|control\(0));

-- Location: LCCOMB_X33_Y2_N14
\CVSET|P_S|control~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|P_S|control~0_combout\ = (\CVSET|P_S|control\(0) & ((\CVSET|P_S|control\(1) & (\CVSET|P_S|control\(3) $ (\CVSET|P_S|control\(2)))) # (!\CVSET|P_S|control\(1) & (\CVSET|P_S|control\(3) & \CVSET|P_S|control\(2))))) # (!\CVSET|P_S|control\(0) & 
-- (((\CVSET|P_S|control\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CVSET|P_S|control\(0),
	datab => \CVSET|P_S|control\(1),
	datac => \CVSET|P_S|control\(3),
	datad => \CVSET|P_S|control\(2),
	combout => \CVSET|P_S|control~0_combout\);

-- Location: FF_X33_Y2_N15
\CVSET|P_S|control[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P3|OUTPUT~reg0clkctrl_outclk\,
	d => \CVSET|P_S|control~0_combout\,
	ena => \TX~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CVSET|P_S|control\(3));

-- Location: LCCOMB_X33_Y2_N8
\CVSET|P_S|control~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|P_S|control~1_combout\ = (\CVSET|P_S|control\(0) & (!\CVSET|P_S|control\(1) & ((\CVSET|P_S|control\(2)) # (!\CVSET|P_S|control\(3))))) # (!\CVSET|P_S|control\(0) & (((\CVSET|P_S|control\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CVSET|P_S|control\(0),
	datab => \CVSET|P_S|control\(3),
	datac => \CVSET|P_S|control\(1),
	datad => \CVSET|P_S|control\(2),
	combout => \CVSET|P_S|control~1_combout\);

-- Location: FF_X33_Y2_N9
\CVSET|P_S|control[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P3|OUTPUT~reg0clkctrl_outclk\,
	d => \CVSET|P_S|control~1_combout\,
	ena => \TX~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CVSET|P_S|control\(1));

-- Location: LCCOMB_X33_Y2_N16
\CVSET|P_S|control[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|P_S|control[2]~2_combout\ = \CVSET|P_S|control\(2) $ (((\CVSET|P_S|control\(0) & (\TX~input_o\ & \CVSET|P_S|control\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CVSET|P_S|control\(0),
	datab => \TX~input_o\,
	datac => \CVSET|P_S|control\(2),
	datad => \CVSET|P_S|control\(1),
	combout => \CVSET|P_S|control[2]~2_combout\);

-- Location: FF_X33_Y2_N17
\CVSET|P_S|control[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P3|OUTPUT~reg0clkctrl_outclk\,
	d => \CVSET|P_S|control[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CVSET|P_S|control\(2));

-- Location: IOIBUF_X34_Y4_N15
\ParallelIN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ParallelIN(6),
	o => \ParallelIN[6]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\ParallelIN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ParallelIN(5),
	o => \ParallelIN[5]~input_o\);

-- Location: LCCOMB_X33_Y2_N4
\CVSET|P_S|data_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|P_S|data_out~0_combout\ = (\CVSET|P_S|control\(0) & (\ParallelIN[6]~input_o\)) # (!\CVSET|P_S|control\(0) & ((\ParallelIN[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ParallelIN[6]~input_o\,
	datac => \ParallelIN[5]~input_o\,
	datad => \CVSET|P_S|control\(0),
	combout => \CVSET|P_S|data_out~0_combout\);

-- Location: IOIBUF_X34_Y4_N22
\ParallelIN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ParallelIN(2),
	o => \ParallelIN[2]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\ParallelIN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ParallelIN(1),
	o => \ParallelIN[1]~input_o\);

-- Location: LCCOMB_X33_Y2_N10
\CVSET|P_S|data_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|P_S|data_out~1_combout\ = (\CVSET|P_S|control\(0) & (\ParallelIN[2]~input_o\)) # (!\CVSET|P_S|control\(0) & ((\ParallelIN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ParallelIN[2]~input_o\,
	datab => \ParallelIN[1]~input_o\,
	datad => \CVSET|P_S|control\(0),
	combout => \CVSET|P_S|data_out~1_combout\);

-- Location: LCCOMB_X33_Y2_N2
\CVSET|P_S|data_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|P_S|data_out~2_combout\ = (\CVSET|P_S|control\(2) & ((\CVSET|P_S|data_out~0_combout\) # ((!\CVSET|P_S|control\(1))))) # (!\CVSET|P_S|control\(2) & (((\CVSET|P_S|control\(1) & \CVSET|P_S|data_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CVSET|P_S|control\(2),
	datab => \CVSET|P_S|data_out~0_combout\,
	datac => \CVSET|P_S|control\(1),
	datad => \CVSET|P_S|data_out~1_combout\,
	combout => \CVSET|P_S|data_out~2_combout\);

-- Location: IOIBUF_X34_Y2_N22
\ParallelIN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ParallelIN(4),
	o => \ParallelIN[4]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\ParallelIN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ParallelIN(3),
	o => \ParallelIN[3]~input_o\);

-- Location: LCCOMB_X33_Y2_N0
\CVSET|P_S|data_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|P_S|data_out~3_combout\ = (\CVSET|P_S|control\(0) & (\ParallelIN[4]~input_o\)) # (!\CVSET|P_S|control\(0) & ((\ParallelIN[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ParallelIN[4]~input_o\,
	datac => \ParallelIN[3]~input_o\,
	datad => \CVSET|P_S|control\(0),
	combout => \CVSET|P_S|data_out~3_combout\);

-- Location: IOIBUF_X30_Y0_N8
\ParallelIN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ParallelIN(0),
	o => \ParallelIN[0]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\ParallelIN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ParallelIN(7),
	o => \ParallelIN[7]~input_o\);

-- Location: LCCOMB_X33_Y2_N26
\CVSET|P_S|data_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|P_S|data_out~4_combout\ = (\CVSET|P_S|control\(3) & (((\ParallelIN[7]~input_o\) # (\CVSET|P_S|control\(0))))) # (!\CVSET|P_S|control\(3) & (\ParallelIN[0]~input_o\ & ((\CVSET|P_S|control\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ParallelIN[0]~input_o\,
	datab => \ParallelIN[7]~input_o\,
	datac => \CVSET|P_S|control\(3),
	datad => \CVSET|P_S|control\(0),
	combout => \CVSET|P_S|data_out~4_combout\);

-- Location: LCCOMB_X33_Y2_N28
\CVSET|P_S|data_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|P_S|data_out~5_combout\ = (\CVSET|P_S|control\(1) & (((\CVSET|P_S|data_out~2_combout\)))) # (!\CVSET|P_S|control\(1) & ((\CVSET|P_S|data_out~2_combout\ & (\CVSET|P_S|data_out~3_combout\)) # (!\CVSET|P_S|data_out~2_combout\ & 
-- ((\CVSET|P_S|data_out~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CVSET|P_S|control\(1),
	datab => \CVSET|P_S|data_out~3_combout\,
	datac => \CVSET|P_S|data_out~4_combout\,
	datad => \CVSET|P_S|data_out~2_combout\,
	combout => \CVSET|P_S|data_out~5_combout\);

-- Location: LCCOMB_X33_Y2_N12
\CVSET|P_S|data_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|P_S|data_out~6_combout\ = ((\CVSET|P_S|data_out~5_combout\ & ((!\CVSET|P_S|control\(3)) # (!\CVSET|P_S|data_out~2_combout\)))) # (!\TX~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX~input_o\,
	datab => \CVSET|P_S|data_out~2_combout\,
	datac => \CVSET|P_S|control\(3),
	datad => \CVSET|P_S|data_out~5_combout\,
	combout => \CVSET|P_S|data_out~6_combout\);

-- Location: FF_X33_Y2_N13
\CVSET|P_S|data_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P3|OUTPUT~reg0clkctrl_outclk\,
	d => \CVSET|P_S|data_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CVSET|P_S|data_out~q\);

-- Location: IOIBUF_X28_Y0_N1
\SerialIn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SerialIn,
	o => \SerialIn~input_o\);

-- Location: LCCOMB_X24_Y4_N18
\CVSET|S_P|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|S_P|Add0~0_combout\ = \CVSET|S_P|cont\(0) $ (\CVSET|S_P|start_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CVSET|S_P|cont\(0),
	datad => \CVSET|S_P|start_enable~q\,
	combout => \CVSET|S_P|Add0~0_combout\);

-- Location: FF_X24_Y4_N19
\CVSET|S_P|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P3|OUTPUT~reg0clkctrl_outclk\,
	d => \CVSET|S_P|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CVSET|S_P|cont\(0));

-- Location: LCCOMB_X23_Y4_N4
\CVSET|S_P|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|S_P|Add0~2_combout\ = \CVSET|S_P|cont\(2) $ (((\CVSET|S_P|start_enable~q\ & (\CVSET|S_P|cont\(1) & \CVSET|S_P|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CVSET|S_P|start_enable~q\,
	datab => \CVSET|S_P|cont\(1),
	datac => \CVSET|S_P|cont\(2),
	datad => \CVSET|S_P|cont\(0),
	combout => \CVSET|S_P|Add0~2_combout\);

-- Location: FF_X23_Y4_N5
\CVSET|S_P|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P3|OUTPUT~reg0clkctrl_outclk\,
	d => \CVSET|S_P|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CVSET|S_P|cont\(2));

-- Location: LCCOMB_X23_Y4_N8
\CVSET|S_P|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|S_P|Equal1~0_combout\ = (\CVSET|S_P|cont\(1) & (\CVSET|S_P|cont\(2) & (\CVSET|S_P|start_enable~q\ & \CVSET|S_P|cont\(0)))) # (!\CVSET|S_P|cont\(1) & (!\CVSET|S_P|cont\(2) & (!\CVSET|S_P|start_enable~q\ & !\CVSET|S_P|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CVSET|S_P|cont\(1),
	datab => \CVSET|S_P|cont\(2),
	datac => \CVSET|S_P|start_enable~q\,
	datad => \CVSET|S_P|cont\(0),
	combout => \CVSET|S_P|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y4_N2
\CVSET|S_P|cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|S_P|cont~0_combout\ = (!\CVSET|S_P|Equal1~0_combout\ & (\CVSET|S_P|Decoder0~0_combout\ $ (\CVSET|S_P|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CVSET|S_P|Decoder0~0_combout\,
	datac => \CVSET|S_P|cont\(3),
	datad => \CVSET|S_P|Equal1~0_combout\,
	combout => \CVSET|S_P|cont~0_combout\);

-- Location: FF_X23_Y4_N3
\CVSET|S_P|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P3|OUTPUT~reg0clkctrl_outclk\,
	d => \CVSET|S_P|cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CVSET|S_P|cont\(3));

-- Location: LCCOMB_X23_Y4_N24
\CVSET|S_P|start_enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|S_P|start_enable~0_combout\ = (!\SerialIn~input_o\ & (!\CVSET|S_P|cont\(2) & (!\CVSET|S_P|cont\(1) & !\CVSET|S_P|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SerialIn~input_o\,
	datab => \CVSET|S_P|cont\(2),
	datac => \CVSET|S_P|cont\(1),
	datad => \CVSET|S_P|cont\(3),
	combout => \CVSET|S_P|start_enable~0_combout\);

-- Location: LCCOMB_X23_Y4_N18
\CVSET|S_P|start_enable~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|S_P|start_enable~1_combout\ = (\CVSET|S_P|start_enable~q\) # ((!\CVSET|S_P|cont\(0) & \CVSET|S_P|start_enable~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CVSET|S_P|start_enable~q\,
	datab => \CVSET|S_P|cont\(0),
	datad => \CVSET|S_P|start_enable~0_combout\,
	combout => \CVSET|S_P|start_enable~1_combout\);

-- Location: LCCOMB_X23_Y4_N22
\CVSET|S_P|start_enable~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|S_P|start_enable~2_combout\ = (\CVSET|S_P|start_enable~1_combout\ & ((\CVSET|S_P|cont\(3) $ (!\CVSET|S_P|Decoder0~0_combout\)) # (!\CVSET|S_P|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CVSET|S_P|cont\(3),
	datab => \CVSET|S_P|Decoder0~0_combout\,
	datac => \CVSET|S_P|Equal1~0_combout\,
	datad => \CVSET|S_P|start_enable~1_combout\,
	combout => \CVSET|S_P|start_enable~2_combout\);

-- Location: FF_X23_Y4_N23
\CVSET|S_P|start_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P3|OUTPUT~reg0clkctrl_outclk\,
	d => \CVSET|S_P|start_enable~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CVSET|S_P|start_enable~q\);

-- Location: LCCOMB_X23_Y4_N26
\CVSET|S_P|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|S_P|Add0~1_combout\ = \CVSET|S_P|cont\(1) $ (((\CVSET|S_P|start_enable~q\ & \CVSET|S_P|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CVSET|S_P|start_enable~q\,
	datac => \CVSET|S_P|cont\(1),
	datad => \CVSET|S_P|cont\(0),
	combout => \CVSET|S_P|Add0~1_combout\);

-- Location: FF_X23_Y4_N27
\CVSET|S_P|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P3|OUTPUT~reg0clkctrl_outclk\,
	d => \CVSET|S_P|Add0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CVSET|S_P|cont\(1));

-- Location: LCCOMB_X23_Y4_N20
\CVSET|S_P|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|S_P|Decoder0~0_combout\ = (\CVSET|S_P|cont\(1) & (\CVSET|S_P|cont\(2) & (\CVSET|S_P|start_enable~q\ & \CVSET|S_P|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CVSET|S_P|cont\(1),
	datab => \CVSET|S_P|cont\(2),
	datac => \CVSET|S_P|start_enable~q\,
	datad => \CVSET|S_P|cont\(0),
	combout => \CVSET|S_P|Decoder0~0_combout\);

-- Location: LCCOMB_X23_Y4_N12
\CVSET|S_P|data[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|S_P|data[7]~0_combout\ = (\CVSET|S_P|Decoder0~0_combout\ & (\SerialIn~input_o\)) # (!\CVSET|S_P|Decoder0~0_combout\ & ((\CVSET|S_P|data\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SerialIn~input_o\,
	datac => \CVSET|S_P|data\(7),
	datad => \CVSET|S_P|Decoder0~0_combout\,
	combout => \CVSET|S_P|data[7]~0_combout\);

-- Location: FF_X23_Y4_N13
\CVSET|S_P|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P3|OUTPUT~reg0clkctrl_outclk\,
	d => \CVSET|S_P|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CVSET|S_P|data\(7));

-- Location: LCCOMB_X23_Y4_N10
\CVSET|S_P|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|S_P|Decoder0~1_combout\ = (\CVSET|S_P|cont\(1) & (\CVSET|S_P|cont\(2) & (\CVSET|S_P|start_enable~q\ & !\CVSET|S_P|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CVSET|S_P|cont\(1),
	datab => \CVSET|S_P|cont\(2),
	datac => \CVSET|S_P|start_enable~q\,
	datad => \CVSET|S_P|cont\(0),
	combout => \CVSET|S_P|Decoder0~1_combout\);

-- Location: LCCOMB_X23_Y4_N30
\CVSET|S_P|data[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|S_P|data[6]~1_combout\ = (\CVSET|S_P|Decoder0~1_combout\ & (\SerialIn~input_o\)) # (!\CVSET|S_P|Decoder0~1_combout\ & ((\CVSET|S_P|data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SerialIn~input_o\,
	datac => \CVSET|S_P|data\(6),
	datad => \CVSET|S_P|Decoder0~1_combout\,
	combout => \CVSET|S_P|data[6]~1_combout\);

-- Location: FF_X23_Y4_N31
\CVSET|S_P|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P3|OUTPUT~reg0clkctrl_outclk\,
	d => \CVSET|S_P|data[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CVSET|S_P|data\(6));

-- Location: LCCOMB_X23_Y4_N16
\CVSET|S_P|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|S_P|Decoder0~2_combout\ = (!\CVSET|S_P|cont\(1) & (\CVSET|S_P|cont\(2) & (\CVSET|S_P|start_enable~q\ & \CVSET|S_P|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CVSET|S_P|cont\(1),
	datab => \CVSET|S_P|cont\(2),
	datac => \CVSET|S_P|start_enable~q\,
	datad => \CVSET|S_P|cont\(0),
	combout => \CVSET|S_P|Decoder0~2_combout\);

-- Location: LCCOMB_X23_Y4_N28
\CVSET|S_P|data[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|S_P|data[5]~2_combout\ = (\CVSET|S_P|Decoder0~2_combout\ & (\SerialIn~input_o\)) # (!\CVSET|S_P|Decoder0~2_combout\ & ((\CVSET|S_P|data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SerialIn~input_o\,
	datac => \CVSET|S_P|data\(5),
	datad => \CVSET|S_P|Decoder0~2_combout\,
	combout => \CVSET|S_P|data[5]~2_combout\);

-- Location: FF_X23_Y4_N29
\CVSET|S_P|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P3|OUTPUT~reg0clkctrl_outclk\,
	d => \CVSET|S_P|data[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CVSET|S_P|data\(5));

-- Location: LCCOMB_X24_Y4_N0
\CVSET|S_P|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|S_P|Decoder0~3_combout\ = (!\CVSET|S_P|cont\(1) & (!\CVSET|S_P|cont\(0) & (\CVSET|S_P|cont\(2) & \CVSET|S_P|start_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CVSET|S_P|cont\(1),
	datab => \CVSET|S_P|cont\(0),
	datac => \CVSET|S_P|cont\(2),
	datad => \CVSET|S_P|start_enable~q\,
	combout => \CVSET|S_P|Decoder0~3_combout\);

-- Location: LCCOMB_X24_Y4_N28
\CVSET|S_P|data[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|S_P|data[4]~3_combout\ = (\CVSET|S_P|Decoder0~3_combout\ & (\SerialIn~input_o\)) # (!\CVSET|S_P|Decoder0~3_combout\ & ((\CVSET|S_P|data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SerialIn~input_o\,
	datac => \CVSET|S_P|data\(4),
	datad => \CVSET|S_P|Decoder0~3_combout\,
	combout => \CVSET|S_P|data[4]~3_combout\);

-- Location: FF_X24_Y4_N29
\CVSET|S_P|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P3|OUTPUT~reg0clkctrl_outclk\,
	d => \CVSET|S_P|data[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CVSET|S_P|data\(4));

-- Location: LCCOMB_X24_Y4_N10
\CVSET|S_P|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|S_P|Decoder0~4_combout\ = (\CVSET|S_P|cont\(1) & (\CVSET|S_P|cont\(0) & (!\CVSET|S_P|cont\(2) & \CVSET|S_P|start_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CVSET|S_P|cont\(1),
	datab => \CVSET|S_P|cont\(0),
	datac => \CVSET|S_P|cont\(2),
	datad => \CVSET|S_P|start_enable~q\,
	combout => \CVSET|S_P|Decoder0~4_combout\);

-- Location: LCCOMB_X24_Y4_N26
\CVSET|S_P|data[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|S_P|data[3]~4_combout\ = (\CVSET|S_P|Decoder0~4_combout\ & (\SerialIn~input_o\)) # (!\CVSET|S_P|Decoder0~4_combout\ & ((\CVSET|S_P|data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SerialIn~input_o\,
	datac => \CVSET|S_P|data\(3),
	datad => \CVSET|S_P|Decoder0~4_combout\,
	combout => \CVSET|S_P|data[3]~4_combout\);

-- Location: FF_X24_Y4_N27
\CVSET|S_P|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P3|OUTPUT~reg0clkctrl_outclk\,
	d => \CVSET|S_P|data[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CVSET|S_P|data\(3));

-- Location: LCCOMB_X24_Y4_N24
\CVSET|S_P|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|S_P|Decoder0~5_combout\ = (\CVSET|S_P|cont\(1) & (!\CVSET|S_P|cont\(0) & (!\CVSET|S_P|cont\(2) & \CVSET|S_P|start_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CVSET|S_P|cont\(1),
	datab => \CVSET|S_P|cont\(0),
	datac => \CVSET|S_P|cont\(2),
	datad => \CVSET|S_P|start_enable~q\,
	combout => \CVSET|S_P|Decoder0~5_combout\);

-- Location: LCCOMB_X24_Y4_N12
\CVSET|S_P|data[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|S_P|data[2]~5_combout\ = (\CVSET|S_P|Decoder0~5_combout\ & (\SerialIn~input_o\)) # (!\CVSET|S_P|Decoder0~5_combout\ & ((\CVSET|S_P|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SerialIn~input_o\,
	datac => \CVSET|S_P|data\(2),
	datad => \CVSET|S_P|Decoder0~5_combout\,
	combout => \CVSET|S_P|data[2]~5_combout\);

-- Location: FF_X24_Y4_N13
\CVSET|S_P|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P3|OUTPUT~reg0clkctrl_outclk\,
	d => \CVSET|S_P|data[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CVSET|S_P|data\(2));

-- Location: LCCOMB_X24_Y4_N6
\CVSET|S_P|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|S_P|Decoder0~6_combout\ = (!\CVSET|S_P|cont\(1) & (\CVSET|S_P|cont\(0) & (!\CVSET|S_P|cont\(2) & \CVSET|S_P|start_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CVSET|S_P|cont\(1),
	datab => \CVSET|S_P|cont\(0),
	datac => \CVSET|S_P|cont\(2),
	datad => \CVSET|S_P|start_enable~q\,
	combout => \CVSET|S_P|Decoder0~6_combout\);

-- Location: LCCOMB_X24_Y4_N30
\CVSET|S_P|data[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|S_P|data[1]~6_combout\ = (\CVSET|S_P|Decoder0~6_combout\ & (\SerialIn~input_o\)) # (!\CVSET|S_P|Decoder0~6_combout\ & ((\CVSET|S_P|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SerialIn~input_o\,
	datac => \CVSET|S_P|data\(1),
	datad => \CVSET|S_P|Decoder0~6_combout\,
	combout => \CVSET|S_P|data[1]~6_combout\);

-- Location: FF_X24_Y4_N31
\CVSET|S_P|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P3|OUTPUT~reg0clkctrl_outclk\,
	d => \CVSET|S_P|data[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CVSET|S_P|data\(1));

-- Location: LCCOMB_X24_Y4_N16
\CVSET|S_P|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|S_P|Decoder0~7_combout\ = (!\CVSET|S_P|cont\(1) & (!\CVSET|S_P|cont\(0) & (!\CVSET|S_P|cont\(2) & \CVSET|S_P|start_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CVSET|S_P|cont\(1),
	datab => \CVSET|S_P|cont\(0),
	datac => \CVSET|S_P|cont\(2),
	datad => \CVSET|S_P|start_enable~q\,
	combout => \CVSET|S_P|Decoder0~7_combout\);

-- Location: LCCOMB_X24_Y4_N20
\CVSET|S_P|data[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CVSET|S_P|data[0]~7_combout\ = (\CVSET|S_P|Decoder0~7_combout\ & (\SerialIn~input_o\)) # (!\CVSET|S_P|Decoder0~7_combout\ & ((\CVSET|S_P|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SerialIn~input_o\,
	datac => \CVSET|S_P|data\(0),
	datad => \CVSET|S_P|Decoder0~7_combout\,
	combout => \CVSET|S_P|data[0]~7_combout\);

-- Location: FF_X24_Y4_N21
\CVSET|S_P|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen|P3|OUTPUT~reg0clkctrl_outclk\,
	d => \CVSET|S_P|data[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CVSET|S_P|data\(0));

ww_SerialOut <= \SerialOut~output_o\;

ww_ParallelOut(7) <= \ParallelOut[7]~output_o\;

ww_ParallelOut(6) <= \ParallelOut[6]~output_o\;

ww_ParallelOut(5) <= \ParallelOut[5]~output_o\;

ww_ParallelOut(4) <= \ParallelOut[4]~output_o\;

ww_ParallelOut(3) <= \ParallelOut[3]~output_o\;

ww_ParallelOut(2) <= \ParallelOut[2]~output_o\;

ww_ParallelOut(1) <= \ParallelOut[1]~output_o\;

ww_ParallelOut(0) <= \ParallelOut[0]~output_o\;
END structure;


