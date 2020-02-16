LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ParalelSequencial is 

port(
	
clk: in std_logic; 
data_in: in std_logic_vector(0 to 7);
start: in std_logic;				--quando o bit de start for colocado em 1 os bits serão amostrados do canal
data_out: out std_Logic


);
end ParalelSequencial;

architecture behave of ParalelSequencial is	

signal start_bit: std_logic;
signal stop_bit: std_logic;
signal buff: std_logic_vector(0 to 9);
signal control: integer range 0 to 10;
begin
 
start_bit <= '0';		
stop_bit <='1';
buff(0) <= start_bit;
buff(9) <= stop_bit;
buff(1 to 8) <= data_in;

process(clk) 

begin

if(rising_edge(clk))then

	data_out <= '1';
	
	if(start = '1')then

		data_out <= buff(control);
		control <= control + 1;

	if(control = 9)then

		control <= 0;
	
	end if;
	end if;
	
end if;
end process;
end behave;