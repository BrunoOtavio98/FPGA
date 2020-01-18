LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity ConversorSet is 

port(

clk: in std_logic;											--entrada comum

TX: in std_logic;
rst_main: in std_logic;


Cserial_input: in std_logic;
Cparallel_output: out std_logic_vector(0 to 7);
CSerial_output: out std_logic;
CParalel_input: in std_logic_vector(0 to 7)

);
end ConversorSet;


architecture behave of ConversorSet is 


COMPONENT SERIALPARALEL is 
generic (n :integer := 8);
port(
clk: in std_logic; 
data_in: in std_Logic;														--o dado de entrada
rst: in std_logic;
data: out std_logic_vector(0 to n-1)									--são 8 bits de dados mais dois, um bit de stop e um de start
);

end COMPONENT;

component ParalelSequencial is 

port(
	
clk: in std_logic; 
data_in: in std_logic_vector(0 to 7);
start: in std_logic;				--quando o bit de start for colocado em 1 os bits serão amostrados do canal
data_out: out std_Logic

);
end component;

signal paralelo_serial_ram: std_logic_vector(0 to 7);

begin 

S_P: SERIALPARALEL port map(clk,  Cserial_input, rst_main ,Cparallel_output);
P_S: ParalelSequencial port map(clk, CParalel_input, TX ,CSerial_output );

end behave;