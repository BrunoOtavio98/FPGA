LIBRARY IEEE;
USE IEEE.STD_lOGIC_1164.ALL;

ENTITY UART is 

port(

clk: in std_logic;

SerialIn: in std_logic;
ParallelIN: in std_Logic_vector(0 to 7);

SerialOut: out std_logic;
TX: in std_logic;
ParallelOut: out std_logic_vector(0 to 7)

);
End UART;


architecture behave of UART is 

COMPONENT FREQUENCYDIVIDER IS 				--TO produce the baud rate 
GENERIC(N: INTEGER := 32);

PORT(
	clk_in: IN STD_LOGIC;
	clk_out: OUT STD_LOGIC;
--	ctefd: IN STD_LOGIC_VECTOR(N -1 DOWNTO 0);		
	T: IN STD_LOGIC

);
END component;


component ConversorSet is 

port(

clk: in std_logic;											
TX: in std_logic;
rst_main: in std_logic;


Cserial_input: in std_logic;
Cparallel_output: out std_logic_vector(0 to 7);
CSerial_output: out std_logic;
CParalel_input: in std_logic_vector(0 to 7)

);
end COMPONENT;

signal clk_to_conversor: std_logic;
signal sParallelIn: std_logic_vector(0 to 7);

begin 



clk_gen: FREQUENCYDIVIDER port map(clk, clk_to_conversor, '1');
CVSET: ConversorSet port map(clk_to_conversor, TX ,'0',  SerialIn, ParallelOut,SerialOut,  ParallelIN);

end behave;